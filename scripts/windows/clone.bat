@echo off
if "%~1"=="" (
    echo Usage: clone <name>
    goto :eof
)

set "project=%~1"
set "git_cmd="

for /f "tokens=1,2 delims==" %%i in (w:\mottle\scripts\windows\clone.conf) do (
    if /i "%%i"=="%project%" set "git_cmd=%%j"
)

if "%git_cmd%"=="" (
    echo Error: '%project%' is not found in clone.conf.
    goto :eof
)

%git_cmd%