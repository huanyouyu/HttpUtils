@echo off
:: ת����ע������
:: by �ǳ���������̳ bbs.verybat.cn
:: 9306516����(�Ǳ���ԭ��)

::˵��----���ı��е����������޹������˳������
@echo off
if "%1" neq "$" (
    for /f "tokens=2 delims=#" %%a in ('"%~0" $^|sort') do echo %%a
    pause>nul
) else for /f "delims=" %%i in (test.txt) do call echo %%random:~-1%%%%random:~-1%% #%%i