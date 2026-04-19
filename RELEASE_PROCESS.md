# Release Process

`AJ-Tools-Installer` is the public distribution repository only.

## Repository Rules

- Do not add source code to this repository.
- Keep the repository focused on the installer zip, checksum, docs, and release automation.
- Every installer tag should match the shipped AJ Tools version.
- Do not create new installer-only product version numbers.
- Historical tag `v1.2.2` remains as an earlier repository-maintenance exception.

## Release Standards

- Tag: `vX.Y.Z`
- GitHub Release title: `AJ Tools vX.Y.Z`
- Installer asset: `AJ-Tools-vX.Y.Z.zip`
- Checksum file: `SHA256SUMS.txt`
- Changelog entry heading: `## [X.Y.Z] - YYYY-MM-DD`

## Publish a New Installer Release

1. Build the installer package in the source repository:

```powershell
Set-Location ..\AJ Tools
powershell -ExecutionPolicy Bypass -File .\dist\package.ps1 -Configuration Release
```

2. Prepare the public release files in this repository:

```powershell
Set-Location ..\AJ-Tools-Installer
powershell -ExecutionPolicy Bypass -File .\tools\prepare-release.ps1 -SourceRepoPath "..\AJ Tools" -Version X.Y.Z
```

3. Review the generated files:

- `releases\AJ-Tools-vX.Y.Z.zip`
- `releases\SHA256SUMS.txt`

4. Commit and tag the installer release:

```powershell
git add releases CHANGELOG.md README.md INSTALL.md RELEASE_PROCESS.md SUPPORT.md SECURITY.md .github tools
git commit -m "release: vX.Y.Z"
git tag vX.Y.Z
git push origin main --tags
```

5. GitHub Actions publishes the release, uploads the installer zip plus checksum file, and uses the matching `CHANGELOG.md` entry as the release notes.

## Important Notes

- Keep only installer-facing documentation in this repository.
- Public users should always download from the GitHub Releases page, not from ad-hoc file sharing.
- The source repository is responsible for code versioning and package generation.
