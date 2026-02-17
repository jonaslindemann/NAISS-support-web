@echo off
setlocal EnableExtensions

set "target=%~1"
if "%target%"=="" set "target=build"

if /i "%target%"=="all" goto build
if /i "%target%"=="build" goto build
if /i "%target%"=="serve" goto serve
if /i "%target%"=="clean" goto clean

echo Unknown target: %target%
echo Usage: %~n0 [all^|build^|serve^|clean]
exit /b 1

:build
call :clean
python -u format_software_info.py
if errorlevel 1 exit /b 1
zensical build
exit /b %errorlevel%

:serve
call :clean
python -u format_software_info.py
if errorlevel 1 exit /b 1
zensical serve
exit /b %errorlevel%

:clean
if exist "site" rmdir /s /q "site"
if exist "docs\applications" rmdir /s /q "docs\applications"
if exist "zensical.toml" del /f /q "zensical.toml"
exit /b 0
