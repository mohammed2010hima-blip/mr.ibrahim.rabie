@echo off
setlocal
cd /d "%~dp0"
echo Installing or verifying dependencies...
pnpm install
if errorlevel 1 exit /b 1
echo Starting Arabic Knowledge Race at http://localhost:3000
pnpm dev
