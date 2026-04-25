@echo off
setlocal
set SCRIPT_DIR=%~dp0
where node >nul 2>nul
if %errorlevel%==0 (
  start "Study Gate Server" /min cmd /c node "%SCRIPT_DIR%serve.js"
  timeout /t 2 >nul
  start "" "http://127.0.0.1:4173"
) else (
  start "" "%SCRIPT_DIR%index.html"
)
