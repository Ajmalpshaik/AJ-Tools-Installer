param(
    [string]$SourceRepoPath = "..\AJ Tools",
    [string]$Version
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$publicRepoRoot = Split-Path -Parent $scriptDir

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

$zipTargetPath = Join-Path $releasesDir $zipName
Copy-Item -LiteralPath $zipSourcePath -Destination $zipTargetPath -Force

$hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $zipTargetPath).Hash.ToLower()
$checksumLine = "$hash  $zipName"
$checksumPath = Join-Path $releasesDir "SHA256SUMS.txt"
Set-Content -LiteralPath $checksumPath -Encoding ascii -Value $checksumLine

if ($zipName -match '^AJ-Tools-v(?<version>\d+\.\d+\.\d+)\.zip$') {
    $tag = "v$($Matches.version)"
} else {
    $tag = "vX.Y.Z"
}

Write-Host ""
Write-Host "Prepared release files:"
Write-Host "  - $zipTargetPath"
Write-Host "  - $checksumPath"
Write-Host ""
Write-Host "Next steps:"
Write-Host "1) git add releases/$zipName releases/SHA256SUMS.txt"
Write-Host "2) git commit -m `"release: $tag`""
Write-Host "3) git tag $tag"
Write-Host "4) git push origin master --tags"
Write-Host "5) Create GitHub Release for tag $tag and upload:"
Write-Host "   - $zipName"
Write-Host "   - SHA256SUMS.txt"
