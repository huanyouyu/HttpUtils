@echo off
:: ת����ע������
:: by �ǳ���������̳ bbs.verybat.cn
:: 9306516����(�Ǳ���ԭ��)
:: ��������26933062�ṩ
rem �ɾ�ȷ�������������ɿ���ȣ����ж�ƽ������ꡢ���жϴ��£�С�¡�����31���30�졣
:looop
cls&set tian=0
rem  �����ȡ�ļ���������,�����º�����λ��0ȥ��.
for /f "tokens=1* delims=:" %%i in ('dir /b *.*^|findstr /n .*') do set var=%%i
set /a w=%random%%%%var%+1
for /f "tokens=1* delims=:" %%i in ('dir /b *.*^|findstr /n .*') do (
if "%%i"=="%w%" set wjm=%%j&goto lis
)
:lis
for /f "skip=4 tokens=1* delims= " %%a in ('dir/c "%wjm%"') do set wjrq=%%a&goto _lis
:_lis
set wn=%wjrq:~0,4%
set wy=%wjrq:~5,2%
set wr=%wjrq:~8,2%
if "%wy:~0,1%" equ "0" set wy=%wy:~1%
if "%wr:~0,1%" equ "0" set wr=%wr:~1%
set wj=%wn%-%wy%-%wr%

rem ��ȡϵͳ����,���� �º�����λ��0ȥ��.
set xtrq=%date:~0,10%
set xn=%xtrq:~0,4%
set xy=%xtrq:~5,2%
set xr=%xtrq:~8,2%
if "%xy:~0,1%" equ "0" set xy=%xy:~1%
if "%xr:~0,1%" equ "0" set xr=%xr:~1%
set xt1=%xn%-%xy%-%xr%
if %wjrq% lss %xtrq% (set b=%xt1%&set a=%wj%) else (set b=%wj%&set a=%xt1%)
for /f "tokens=1-3 delims=-" %%i in ("%b%") do (
set bnian=%%i
set byue=%%j
set bri=%%k
)

rem ��ʼ����
:kkk
rem echo %bnian%-%byue%-%bri%
if "%bnian%-%byue%-%bri%"=="%a%" echo.&echo  %wjm% �ǽ��촴����&echo.&pause&goto looop
set/a bri-=1
set/a tian+=1
if "%bnian%-%byue%-%bri%"=="%a%" goto ok
if "%bri%"=="0" call :_yue
goto kkk

:ok
echo.&echo  �������� %wjrq%     �ļ��� %wjm%
echo.&echo  ��ǰ���� %xtrq%
echo.&echo  �ļ� %wjm% �������ں͵�ǰ������� %tian% ��
echo.&pause
goto looop

:run
set /a _a=%bnian%/4
set /a _b=%_a%*4
if "%_b%"=="%bnian%" (call :run1) else set ru=0
goto :eof

:run1
set /a __a=%bnian%/100
set /a __b=%_a%*100
if not "%__b%"=="%bnian%" (set ru=1) else call :run2
goto :eof

:run2
set /a ___a=%bnian%/400
set /a ___b=%_a%*400
if "%___b%"=="%bnian%" (set ru=1) else set ru=0
goto :eof

:_yue
if "%byue%"=="1" (set/a bnian-=1&set byue=12) else set /a byue-=1
for %%i in (1 3 5 7 8 10 12) do if "%byue%"=="%%i" set "da=1"
if "%da%"=="1" (set bri=31&set da=0) else (set bri=30&set da=0)
if "%byue%"=="2" (call :run) else goto :eof
if "%ru%"=="1" (set bri=29&set da=0) else (set bri=28&set da=0)
goto :eof