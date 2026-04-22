$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root

function ConvertTo-PackPath {
    param([string]$Path)
    $fullRoot = (Resolve-Path -LiteralPath $Root).Path.TrimEnd("\", "/")
    $fullPath = (Resolve-Path -LiteralPath $Path).Path
    $relative = $fullPath.Substring($fullRoot.Length).TrimStart("\", "/")
    return ($relative -replace "\\", "/")
}

function Get-Sha256 {
    param([string]$Path)
    return (Get-FileHash -Algorithm SHA256 -LiteralPath $Path).Hash.ToLowerInvariant()
}

function Set-Utf8NoBom {
    param(
        [string]$Path,
        [string]$Value
    )
    $Value = $Value -replace "`r`n", "`n"
    $encoding = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText((Join-Path $Root $Path), $Value, $encoding)
}

function Add-IndexedFile {
    param(
        [System.Collections.Generic.List[object]]$Files,
        [string]$Path,
        [bool]$Metafile
    )

    if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
        return
    }

    $Files.Add([pscustomobject]@{
        file = ConvertTo-PackPath $Path
        hash = Get-Sha256 $Path
        metafile = $Metafile
    })
}

if (-not (Test-Path ".\pack.toml")) {
    throw "pack.toml is missing. Create it before refreshing the index."
}

$indexed = [System.Collections.Generic.List[object]]::new()
$managedModJars = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
$excludedPackPaths = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)

@(
    "mods/animatica-0-6-1-1-21.pw.toml",
    "mods/animatica-0.6.1+1.21.jar",
    "mods/capes-1-5-4-1-21-fabric.pw.toml",
    "mods/capes-1.5.4+1.21-fabric.jar",
    "mods/citresewn-1-2-2-1-21.pw.toml",
    "mods/citresewn-1.2.2+1.21.jar",
    "mods/citresewn-neopatcher-1-1-0-1-2-2.pw.toml",
    "mods/citresewn_neopatcher-1.1.0-1.2.2.jar",
    "mods/connector-2-0-0-beta-12-1-21-1-full.pw.toml",
    "mods/connector-2.0.0-beta.12+1.21.1-full.jar",
    "mods/connectorextras-1-12-1-1-21-1.pw.toml",
    "mods/ConnectorExtras-1.12.1+1.21.1.jar",
    "mods/enhancedblockentities-0-10-2-1-21.pw.toml",
    "mods/enhancedblockentities-0.10.2+1.21.jar",
    "mods/fabric-api-0-116-10-1-21-1.pw.toml",
    "mods/fabric-api-0.116.10+1.21.1.jar",
    "mods/fabric-language-kotlin-1-13-0-kotlin-2-1-0.pw.toml",
    "mods/fabric-language-kotlin-1.13.0+kotlin.2.1.0.jar",
    "mods/fabrishot-1-14-1.pw.toml",
    "mods/fabrishot-1.14.1.jar",
    "mods/main-menu-credits-1-2-0.pw.toml",
    "mods/main-menu-credits-1.2.0.jar",
    "mods/morechathistory-1-3-1.pw.toml",
    "mods/morechathistory-1.3.1.jar",
    "mods/optigui-2-3-0-beta-6-1-21.pw.toml",
    "mods/optigui-2.3.0-beta.6+1.21.jar",
    "mods/paginatedadvancements-2-5-1.pw.toml",
    "mods/paginatedadvancements-2.5.1.jar"
) | ForEach-Object { [void]$excludedPackPaths.Add($_) }

function Test-PackPathExcluded {
    param([string]$Path)
    $packPath = ConvertTo-PackPath $Path
    return $excludedPackPaths.Contains($packPath)
}

Get-ChildItem -Path ".\mods" -Filter "*.pw.toml" -File -ErrorAction SilentlyContinue | Sort-Object FullName | ForEach-Object {
    if (Test-PackPathExcluded $_.FullName) {
        return
    }
    $content = Get-Content -Raw -LiteralPath $_.FullName
    if ($content -match '(?m)^filename\s*=\s*"([^"]+)"') {
        [void]$managedModJars.Add($Matches[1])
    }
    Add-IndexedFile -Files $indexed -Path $_.FullName -Metafile $true
}

Get-ChildItem -Path ".\mods" -Filter "*.jar" -File -ErrorAction SilentlyContinue | Sort-Object FullName | ForEach-Object {
    if (Test-PackPathExcluded $_.FullName) {
        return
    }
    if (-not $managedModJars.Contains($_.Name)) {
        Add-IndexedFile -Files $indexed -Path $_.FullName -Metafile $false
    }
}

$contentDirs = @(
    "config",
    "defaultconfigs",
    "kubejs",
    "resourcepacks",
    "shaderpacks",
    "datapacks"
)

foreach ($dir in $contentDirs) {
    if (Test-Path -LiteralPath ".\$dir" -PathType Container) {
        Get-ChildItem -LiteralPath ".\$dir" -File -Recurse | Sort-Object FullName | ForEach-Object {
            Add-IndexedFile -Files $indexed -Path $_.FullName -Metafile $false
        }
    }
}

$rootFiles = @(
    "options.txt",
    "optionsof.txt",
    "servers.dat"
)

foreach ($file in $rootFiles) {
    Add-IndexedFile -Files $indexed -Path ".\$file" -Metafile $false
}

$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add("hash-format = `"sha256`"")
$lines.Add("")

foreach ($entry in ($indexed | Sort-Object file)) {
    $lines.Add("[[files]]")
    $lines.Add("file = `"$($entry.file)`"")
    $lines.Add("hash = `"$($entry.hash)`"")
    $lines.Add("metafile = $($entry.metafile.ToString().ToLowerInvariant())")
    $lines.Add("")
}

$indexText = $lines -join "`n"
Set-Utf8NoBom -Path "index.toml" -Value $indexText

$indexHash = Get-Sha256 ".\index.toml"
$packText = Get-Content -Raw -LiteralPath ".\pack.toml"
if ($packText -match '(?s)(\[index\].*?hash\s*=\s*")[^"]+(")') {
    $packText = [regex]::Replace($packText, '(?s)(\[index\].*?hash\s*=\s*")[^"]+(")', "`${1}$indexHash`${2}", 1)
} else {
    throw "Could not find [index] hash in pack.toml."
}
Set-Utf8NoBom -Path "pack.toml" -Value $packText

Write-Host "Indexed $($indexed.Count) files."
Write-Host "index.toml sha256: $indexHash"
