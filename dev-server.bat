@echo off
setlocal
REM About.Gaymer.Social - Local dev server (Windows)
REM Usage: dev-server.bat [port] [--no-dev-mode]
REM
REM This repo is now a static redirect shell (no build step), so "the dev
REM server" is just a plain static file server. index.html/404.html detect
REM localhost/127.0.0.1 and show a dev banner instead of firing the redirect,
REM unless ?nodev=1 is on the URL - that's what makes DEV_MODE "on by default"
REM here, since there's no config file to flip.

set "DIR=%~dp0"
set "PORT=8000"
set "NO_DEV_MODE=0"

:parse
if "%~1"=="" goto run
if "%~1"=="--no-dev-mode" (
    set "NO_DEV_MODE=1"
    shift
    goto parse
)
set "PORT=%~1"
shift
goto parse

:run
cd /d "%DIR%"

if "%NO_DEV_MODE%"=="1" (
    echo Serving with dev-mode suppressed - open http://127.0.0.1:%PORT%/?nodev=1 to see the real redirect.
) else (
    echo Serving at http://127.0.0.1:%PORT%/ - dev banner shown, redirect suppressed.
    echo Append ?nodev=1 to test the real redirect locally.
)

where python >nul 2>&1
if errorlevel 1 (
    py -m http.server %PORT%
) else (
    python -m http.server %PORT%
)
