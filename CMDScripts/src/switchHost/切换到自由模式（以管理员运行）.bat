@echo off
cd /d %~dp0
copy /Y %windir%\system32\drivers\etc\hosts %windir%\system32\drivers\etc\hosts.bak
copy /Y hostsFree %windir%\system32\drivers\etc\hosts
@echo �Ѿ��л�������ģʽ
pause