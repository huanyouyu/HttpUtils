@echo off
if "%1" == "" goto info
setlocal enabledelayedexpansion
tasklist /fi "pid eq %1" | find "%1" > nul && (
  tasklist /fi "pid eq %1"
  echo.
  set /p str="�Ƿ�Ҫ���� PID Ϊ %1 �Ľ���(Y/N)? "
  if /I "!str!" == "Y" taskkill /f /pid %1
) || echo û���ҵ� PID Ϊ %1 �Ľ���
goto end
:info
echo ʹ�÷�����kill ^<��Ҫ�����Ľ��̺�(PID)^>
:end
echo on
