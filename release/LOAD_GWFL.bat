@echo off
setlocal enabledelayedexpansion
cls
echo.
echo.
echo.
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo        ▇                                ▇
echo        ▇       ***正在准备网卡***       ▇
echo        ▇                                ▇
echo        ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
set m=0
for /f "tokens=1* delims=," %%a in ('Getmac /v /nh /fo csv') do (
set /a m+=1
set "name!m!=%%a"
set "name=%name:~1,-1%"
)
netsh interface ip set dns name=!name1! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name2! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name3! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name4! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name5! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name6! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name7! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name8! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
netsh interface ip set dns name=!name9! source=static addr=127.0.0.1 register=both validate=no >INFO_LOGS.log
mode con lines=32 cols=100
cls
echo.
echo.
echo.
echo                               ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo                               ▇                                ▇
echo                               ▇       ***成功开启代理***       ▇
echo                               ▇                                ▇
echo                               ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo.
echo ----------------------------------------------------------------------------------------------------
EXEC_MAIN.exe >nul
setlocal enabledelayedexpansion
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
del /f /q INFO_LOGS.log
color 4f
echo --------------------------------------------程序出错------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                               ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo                               ▇                                ▇
echo                               ▇      ***警告：严重错误***      ▇
echo                               ▇                                ▇
echo                               ▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇
echo.
echo.
echo --------------------------------------请检查上面错误提示--------------------------------------------
echo.
echo.
echo                            **************按任意键退出**************
pause >nul
ipconfig /flushdns
tskill EXEC*
taskkill /IM EXEC*