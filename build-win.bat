@echo off

echo build boost now...

set boostbuild=".\b2.exe"
if not exist "%boostbuild%" (
    .\bootstrap.bat
    .\b2.exe --with-chrono --with-system --with-regex --with-date_time link=static runtime-link=static
)

if exist "%boostbuild%" (
     .\b2.exe --with-chrono --with-system --with-regex --with-date_time link=static runtime-link=static
) else (
    echo failed to build boost...
)