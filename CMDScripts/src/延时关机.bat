@echo off
setlocal enabledelayedexpansion
echo ������֮��ػ���������0��ȡ���ػ���
set /p s=�����������
if %s%==0 goto CancelF
set /a m=%s%*60
shutdown -s -t %m%
goto end
:CancelF
shutdown -a
:end
pause
