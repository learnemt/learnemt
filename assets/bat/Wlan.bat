@echo off
:main
echo 当前电脑连接过的WIFI由：
netsh wlan show profiles

set /p wifi_name=请输入您要查询的WIFI名称：
netsh wlan show profile name="%wifi_name%" key=clear
echo.
echo 您还想查询其他WIFI吗？如果是，请输入Y，否则请输入N退出！

set /p input=请输入并选择：
if %input%==Y goto main
if %input%==N goto exit

:exit
exit
pause>nul