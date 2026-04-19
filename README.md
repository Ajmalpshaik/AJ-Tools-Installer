# AJ Tools Installer

AJ-Tools-Installer is the public download and release repository for AJ Tools for Autodesk Revit 2020.

This repository intentionally stays small. It contains the installer package, checksum file, release workflow, and user-facing install/support documentation. It does not contain source code.

## What This Repository Contains

- GitHub Releases for installer downloads
- `releases\AJ-Tools-vX.Y.Z.zip`
- `releases\SHA256SUMS.txt`
- release automation and install documentation

## Requirements

- Autodesk Revit 2020
- Windows x64
- Administrator rights only for all-users installation

## Download and Install

1. Open the Releases page:
   - https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases
2. Download `AJ-Tools-vX.Y.Z.zip`.
3. Extract the archive.
4. Run `install.cmd` for current-user installation.
5. Run `install-all-users.cmd` only if you need an all-users install and have Administrator rights.
6. Start Revit 2020 and confirm the **AJ Tools** tab is available.

## Verify Checksum

Use PowerShell to verify the downloaded package:

```powershell
Get-FileHash -Algorithm SHA256 .\AJ-Tools-vX.Y.Z.zip
```

Compare the output with the entry in `SHA256SUMS.txt`.

## Repository Docs

- [INSTALL.md](INSTALL.md)
- [CHANGELOG.md](CHANGELOG.md)
- [RELEASE_PROCESS.md](RELEASE_PROCESS.md)
- [SECURITY.md](SECURITY.md)

## Support

- Installation and download issues: open an issue in this repository
- Source development is maintained separately in the `AJ Tools` repository and is not distributed here
