:: ת����ע������
:: by �ǳ���������̳ bbs.verybat.cn
:: 9306516����(�Ǳ���ԭ��)
@echo off
::���������ı�
echo ���ǳ���������̳�����������ߵļ�԰���� bbs.verybat.cn>verybat.txt
::��������
set str=0
for /f "delims=" %%a in (verybat.txt) do call :lis %%a
pause
del verybat.txt
goto :eof

:lis
  set var=%*
:loop
  call set num=%%var:~%str%,1%%
  if "%num%"=="" set str=0&goto :eof 
  if "%num%"==" " (echo\) else set /p x=%num%<nul
  set/a str+=1
  goto loop