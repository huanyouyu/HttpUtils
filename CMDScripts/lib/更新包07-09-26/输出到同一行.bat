:: ת����ע������
:: by �ǳ���������̳ bbs.verybat.cn
:: 9306516����(�Ǳ���ԭ��)
@echo off
for /f %%i in (a.txt) do set /p=%%i <nul
echo.
pause


@echo off
setlocal enabledelayedexpansion
for /f %%i in (a.txt) do set str=!str! %%i
echo %str%
pause 
