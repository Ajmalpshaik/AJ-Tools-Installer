# Install AJ Tools

## Requirements

- Autodesk Revit 2020, 2021, 2022, 2023, 2024, 2025, 2026, or 2027
- Windows x64
- Administrator rights only for all-users installation

## Install

1. Download `AJ-Tools-vX.Y.Z.zip` from the Releases page.
2. Extract the zip to a normal local folder.
3. Run `install.cmd` for a current-user install.
4. Run `install-all-users.cmd` only if you need the add-in for every Windows user on the machine.
5. Start Revit 2020-2027 and confirm the **AJ Tools** tab is visible.
6. Confirm the **AJ Annotation** tab is visible if you need the duct reference dimension tools.

The current package includes API-specific AJ Tools payloads for Revit 2020-2027: .NET Framework 4.7.2 for Revit 2020, .NET Framework 4.8 for Revit 2021-2024, .NET 8 for Revit 2025-2026, and .NET 10 for Revit 2027.

## Install From Repository Download

1. Download this repository as a ZIP from GitHub.
2. Extract the repository ZIP.
3. Open the `releases` folder.
4. Extract `AJ-Tools-v1.11.2.zip`.
5. Run `install.cmd` or `install-all-users.cmd` from the extracted package folder.

## Update an Existing Install

1. Download the newer `AJ-Tools-vX.Y.Z.zip` package.
2. Extract it.
3. Run the installer script again.
4. Restart Revit.

## Uninstall

From the extracted package, run:

- `uninstall.cmd` for current-user uninstall
- `uninstall-all-users.cmd` for all-users uninstall

## Verify the Package

```powershell
Get-FileHash -Algorithm SHA256 .\AJ-Tools-vX.Y.Z.zip
```

Match the hash with `SHA256SUMS.txt` before installing.

## Troubleshooting

- If the AJ Tools tab does not appear, confirm you are using Autodesk Revit 2020-2027.
- If the AJ Annotation tab does not appear, confirm version `v1.4.7` or later is installed.
- If Windows blocks downloaded files, unblock the extracted package files before launching Revit:

```powershell
Get-ChildItem . -Recurse -File | Unblock-File
```
