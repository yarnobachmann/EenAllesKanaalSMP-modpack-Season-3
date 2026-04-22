# EenAllesKanaal SMP Season 3 Packwiz Modpack

This repository contains the self-hosted packwiz version of the EenAllesKanaal SMP Season 3 Minecraft modpack. It is prepared for static hosting with GitHub Pages and for Prism Launcher imports that run `packwiz-installer-bootstrap.jar` before launch.

## Pack details

- Minecraft: `1.21.1`
- Loader: `NeoForge`
- NeoForge version in this pack: `21.1.227`
- Public pack entry point: `pack.toml`

The exact NeoForge version was not detectable from the original folder, so `21.1.227` was selected from NeoForge's 1.21.1 Maven metadata. If your existing Prism instance uses a different NeoForge build, update both `pack.toml` and `deployment.json` or `deployment.example.json`.

## GitHub Pages publishing

1. Push this folder to GitHub:

   ```powershell
   git init
   git branch -M main
   git remote add origin https://github.com/yarnobachmann/EenAllesKanaalSMP-modpack-Season-3.git
   git add .
   git commit -m "Create packwiz modpack"
   git push -u origin main
   ```

2. In GitHub, open the repository settings.
3. Go to Pages.
4. Choose either:
   - Source: `Deploy from a branch`, branch `main`, folder `/root`
   - Or publish from `/docs` if you later move the pack files there.
5. Keep `.nojekyll` in the publishing root.

When published from the repository root, the hosted pack URL should be:

```text
https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/pack.toml
```

## Prism Launcher zip

A Prism/MultiMC-compatible import zip is generated in `dist/`. It contains:

- `instance.cfg`
- `mmc-pack.json`
- `packwiz-installer-bootstrap.jar`

The instance pre-launch command is:

```text
"$INST_JAVA" -jar packwiz-installer-bootstrap.jar https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/pack.toml
```

For Prism's `Import from zip` URL field, use the direct zip URL:

```text
https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/EenAllesKanaal-SMP-Season-3-1.0.0-prism.zip
```

Do not use the plain site root URL as the Prism import URL.

Edit `deployment.json` if you want to override the example values. If `deployment.json` does not exist, the build script uses `deployment.example.json`.

## Updating the pack later

1. Add, remove, or update files in `mods`, `config`, `resourcepacks`, `shaderpacks`, `datapacks`, `defaultconfigs`, or `kubejs`.
2. For new public mods, prefer adding them with packwiz after installing packwiz:

   ```powershell
   packwiz modrinth add <project>
   ```

3. Refresh the index:

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\refresh-pack.ps1
   ```

4. Rebuild the Prism zip if the bootstrap package changed:

   ```powershell
   powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-prism-zip.ps1
   ```

5. Commit and push the changed files.

## Installing packwiz

`packwiz` was not installed on this machine during setup. Download it from:

```text
https://github.com/packwiz/packwiz/releases
```

Put `packwiz.exe` somewhere on PATH, then run:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\setup-packwiz.ps1
```

## Notes

- Most jars were matched to Modrinth by exact SHA-512 hash and have `.pw.toml` metadata.
- Jars that could not be matched automatically are still indexed as local files, so they will be downloaded from your GitHub Pages site.
- CurseForge exact matching could not be completed without CurseForge API credentials; unresolved jars are listed in `codex-report.md`.
- `.gitignore` ignores matched local jar copies while keeping the unresolved jars that must be hosted by this repository.
