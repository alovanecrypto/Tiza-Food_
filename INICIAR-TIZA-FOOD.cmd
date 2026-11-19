@echo off
setlocal
cd /d "%~dp0"
set "TIZA_NODE=%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
if not exist "%TIZA_NODE%" set "TIZA_NODE=node"
start "" http://localhost:3000
"%TIZA_NODE%" "%~dp0server.js"
if errorlevel 1 pause
endlocal
