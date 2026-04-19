# AJ Tools Installer

AJ-Tools-Installer is the public download and release repository for AJ Tools for Autodesk Revit 2020.

It exists to publish installer packages, checksums, release automation, and end-user install support. It does not contain source code; development happens in [AJ Tools](https://github.com/Ajmalpshaik/AJ-Tools).

## Repository Role

- GitHub Releases for installer downloads
- `releases/AJ-Tools-vX.Y.Z.zip`
- `releases/SHA256SUMS.txt`
- install, uninstall, and checksum guidance
- release automation for tagged installer publishes

## Requirements

- Autodesk Revit 2020
- Windows x64
- Administrator rights are required only for all-users installation

## Download and Install

1. Open the [Releases page](https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases).
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

Compare the output with the matching entry in `SHA256SUMS.txt`.

## Related Repository

- Source code and development work: [AJ Tools](https://github.com/Ajmalpshaik/AJ-Tools)

## Repository Docs

- [INSTALL.md](INSTALL.md)
- [RELEASE_PROCESS.md](RELEASE_PROCESS.md)
- [SUPPORT.md](SUPPORT.md)
- [CHANGELOG.md](CHANGELOG.md)
- [SECURITY.md](SECURITY.md)

## Support

- Use this repository for downloads, checksums, installation, uninstall, and release-package issues
- Use [AJ Tools](https://github.com/Ajmalpshaik/AJ-Tools/issues) for feature requests and source-code defects
- Support routing and reporting rules: [SUPPORT.md](SUPPORT.md)
