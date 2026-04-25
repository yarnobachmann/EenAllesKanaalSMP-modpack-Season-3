$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$LiteRoot = Join-Path $RepoRoot "lite"

function Set-Utf8NoBom {
    param(
        [string]$Path,
        [string]$Value
    )
    $Value = $Value -replace "`r`n", "`n"
    $encoding = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($Path, $Value, $encoding)
}

function Copy-Tree {
    param(
        [string]$SourceRoot,
        [string]$DestinationRoot,
        [string[]]$IncludeFiles,
        [string[]]$ExcludeFiles = @()
    )

    if (-not (Test-Path -LiteralPath $SourceRoot -PathType Container)) {
        return
    }

    foreach ($relativePath in $IncludeFiles) {
        if ($ExcludeFiles -contains $relativePath) {
            continue
        }

        $sourcePath = Join-Path $SourceRoot $relativePath
        if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
            continue
        }

        $destinationPath = Join-Path $DestinationRoot $relativePath
        $destinationDir = Split-Path -Parent $destinationPath
        if (-not (Test-Path -LiteralPath $destinationDir -PathType Container)) {
            New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
        }
        Copy-Item -LiteralPath $sourcePath -Destination $destinationPath -Force
    }
}

if (Test-Path -LiteralPath $LiteRoot) {
    Remove-Item -LiteralPath $LiteRoot -Recurse -Force
}
New-Item -ItemType Directory -Force -Path $LiteRoot | Out-Null

$resourcepackPatternsToKeep = @(
    "EAK.zip",
    "Fast Better Grass.zip",
    "LowOnFire*.zip"
)

$modsToExclude = @(
    "DistantHorizons-3.0.2-b-1.21.1-fabric-neoforge.jar",
    "iris-neoforge-1.8.12+mc1.21.1.jar",
    "waterframes-NEOFORGE-mc1.21.1-v2.1.22.jar",
    "watermedia-3.0.0.15.jar",
    "watervision-NF-mc1.21.1-v0.1.0-alpha.jar",
    "wm_binaries-3.0.0-rc.1.jar"
)

$configsToExclude = @(
    "DistantHorizons.toml",
    "iris.properties",
    "iris-excluded.json"
)

$modsDestination = Join-Path $LiteRoot "mods"
New-Item -ItemType Directory -Force -Path $modsDestination | Out-Null
Get-ChildItem -LiteralPath (Join-Path $RepoRoot "mods") -Filter "*.pw.toml" -File | Sort-Object Name | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $modsDestination $_.Name) -Force
}
$managedModJars = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
Get-ChildItem -LiteralPath (Join-Path $RepoRoot "mods") -Filter "*.pw.toml" -File | ForEach-Object {
    $content = Get-Content -Raw -LiteralPath $_.FullName
    if ($content -match '(?m)^filename\s*=\s*"([^"]+)"') {
        [void]$managedModJars.Add($Matches[1])
    }
}
Get-ChildItem -LiteralPath (Join-Path $RepoRoot "mods") -Filter "*.jar" -File | Sort-Object Name | ForEach-Object {
    if ($modsToExclude -contains $_.Name) {
        return
    }
    if ($managedModJars.Contains($_.Name)) {
        return
    }
    Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $modsDestination $_.Name) -Force
}

$configSource = Join-Path $RepoRoot "config"
if (Test-Path -LiteralPath $configSource -PathType Container) {
    Get-ChildItem -LiteralPath $configSource -File -Recurse | Sort-Object FullName | ForEach-Object {
        $relativePath = $_.FullName.Substring($configSource.Length).TrimStart("\", "/")
        if ($configsToExclude -contains $_.Name) {
            return
        }
        $destinationPath = Join-Path (Join-Path $LiteRoot "config") $relativePath
        $destinationDir = Split-Path -Parent $destinationPath
        if (-not (Test-Path -LiteralPath $destinationDir -PathType Container)) {
            New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
        }
        Copy-Item -LiteralPath $_.FullName -Destination $destinationPath -Force
    }
}

$resourcepackDestination = Join-Path $LiteRoot "resourcepacks"
New-Item -ItemType Directory -Force -Path $resourcepackDestination | Out-Null
foreach ($pattern in $resourcepackPatternsToKeep) {
    Get-ChildItem -LiteralPath (Join-Path $RepoRoot "resourcepacks") -File | Where-Object { $_.Name -like $pattern } | ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $resourcepackDestination $_.Name) -Force
    }
}

Copy-Tree -SourceRoot $RepoRoot -DestinationRoot $LiteRoot -IncludeFiles @(
    "options.txt",
    "servers.dat"
)

$rootPack = Get-Content -Raw -LiteralPath (Join-Path $RepoRoot "pack.toml")
$litePack = $rootPack -replace '(?m)^name\s*=\s*"[^"]+"', 'name = "EenAllesKanaal SMP Season 3 Lite"'
Set-Utf8NoBom -Path (Join-Path $LiteRoot "pack.toml") -Value $litePack

$litePage = @"
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>EenAllesKanaal SMP Season 3 Lite</title>
  <style>
    :root {
      color-scheme: dark;
      font-family: Arial, Helvetica, sans-serif;
      background: #151515;
      color: #f2f2f2;
    }

    body {
      margin: 0;
      min-height: 100vh;
      display: grid;
      place-items: center;
      padding: 32px;
    }

    main {
      width: min(720px, 100%);
    }

    h1 {
      margin: 0 0 12px;
      font-size: 32px;
      line-height: 1.15;
    }

    p {
      margin: 0 0 18px;
      color: #d8d8d8;
      line-height: 1.55;
    }

    a {
      color: #8fd16a;
    }

    .links {
      display: grid;
      gap: 12px;
      margin-top: 24px;
    }

    .button {
      display: inline-block;
      width: fit-content;
      padding: 11px 14px;
      border: 1px solid #8fd16a;
      color: #f8fff5;
      text-decoration: none;
      background: #24431d;
    }

    code {
      display: block;
      overflow-wrap: anywhere;
      padding: 12px;
      background: #222;
      border: 1px solid #333;
      color: #f6f6f6;
    }
  </style>
</head>
<body>
  <main>
    <h1>EenAllesKanaal SMP Season 3 Lite</h1>
    <p>This is the hosted lite packwiz modpack page. Prism Launcher URL imports need the direct zip link below, not this homepage URL.</p>

    <div class="links">
      <a class="button" href="EenAllesKanaal-SMP-Season-3-Lite-1.0.0-prism.zip">Download Prism import zip</a>
      <a href="pack.toml">pack.toml</a>
    </div>

    <p>Use this URL in Prism's Import from zip field:</p>
    <code>https://yarnobachmann.github.io/EenAllesKanaalSMP-modpack-Season-3/lite/EenAllesKanaal-SMP-Season-3-Lite-1.0.0-prism.zip</code>
  </main>
</body>
</html>
"@
Set-Utf8NoBom -Path (Join-Path $LiteRoot "index.html") -Value $litePage

Write-Host "Synced lite pack into $LiteRoot"
