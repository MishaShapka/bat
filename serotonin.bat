@echo off
rem netsh interface set interface name="���஢����� ���" admin=ENABLED
rem netsh interface set interface name="���஢����� ���" admin=DISABLED

set /p x="����쪮 ࠧ ��������? "
set /a s=x*180
set /a m=s/60
set /a h=s/60/60
echo � ⥡� %s% ᥪ㭤, ��� %m% �����.

netsh wlan connect name=Keenetic-9130
timeout /t %s% /nobreak
netsh wlan disconnect
pause
