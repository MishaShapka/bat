rem ����� ��⭨�� � ���⮬ ०���
@echo off
 
rem ��⮢�� ࠡ�稩 ���-䠩�
echo dir /s c:\^>log.txt>wait.cmd
 
rem ��⮢�� 䠩� ����᪠ � ���⮬ ०���
echo Set WshShell = CreateObject("WScript.Shell") >start.vbs
echo WshShell.Run "cmd.exe /c C:\Users\mishashapka\Desktop\serotonin2.bat", 0, false>>start.vbs
 
rem ����᪠�� �� �믮������ � ���⮬ ०���, ���� �믮������ �� ���.
cscript.exe //b //nologo start.vbs
 
rem ��ࠥ� �६���� 䠩��
del /f /q start.vbs
del /f /q wait.cmd