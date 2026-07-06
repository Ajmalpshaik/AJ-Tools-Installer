# Changelog

This changelog tracks public installer-repository releases.
Standard release tags are `vX.Y.Z` and should match the shipped AJ Tools version.
Historical tag `v1.2.2` remains as a repository-maintenance exception; do not create new installer-only version numbers.

## [1.11.3] - 2026-07-07

- Published `AJ-Tools-v1.11.3.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Fixed Revit startup dependency resolution so bundled DLLs such as `CommunityToolkit.Mvvm.dll` load from the AJ Tools install folder.
- Fixed modern Revit packaging so Revit 2025-2027 payloads include copied NuGet dependency DLLs and `.deps.json` companion files.

## [1.11.2] - 2026-07-06

- Published `AJ-Tools-v1.11.2.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package optimizes tag and leader API compatibility so Revit 2022-2027 use the newer reference-based `IndependentTag` path where available.
- Revit 2020-2021 keep the older tag API path required by those Revit API versions.

## [1.11.1] - 2026-07-06

- Published `AJ-Tools-v1.11.1.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package now includes exact per-year payload folders for Revit 2020, 2021, 2022, 2023, 2024, 2025, 2026, and 2027.
- Revit 2020 now installs a .NET Framework 4.7.2 build, and Revit 2021-2024 install .NET Framework 4.8 builds compiled against matching Revit API reference versions instead of sharing one Revit 2020 API build.

## [1.11.0] - 2026-07-06

- Published `AJ-Tools-v1.11.0.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package now includes versioned payload folders for Revit 2020-2024, 2025, 2026, and 2027.
- Revit 2025 and 2026 now install .NET 8 builds, and Revit 2027 installs a .NET 10 build.
- Removed the previous `NEEDS_REVIEW` installer warning for Revit 2025-2027.

## [1.10.1] - 2026-07-06

- Published `AJ-Tools-v1.10.1.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Updated the installer to stage AJ Tools folders and `.addin` manifests for Revit 2020-2027.
- Revit 2025-2027 now receive installer entries, while still reporting `NEEDS_REVIEW` until the separate modern .NET/Revit API build is completed.

## [1.10.0] - 2026-07-06

- Published `AJ-Tools-v1.10.0.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package adds the MEP Openings workflow and the Colorize view-override workflow.
- Release package includes the intervening AJ Tools audit releases from v1.6.0 through v1.9.1, including Pipe Sizing, AJ AI hardening, metadata cleanup, and UI refinements.
- The installer now documents Revit 2020-2024 as the supported .NET Framework install range and skips Revit 2025-2027 until a separate modern .NET build is verified.

## [1.5.1] - 2026-06-24

- Published `AJ-Tools-v1.5.1.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package integrates the AJ AI (Gemini Shell) tool into the main AJ Tools ribbon under a new "AI Assistant" panel, fixing visibility issues caused by an empty standalone tab.
- Release package fixes MSBuild compilation errors related to legacy PackageReference restores in the zero-warnings 2020 project configuration.
- Compatibility target remains Revit 2020 and .NET Framework 4.7.2.


## [1.5.0] - 2026-05-30

- Published `AJ-Tools-v1.5.0.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package adds Search and Sort functionality for Categories and Parameters in the Filter Pro tool.
- Release package modernizes ListBox and ListBoxItem styling in the shared UI components.
- Compatibility target remains Revit 2020 and .NET Framework 4.7.2. Later Revit versions need Revit-side validation before use on live projects.

## [1.4.9] - 2026-05-25

- Published `AJ-Tools-v1.4.9.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package adds the new **Section Mark Visibility** tool under the **AJ Tools** View panel to automatically filter and hide section markers in plan views.
- Release package upgrades the **View Crop** tool with persistent settings, custom diagnostics, and coordination model processing.
- Compatibility target remains Revit 2020 and .NET Framework 4.7.2. Later Revit versions need Revit-side validation before use on live projects.

## [1.4.8] - 2026-05-17

- Published `AJ-Tools-v1.4.8.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package fixes the `Transfer View Templates` document dropdown display text so `Copy From` and `Copy To` show readable Revit document names.
- Compatibility target remains Revit 2020 and .NET Framework 4.7.2. Later Revit versions need Revit-side validation before use on live projects.

## [1.4.7] - 2026-05-14

- Published `AJ-Tools-v1.4.7.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package adds the separate `AJ Annotation` ribbon tab with duct reference dimension tools.
- Release package includes purge view cleanup updates, reset graphics refinements, startup logging cleanup, and build-target cleanup.
- Compatibility target remains Revit 2020 and .NET Framework 4.7.2. Later Revit versions need Revit-side validation before use on live projects.

## [1.4.6] - 2026-05-10

- Published `AJ-Tools-v1.4.6.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package reduces the Apply Graphics window size again, separates settings/category selection into tabs, and keeps a visible custom close button.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.4.5] - 2026-05-10

- Published `AJ-Tools-v1.4.5.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package reduces the Apply Graphics window size, keeps the settings area scrollable, and restores native close/resize behavior.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.4.4] - 2026-05-09

- Published `AJ-Tools-v1.4.4.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package updates Apply Graphics with the dark settings manager, split element/category apply actions, last-used settings memory, and active-view graphics validation.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.4.3] - 2026-05-07

- Published `AJ-Tools-v1.4.3.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package restores per-field Apply Graphics preset colors and uses one selected-element source for both Element Graphics and Category Graphics modes.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.4.2] - 2026-05-07

- Published `AJ-Tools-v1.4.2.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package removes the unused Apply Graphics preset-target UI and keeps direct Projection / Surface and Cut color editing.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.4.1] - 2026-05-07

- Published `AJ-Tools-v1.4.1.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package combines Apply Graphics into one shared element/category tool and fixes cut-link behavior.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.4.0] - 2026-05-07

- Published `AJ-Tools-v1.4.0.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package adds the HVAC Schematic tool and updated ribbon layout.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.3.9] - 2026-05-06

- Published `AJ-Tools-v1.3.9.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package includes the Graphics Tools cleanup for Apply Graphics, Match Graphics, and Reset Graphics.
- Compatibility remains Revit 2020 and .NET Framework 4.7.2.

## [1.3.8] - 2026-05-06

- Published `AJ-Tools-v1.3.8.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package includes the Toggle Link cleanup for Revit 2020 and .NET Framework 4.7.2.

## [1.3.7] - 2026-05-06

- Published `AJ-Tools-v1.3.7.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package includes standardized metadata headers for View Crop and Unhide All code.

## [1.3.6] - 2026-05-06

- Published `AJ-Tools-v1.3.6.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package includes the Unhide All cleanup for Revit 2020 and .NET Framework 4.7.2.

## [1.3.5] - 2026-05-06

- Published `AJ-Tools-v1.3.5.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.
- Release package includes the View Crop cleanup for Revit 2020 and .NET Framework 4.7.2.

## [1.3.4] - 2026-04-19

- Published `AJ-Tools-v1.3.4.zip`.
- Published the matching `SHA256SUMS.txt` entry for the installer package.

## [1.2.2] - 2026-04-19

- Repository maintenance release to align installer automation with the `main` branch publishing flow.

## [1.2.1] - 2026-04-15

- Published `AJ-Tools-v1.2.1.zip`.
- Published `SHA256SUMS.txt` for the installer package.
- Added the public installer release for AJ Tools v1.2.1.
