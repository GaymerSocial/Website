@echo off
setlocal enabledelayedexpansion
REM GaymerSocial/Website - Local dev server (Windows)
REM Usage: dev-server.bat [port] [--no-dev-mode]
REM   port            default: 8000
REM   --no-dev-mode   just a reminder of how to suppress the dev banner (see below)
REM
REM This is a plain static site with no build step, so "the dev server" is
REM just Python's built-in one. The dev-mode banner is driven client-side by
REM index.html/404.html (shown whenever the page is loaded from localhost),
REM so there's nothing to force on server-side - --no-dev-mode here only
REM prints the URL flag that suppresses it.

set "DIR=%~dp0"
set "PORT=8000"
set "NO_DEV_MODE=0"

:parse
if "%~1"=="" goto after_parse
if "%~1"=="--no-dev-mode" (
    set "NO_DEV_MODE=1"
    shift
    goto parse
)
set "PORT=%~1"
shift
goto parse

:after_parse
cd /d "%DIR%"

if "%NO_DEV_MODE%"=="1" (
    echo Serving at http://127.0.0.1:%PORT%/?nodev=1 ^(dev banner suppressed^)
) else (
    echo Serving at http://127.0.0.1:%PORT%/ ^(dev banner on - add ?nodev=1 to suppress it^)
)

where python >nul 2>&1
if errorlevel 1 (
    py -m http.server %PORT%
) else (
    python -m http.server %PORT%
)
