# Modpack Update Guide

This is the step-by-step workflow for updating the pack yourself.

Run all commands from the repository folder:

```powershell
cd "C:\Users\minej\Desktop\EenAllesKanaal SMP Season 3 1.0.0"
```

## 1. Check The Repo Is Clean

```powershell
git status -sb
```

If it says only:

```text
## main...origin/main
```

then you are starting clean.

## 2. Add Or Update Mods

Put new or updated jars in the main pack folder:

```text
mods/
```

When updating a mod, remove the old version from `mods/` and copy the new jar in.

Example:

```powershell
Remove-Item -LiteralPath "mods\old-mod-name.jar"
Copy-Item -LiteralPath "C:\path\to\new-mod-name.jar" -Destination "mods\new-mod-name.jar"
```

Do not manually edit `lite/mods/`. The lite pack is generated from the main pack.

## 3. Remove Mods

Remove the jar from the main `mods/` folder:

```powershell
Remove-Item -LiteralPath "mods\mod-to-remove.jar"
```

Then rebuild both variants in step 6.

## 4. Update Resource Packs

Full pack resource packs live in:

```text
resourcepacks/
```

For the current EAK pack, use:

```text
resourcepacks/EAK-SMP.zip
```

If you rename a resource pack, also check:

```text
config/defaultoptions/options.txt
config/resourcepackoverrides.json
scripts/sync-lite.ps1
```

The lite pack only keeps resource packs listed in `scripts/sync-lite.ps1`.

## 5. Update Config Files

Put config updates in:

```text
config/
```

Do not manually edit `lite/config/`. The rebuild copies the main config into lite while applying lite exclusions.

For default options, update:

```text
config/defaultoptions/options.txt
config/defaultoptions/keybindings.txt
```

## 6. Rebuild Full And Lite

Run:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts\build-all-variants.ps1
```

This does all of this:

- refreshes `index.toml`
- regenerates the `lite/` folder
- refreshes `lite/index.toml`
- rebuilds the full Prism zip
- rebuilds the lite Prism zip

## 7. Verify The Change

Check that the new mod or file is indexed:

```powershell
rg -n "new-mod-name.jar" index.toml lite\index.toml
```

Check that an old mod is gone:

```powershell
rg -n "old-mod-name.jar" index.toml lite\index.toml mods lite\mods
```

If `rg` finds nothing, that command exits with code `1`. That is normal when you are checking that something is gone.

## 8. Check Changed Files

```powershell
git status --short
```

For a normal mod update, you should usually see:

- changed `index.toml`
- changed `pack.toml`
- changed Prism zip files
- old jar deleted
- new jar added
- matching changes under `lite/`

## 9. Commit

Stage everything:

```powershell
git add -A
```

Commit:

```powershell
git commit -m "Update modpack mods"
```

Use a more specific message when useful, for example:

```powershell
git commit -m "Add missing Patchouli mod"
git commit -m "Replace EAK resource pack"
```

## 10. Push

```powershell
git push origin main
```

## 11. Final Check

```powershell
git status -sb
git log -1 --oneline
```

You want `git status -sb` to show:

```text
## main...origin/main
```

That means your local `main` and GitHub `main` are synced.

## Common Fixes

### Lite Is Missing A Mod

Check whether `scripts/sync-lite.ps1` excludes it.

Look for:

```powershell
$modPatternsToExclude
```

If a pattern matches the mod jar, lite will not include it.

### Lite Is Missing A Resource Pack

Check:

```powershell
$resourcepackPatternsToKeep
```

in:

```text
scripts/sync-lite.ps1
```

Only matching resource packs are copied into lite.

### Resource Pack Still Shows An Old Name

Search everywhere:

```powershell
rg -n "OldPackName.zip" config lite\config resourcepacks lite\resourcepacks index.toml lite\index.toml
```

Also check built-in/YARL packs:

```text
config/YARL/packs/
```

### Resource Pack Should Be Forced On

Use:

```text
config/resourcepackoverrides.json
```

Example:

```json
{
  "schema_version": 2,
  "default_packs": [
    "file/EAK-SMP.zip"
  ],
  "pack_overrides": {
    "file/EAK-SMP.zip": {
      "force_compatible": true,
      "required": true
    }
  }
}
```

Also make sure `config/defaultoptions/options.txt` has the same pack in `resourcePacks`.

### Build Script Says Access Denied

Run the same command again in an Administrator/elevated terminal, or close programs that may be holding the files open.

The most common locked files are jars in `mods/` or generated zip files.

