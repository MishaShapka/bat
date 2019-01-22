@echo off
rem netsh interface set interface name="Беспроводная сеть" admin=ENABLED
rem netsh interface set interface name="Беспроводная сеть" admin=DISABLED

set /p x="Сколько раз подтянулся? "
set /a s=x*180
set /a m=s/60
set /a h=s/60/60
echo У тебя %s% секунд, или %m% минут.

netsh wlan connect name=Keenetic-9130
timeout /t %s% /nobreak
netsh wlan disconnect
pause
