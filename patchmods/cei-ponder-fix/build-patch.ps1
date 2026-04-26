$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$srcJava = Join-Path $root "src\main\java"
$srcResources = Join-Path $root "src\main\resources"
$buildRoot = Join-Path $root "build"
$classesDir = Join-Path $buildRoot "classes"
$libsDir = Join-Path $buildRoot "libs"
$extractedDir = Join-Path $buildRoot "extracted"
$localLibDir = Join-Path $buildRoot "compile-libs"

$javaBin = "C:\Users\minej\AppData\Roaming\PrismLauncher\java\java-runtime-delta\bin"
$javac = Join-Path $javaBin "javac.exe"
$jar = Join-Path $javaBin "jar.exe"

$loaderJar = "C:\Users\minej\AppData\Roaming\PrismLauncher\libraries\net\neoforged\fancymodloader\loader\4.0.42\loader-4.0.42.jar"
$neoforgeJar = "C:\Users\minej\AppData\Roaming\PrismLauncher\libraries\net\neoforged\neoforge\21.1.227\neoforge-21.1.227-client.jar"
$mixinJar = "C:\Users\minej\AppData\Roaming\PrismLauncher\libraries\net\fabricmc\sponge-mixin\0.15.2+mixin.0.8.7\sponge-mixin-0.15.2+mixin.0.8.7.jar"
$createJar = Join-Path (Split-Path $root -Parent) "..\mods\create-1.21.1-6.0.10.jar"
$ceiJar = Join-Path (Split-Path $root -Parent) "..\mods\create-enchantment-industry-2.3.1.jar"
$ponderJar = Join-Path $extractedDir "ponder-neoforge-1.0.82+mc1.21.1.jar"

$createJar = (Resolve-Path $createJar).Path
$ceiJar = (Resolve-Path $ceiJar).Path

New-Item -ItemType Directory -Force -Path $classesDir, $libsDir, $extractedDir, $localLibDir | Out-Null
Remove-Item -Recurse -Force $classesDir\* -ErrorAction SilentlyContinue

if (-not (Test-Path $ponderJar)) {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $zip = [IO.Compression.ZipFile]::OpenRead($createJar)
    $entry = $zip.GetEntry("META-INF/jarjar/ponder-neoforge-1.0.82+mc1.21.1.jar")
    $stream = $entry.Open()
    $fs = [IO.File]::Open($ponderJar, [IO.FileMode]::Create, [IO.FileAccess]::Write)
    $stream.CopyTo($fs)
    $fs.Close()
    $stream.Close()
    $zip.Dispose()
}

$localLoaderJar = Join-Path $localLibDir "loader-4.0.42.jar"
$localNeoForgeJar = Join-Path $localLibDir "neoforge-21.1.227-client.jar"
$localMixinJar = Join-Path $localLibDir "sponge-mixin-0.15.2+mixin.0.8.7.jar"
$localCreateJar = Join-Path $localLibDir "create.jar"
$localCEIJar = Join-Path $localLibDir "create-enchantment-industry.jar"
$localPonderJar = Join-Path $localLibDir "ponder.jar"

Copy-Item $loaderJar $localLoaderJar -Force
Copy-Item $neoforgeJar $localNeoForgeJar -Force
Copy-Item $mixinJar $localMixinJar -Force
Copy-Item $createJar $localCreateJar -Force
Copy-Item $ceiJar $localCEIJar -Force
Copy-Item $ponderJar $localPonderJar -Force

$classpath = @(
    $localLoaderJar
    $localNeoForgeJar
    $localMixinJar
    $localCreateJar
    $localCEIJar
    $localPonderJar
) -join ";"

$javaFiles = Get-ChildItem -Path $srcJava -Recurse -Filter *.java | ForEach-Object { $_.FullName }
& $javac -proc:none -cp $classpath -d $classesDir $javaFiles

Copy-Item -Path (Join-Path $srcResources "*") -Destination $classesDir -Recurse -Force

$jarPath = Join-Path $libsDir "cei-ponder-fix-1.0.0.jar"
if (Test-Path $jarPath) {
    Remove-Item $jarPath -Force
}

Push-Location $classesDir
& $jar --create --file $jarPath .
Pop-Location

Get-Item $jarPath | Select-Object FullName, Length, LastWriteTime
