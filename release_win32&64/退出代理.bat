@echo off
color 3f
title SNI���糷������
mode con lines=20 cols=50
echo.
echo.
echo.
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
echo        �~                                �~
echo        �~       ***��������Ȩ��***       �~
echo        �~                                �~
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
echo.
echo.
echo          ***�����ʾ��Ȩ���������ǡ�***         
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
cls
echo.
echo.
echo.
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
echo        �~                                �~
echo        �~       ***���ڻָ�����***       �~
echo        �~                                �~
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
@echo off
setlocal enabledelayedexpansion
echo. & echo ����ץȡ�������ơ���
set m=0
for /f "tokens=1* delims=," %%a in ('Getmac /v /nh /fo csv') do (
set /a m+=1
set "name!m!=%%a"
set "name=%name:~1,-1%"
)
netsh interface ip set dns name=!name1! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name2! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name3! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name4! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name5! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name6! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name7! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name8! source=dhcp register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name9! source=dhcp register=both validate=no >INFO_LOGS.log
ipconfig /flushdns
del /f /q INFO_LOGS.log
tskill EXEC*
tskill cm*
taskkill /IM EXEC*
taskkill /IM cm*
cls
echo.
echo.
echo.
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
echo        �~                                �~
echo        �~       ***�����ɹ����***       �~
echo        �~                                �~
echo        �~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~�~
timeout /t 5