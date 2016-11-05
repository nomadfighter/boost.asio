@echo off

echo build boost now...

set boostbuild=".\b2.exe"
if not exist "%boostbuild%" (
    .\bootstrap.bat
    .\b2.exe --with-chrono --with-system --with-regex --with-date_time
)

if exist "%boostbuild%" (
     .\b2.exe --with-chrono --with-system --with-regex --with-date_time
) else (
    echo failed to build boost...
)