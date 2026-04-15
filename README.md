# AJ Tools Installer Downloads

This public repository is for AJ Tools installer files only.

- Installer packages are published in GitHub Releases.
- Source code remains private in a separate repository.

## Download

Use the Releases page:

https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases

Current package in this repo:

- `AJ-Tools-v1.2.1.zip`
- `SHA256SUMS.txt`

## Install

1. Download `AJ-Tools-vX.Y.Z.zip` from Releases.
2. Extract the zip.
3. Run `install.cmd` (current user) or `install-all-users.cmd` (admin).
4. Open Revit 2020 and verify the AJ Tools tab appears.

## Verify Checksum (Optional)

```powershell
Get-FileHash -Algorithm SHA256 .\AJ-Tools-v1.2.1.zip
```

Compare with `SHA256SUMS.txt`.

## Publishing A New Version

Run:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\prepare-release.ps1 -SourceRepoPath "..\AJ Tools"
```

Then follow the printed push + release steps.
