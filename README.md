# EenAllesKanaal SMP Season 3 Packwiz Modpack

This repository hosts the self-updating packwiz version of the EenAllesKanaal SMP Season 3 modpack for Prism Launcher.

It now supports two published variants from one repo:

- `full`: the main pack
- `lite`: a lighter client variant with a reduced resource pack set, no shaderpacks, and no Iris or Distant Horizons

## Pack details

- Minecraft: `1.21.1`
- Loader: `NeoForge`
- NeoForge version: `21.1.227`

## Hosted URLs

### Full

- Pack URL:  
  `https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/pack.toml`
- Prism zip URL:  
  `https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip`

### Lite

- Pack URL:  
  `https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/lite/pack.toml`
- Prism zip URL:  
  `https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/lite/EenAllesKanaal-SMP-Season-3-Lite-1.0.0-prism.zip`

## GitHub Pages publishing

1. Push the repository to GitHub.
2. In GitHub, open `Settings -> Pages`.
3. Set the source to `Deploy from a branch`.
4. Publish branch `main` from `/root`.
5. Keep `.nojekyll` in the repository root.

Because both variants live in the same repository, GitHub Pages can serve them at the same time.

## Prism Launcher

Each generated Prism zip contains:

- `instance.cfg`
- `mmc-pack.json`
- `packwiz-installer-bootstrap.jar`

The instance pre-launch command uses the hosted `pack.toml` URL for the chosen variant.

The generated instances are configured with:

- `6144 MB` RAM
- a custom pack icon
- automatic updates on launch through `packwiz-installer-bootstrap.jar`

## Build scripts

### Build full

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-prism-zip.ps1 -Variant full
```

### Build lite

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-prism-zip.ps1 -Variant lite
```

### Build both

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-all-variants.ps1
```

### Refresh only

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\refresh-pack.ps1 -PackRoot .
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\refresh-pack.ps1 -PackRoot lite
```

### Regenerate lite files from the main pack

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\sync-lite.ps1
```

## Lite variant rules

The lite pack is generated from the main pack with these differences:

- keeps only these resource packs:
  - `EAK.zip`
  - `Fast Better Grass.zip`
  - `LowOnFire*.zip`
- excludes all shaderpacks
- excludes:
  - `DistantHorizons`
  - `Iris`

## Updating the pack later

For normal updates:

1. Add, remove, or update files in the main pack.
2. Rebuild:

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-all-variants.ps1
   ```

3. Commit and push the changed files.

The hosted `pack.toml` URLs stay the same. Existing Prism installs that use `packwiz-installer-bootstrap.jar` will keep updating from the same URL on launch.

## Deployment config

Variant settings live in:

[deployment.example.json](<C:/Users/minej/Desktop/EenAllesKanaal SMP Season 3 1.0.0/deployment.example.json>)

Create `deployment.json` if you want local overrides without editing the example file.
