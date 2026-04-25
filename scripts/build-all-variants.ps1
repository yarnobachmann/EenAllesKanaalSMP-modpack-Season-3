$ErrorActionPreference = "Stop"

$ScriptRoot = $PSScriptRoot

& "$ScriptRoot\build-prism-zip.ps1" -Variant "full"
& "$ScriptRoot\build-prism-zip.ps1" -Variant "lite"
