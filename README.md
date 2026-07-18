# AJ Tools Installer

[![Latest Release](https://img.shields.io/github/v/release/Ajmalpshaik/AJ-Tools-Installer?display_name=tag)](https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases)

Public installer repository for the AJ Tools add-in for Autodesk Revit.

This repository is intended for distribution, installation, and day-to-day use. Source code development, internal testing, and build processes are maintained separately in the private [AJ-Tools](https://github.com/Ajmalpshaik/AJ-Tools) repository.

- Current installer version: `v1.13.5`
- Latest download: [Releases](https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases)
- Maintainer: `Ajmal P.S.`

If AJ Tools has been useful in your Revit workflow, consider starring this repository - it helps other Revit users discover it.

## About AJ Tools

AJ Tools provides automation and utility commands for Autodesk Revit, including:

- graphics cleanup, colorizing, and overrides
- linked model lookup and workset utilities
- dimension and datum workflows
- annotation and tagging helpers
- AJ Annotation duct reference dimension tools
- MEP coordination, opening coordination, and duct utilities
- family parameter cleanup and conversion
- standards and data management tools

## Supported Revit Versions

The current package includes versioned AJ Tools payloads for Autodesk Revit 2020 through 2027:

- Revit 2020: .NET Framework 4.7.2 payload built against the Revit 2020 API
- Revit 2021-2024: .NET Framework 4.8 payloads built against matching Revit API versions
- Revit 2025-2026: .NET 8 payloads built against matching Revit API versions
- Revit 2027: .NET 10 payload built against the Revit 2027 API

## Installation

### Option 1: Download the Latest Release

1. Open the [Releases](https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases) page.
2. Download the latest `AJ-Tools-vX.Y.Z.zip` package.
3. Extract the ZIP to a stable local folder.
4. Run the installation script appropriate for your setup:
   - `install.cmd` - install for current user
   - `install-all-users.cmd` - install for all users (requires Administrator)
5. Restart Revit if it is currently running.
6. Open Revit 2020-2027 and verify that the `AJ Tools` tab is available.
7. If you use duct reference dimensions, verify that the `AJ Annotation` tab is also available.

### Option 2: Download This Repository

1. Click `Code`, then `Download ZIP` on this repository.
2. Extract the repository ZIP.
3. Open the `releases` folder.
4. Extract `AJ-Tools-v1.13.5.zip`.
5. Run `install.cmd` or `install-all-users.cmd` from the extracted package folder.

### Manual Installation

1. Extract the release package to a local folder.
2. Copy the `AJ Tools` folder to your Revit Add-Ins folder:
   - Current user: `%APPDATA%\Autodesk\Revit\Addins\<version>`
   - All users: `%PROGRAMDATA%\Autodesk\Revit\Addins\<version>`
3. Restart Revit.
4. Enable the add-in if prompted by Revit's security dialog.

## Update

1. Download the latest release package.
2. Replace the previous add-in files with the new version.
3. Restart Revit.
4. Test the add-in in a test model before using on live project work.

## Uninstallation

Run the uninstall script appropriate for your installation:

- `uninstall.cmd` - uninstall for current user
- `uninstall-all-users.cmd` - uninstall for all users (requires Administrator)

Or manually delete the AJ Tools add-in folder from your Revit Add-Ins folder.

## Support

If you encounter issues with installation or the add-in behavior:

1. Check the [Releases](https://github.com/Ajmalpshaik/AJ-Tools-Installer/releases) page for the latest version.
2. Open a GitHub issue with:
   - Revit version
   - Windows version
   - AJ Tools version
   - A short description of the issue
   - Steps to reproduce if applicable
3. For security-sensitive issues, email `ajmalnattika@gmail.com` privately.

## GitHub Project Files

This repository includes standard GitHub community files for issues, pull requests, contribution guidance, security reporting, and repository conduct so public maintenance can stay structured and responsive.
