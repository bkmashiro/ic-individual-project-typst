# Build script for Windows (PowerShell)
param(
    [string]$Input  = "main.typ",
    [string]$Output = "main.pdf",
    [string]$FontPath = "fonts/"
)

# Check typst is installed
if (-not (Get-Command typst -ErrorAction SilentlyContinue)) {
    Write-Error "typst not found. Install via: winget install --id Typst.Typst"
    Write-Host "Or download from: https://github.com/typst/typst/releases"
    exit 1
}

Write-Host "Compiling $Input -> $Output ..."
typst compile $Input $Output --font-path $FontPath
Write-Host "Done: $Output"
