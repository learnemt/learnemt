@echo off
:main
echo ��ǰ�������ӹ���WIFI�ɣ�
netsh wlan show profiles

set /p wifi_name=��������Ҫ��ѯ��WIFI���ƣ�
netsh wlan show profile name="%wifi_name%" key=clear
echo.
echo �������ѯ����WIFI������ǣ�������Y������������N�˳���

set /p input=�����벢ѡ��
if %input%==Y goto main
if %input%==N goto exit

:exit
exit
pause>nul