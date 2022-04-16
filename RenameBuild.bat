@echo off
set o=%~2
set t=tools
set label=
set version=
if "%~1"=="" goto :help
if "%~2"=="" set o=.

:applabel
for /f "tokens=1 delims=" %%a in ('%t%\aapt d badging %1 ^| %t%\grep "application: label=" ^| %t%\cut -d' -f2- ^| %t%\rev ^| %t%\cut -d' -f4- ^| %t%\rev ^| %t%\tr -dc [A-Za-z0-9-_.!'~+[:blank:]] ') do set label=%%a

if "%label%" == "" goto :actlabel
goto :version

:actlabel
for /f "tokens=1 delims=" %%a in ('%t%\aapt d badging %1 ^| %t%\grep "launchable activity name=" ^| %t%\cut -d' -f4- ^| %t%\rev ^| %t%\cut -d' -f4- ^| %t%\rev ^| %t%\tr -dc [A-Za-z0-9-_.!'~+[:blank:]] ') do set label=%%a

if "%label%" == "" set label=ErroName

:version
for /f "tokens=1 delims=" %%a in ('%t%\aapt d badging %1 ^| %t%\grep "versionName=" ^| %t%\cut -d' -f6') do set version=%%a

if "%version%" == "" set version=0.0.0

:core
echo %label% %version%
copy /b /y %1 "%o%\%label%-v%version%.apk" >nul
goto end

:help
echo.
echo AutoRename-v1.0 - 16.04.2022
echo.
:end