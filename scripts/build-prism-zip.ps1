$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root

function Read-DeploymentConfig {
    $configPath = ".\deployment.json"
    if (-not (Test-Path $configPath)) {
        $configPath = ".\deployment.example.json"
    }
    if (-not (Test-Path $configPath)) {
        throw "deployment.example.json is missing."
    }
    return Get-Content -Raw -LiteralPath $configPath | ConvertFrom-Json
}

function Get-PackVersion {
    $packText = Get-Content -Raw -LiteralPath ".\pack.toml"
    if ($packText -match '(?m)^version\s*=\s*"([^"]+)"') {
        return $Matches[1]
    }
    return (Get-Date -Format "yyyyMMdd-HHmm")
}

& "$PSScriptRoot\refresh-pack.ps1"

$config = Read-DeploymentConfig
$instanceName = $config.instanceName
$minecraftVersion = $config.minecraftVersion
$loaderVersion = $config.loaderVersion
$packUrl = $config.packUrl

if ([string]::IsNullOrWhiteSpace($instanceName)) { throw "instanceName is missing from deployment config." }
if ([string]::IsNullOrWhiteSpace($minecraftVersion)) { throw "minecraftVersion is missing from deployment config." }
if ([string]::IsNullOrWhiteSpace($loaderVersion)) { throw "loaderVersion is missing from deployment config." }
if ([string]::IsNullOrWhiteSpace($packUrl)) { throw "packUrl is missing from deployment config." }

$dist = Join-Path $Root "dist"
$stagingRoot = Join-Path $dist "prism-staging"
$instanceRoot = Join-Path $stagingRoot $instanceName
$bootstrapPath = Join-Path $instanceRoot "packwiz-installer-bootstrap.jar"

if (Test-Path $stagingRoot) {
    Remove-Item -LiteralPath $stagingRoot -Recurse -Force
}
New-Item -ItemType Directory -Force -Path $instanceRoot | Out-Null

$instanceCfg = @"
ConfigVersion=1.2
InstanceType=OneSix
name=$instanceName
iconKey=default
OverrideCommands=true
PreLaunchCommand=`"`$INST_JAVA`" -jar packwiz-installer-bootstrap.jar $packUrl
"@
Set-Content -LiteralPath (Join-Path $instanceRoot "instance.cfg") -Value $instanceCfg -Encoding UTF8

$mmcPack = [ordered]@{
    components = @(
        [ordered]@{
            cachedName = "Minecraft"
            uid = "net.minecraft"
            version = $minecraftVersion
        },
        [ordered]@{
            cachedName = "NeoForge"
            uid = "net.neoforged"
            version = $loaderVersion
        }
    )
    formatVersion = 1
}
$mmcPack | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $instanceRoot "mmc-pack.json") -Encoding UTF8

$bootstrapUrl = "https://github.com/packwiz/packwiz-installer-bootstrap/releases/latest/download/packwiz-installer-bootstrap.jar"
Invoke-WebRequest -Uri $bootstrapUrl -OutFile $bootstrapPath

$safeName = ($instanceName -replace '[^A-Za-z0-9._-]+', '-').Trim("-")
$version = Get-PackVersion
$zipPath = Join-Path $dist "$safeName-$version-prism.zip"
if (Test-Path $zipPath) {
    Remove-Item -LiteralPath $zipPath -Force
}

Compress-Archive -LiteralPath $instanceRoot -DestinationPath $zipPath -Force
Remove-Item -LiteralPath $stagingRoot -Recurse -Force
Write-Host "Created $zipPath"
