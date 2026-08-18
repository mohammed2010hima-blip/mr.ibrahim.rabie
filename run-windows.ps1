$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
Write-Host 'Installing or verifying dependencies...'
pnpm install
Write-Host 'Starting Arabic Knowledge Race at http://localhost:3000'
pnpm dev
