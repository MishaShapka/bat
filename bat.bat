rem Запуск батника в скрытом режиме
@echo off
 
rem Готовим рабочий бат-файл
echo dir /s c:\^>log.txt>wait.cmd
 
rem Готовим файл запуска в скрытом режиме
echo Set WshShell = CreateObject("WScript.Shell") >start.vbs
echo WshShell.Run "cmd.exe /c C:\Users\mishashapka\Desktop\serotonin2.bat", 0, false>>start.vbs
 
rem Запускает на выполнение в скрытом режиме, конца выполнения не ждём.
cscript.exe //b //nologo start.vbs
 
rem Стираем временные файлы
del /f /q start.vbs
del /f /q wait.cmd