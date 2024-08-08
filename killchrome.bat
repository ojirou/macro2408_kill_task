whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
@powershell start-process %~0 -verb runas
exit
)
path %C:\Users\user\git\windows_macro; C:\WINDOWS\SYSTEM32
taskkill /f /im "chrome.exe"
%WINDIR%\system32\cmd.exe /v:ON
@echo off
set APP_NAME=chrome.exe
for /f %%i in ('task list /fi "IMAGENAME eq %APP_NAME%" 2^>^&1') do (
    if /i %%i==%APP_NAME% (
        taskkill /im %APP_NAME% /f
        goto ENDLOOP;
    )
)
:ENDLOOP