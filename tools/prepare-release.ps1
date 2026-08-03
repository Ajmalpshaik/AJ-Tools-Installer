param(
    [string]$SourceRepoPath = "..\AJ Tools",
    [string]$Version
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$publicRepoRoot = Split-Path -Parent $scriptDir

if (-not [string]::IsNullOrWhiteSpace($Version) -and $Version -notmatch '^\d+\.\d+\.\d+$') {
    throw "Version must use X.Y.Z format when provided."
}

$resolvedSourcePath = (Resolve-Path -LiteralPath $SourceRepoPath).Path
$sourceReleaseDir = Join-Path $resolvedSourcePath "dist\release"
if (-not (Test-Path -LiteralPath $sourceReleaseDir)) {
    throw "Source release folder not found: $sourceReleaseDir"
}

if ([string]::IsNullOrWhiteSpace($Version)) {
    $zipCandidate = Get-ChildItem -LiteralPath $sourceReleaseDir -File -Filter "AJ-Tools-v*.zip" |
        Sort-Object LastWriteTime -Descending |
        Select-Object -First 1
    if (-not $zipCandidate) {
        throw "No AJ-Tools-v*.zip files found in $sourceReleaseDir"
    }
    $zipSourcePath = $zipCandidate.FullName
    $zipName = $zipCandidate.Name
} else {
    $zipName = "AJ-Tools-v$Version.zip"
    $zipSourcePath = Join-Path $sourceReleaseDir $zipName
    if (-not (Test-Path -LiteralPath $zipSourcePath)) {
        throw "Requested version not found: $zipSourcePath"
    }
}

$releasesDir = Join-Path $publicRepoRoot "releases"
New-Item -ItemType Directory -Path $releasesDir -Force | Out-Null
Get-ChildItem -LiteralPath $releasesDir -File -Filter "AJ-Tools-v*.zip" -ErrorAction SilentlyContinue |
    Remove-Item -Force

$zipTargetPath = Join-Path $releasesDir $zipName
Copy-Item -LiteralPath $zipSourcePath -Destination $zipTargetPath -Force

$hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $zipTargetPath).Hash.ToLower()
$checksumLine = "$hash  $zipName"
$checksumPath = Join-Path $releasesDir "SHA256SUMS.txt"
# Must end with a bare LF, not CRLF. The publish workflow validates this file with
# `sha256sum -c` on Ubuntu, where a trailing CR becomes part of the filename and the
# check fails with "No such file or directory" even though the hash itself is correct.
# Set-Content would write CRLF on Windows PowerShell, so write the bytes explicitly.
[System.IO.File]::WriteAllText($checksumPath, "$checksumLine`n", [System.Text.Encoding]::ASCII)

if ($zipName -match '^AJ-Tools-v(?<version>\d+\.\d+\.\d+)\.zip$') {
    $tag = "v$($Matches.version)"
} else {
    $tag = "vX.Y.Z"
}

# Stamp the version into the user-facing docs. These had drifted badly by 2026-08-04 -
# README.md still told people to extract AJ-Tools-v1.13.5.zip and INSTALL.md named
# v1.25.0, neither of which is in the repo, so anyone following the steps hit a file
# that does not exist. Doing it here means the docs cannot fall behind the package again.
# Only concrete version numbers are rewritten: the literal "AJ-Tools-vX.Y.Z.zip"
# placeholder used in the generic instructions is deliberately left alone.
$docTargets = @("README.md", "INSTALL.md")
foreach ($docName in $docTargets) {
    $docPath = Join-Path $publicRepoRoot $docName
    if (-not (Test-Path -LiteralPath $docPath)) { continue }
    $original = [System.IO.File]::ReadAllText($docPath)
    $updated = $original
    $updated = [regex]::Replace($updated, 'AJ-Tools-v\d+\.\d+\.\d+\.zip', "AJ-Tools-v$Version.zip")
    $updated = [regex]::Replace($updated, '(Current installer version:\s*`?v)\d+\.\d+\.\d+(`?)', "`${1}$Version`${2}")
    if ($updated -ne $original) {
        [System.IO.File]::WriteAllText($docPath, $updated, (New-Object System.Text.UTF8Encoding $false))
        Write-Host "Updated version references in $docName"
    }
}

Write-Host ""
Write-Host "Prepared release files:"
Write-Host "  - $zipTargetPath"
Write-Host "  - $checksumPath"
Write-Host ""
Write-Host "Next steps:"
Write-Host "1) git add releases/$zipName releases/SHA256SUMS.txt"
Write-Host "2) git commit -m \"release: $tag\""
Write-Host "3) git tag $tag"
Write-Host "4) git push origin main --tags"
Write-Host "5) GitHub Actions will create/update release for tag $tag and upload:"
Write-Host "   - $zipName"
Write-Host "   - SHA256SUMS.txt"
