# Install AJ Tools

## Requirements

- Autodesk Revit 2020
- Windows x64
- Administrator rights only for all-users installation

## Install

1. Download `AJ-Tools-vX.Y.Z.zip` from the Releases page.
2. Extract the zip to a normal local folder.
3. Run `install.cmd` for a current-user install.
4. Run `install-all-users.cmd` only if you need the add-in for every Windows user on the machine.
5. Start Revit 2020 and confirm the **AJ Tools** tab is visible.

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

- If the AJ Tools tab does not appear, confirm you are using Autodesk Revit 2020.
- If Windows blocks downloaded files, unblock the extracted package files before launching Revit:

```powershell
Get-ChildItem . -Recurse -File | Unblock-File
```
