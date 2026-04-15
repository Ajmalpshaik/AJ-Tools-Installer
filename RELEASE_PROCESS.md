# Release Process

## One-Time Setup

1. Create a public GitHub repo named `AJ-Tools-Installer`.
2. In this local folder, connect remote:

```powershell
git remote add origin https://github.com/Ajmalpshaik/AJ-Tools-Installer.git
git branch -M master
git add .
git commit -m "chore: initial public installer repo"
git push -u origin master
```

## For Each New Version

1. Build package in private source repo:

```powershell
powershell -ExecutionPolicy Bypass -File .\dist\package.ps1 -Configuration Release
```

2. In this public repo:

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\prepare-release.ps1 -SourceRepoPath "..\AJ Tools"
git add releases
git commit -m "release: vX.Y.Z"
git tag vX.Y.Z
git push origin master --tags
```

3. Open GitHub -> Releases -> Draft new release -> select tag `vX.Y.Z`.
4. Upload:
- `releases/AJ-Tools-vX.Y.Z.zip`
- `releases/SHA256SUMS.txt`
5. Publish release.
