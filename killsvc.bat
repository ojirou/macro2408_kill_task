rem 強制終了

path %C:\Users\myina\git\windows_macro; C:\WINDOWS\SYSTEM32
taskkill /f /im "svchost.exe"
%WINDIR%system32\cmd.exe /v:ON
@echo off
set APP_NAME=svchost.exe
for /f %%i in ('task list /fi "IMAGENAME eq %APP_NAME%" 2^>^&1') do (
    if /i %%i==%APP_NAME% (
        taskkill /im %APP_NAME% /f
        goto ENDLOOP;
    )
)
:ENDLOOP