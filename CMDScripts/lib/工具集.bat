@echo off&title BAT������V0.30(by sam)
color 4f
:caidan
cls
echo ========================================
echo            bat ������ V0.30
echo           by       sam(samkt)
echo 2010.3.24                   19.39(24h)
echo QQ:455051563 E-mail:samkt@163.com
echo BAT ����Ⱥ:25753814   �ٶ�BAT/CMD/DOS��
echo ת        ��         ��         ע        ��
echo ========================================
echo ��ѡ����Ҫʹ�õĹ���!
echo 1.���ݹ���V0.67�����ڱ�����Ҫ���ݣ�
echo 2.���̸�ʽ������V0.1����ʽ�����̣�
echo 3.ɾ������/��ɾ�ļ�����V0.5��ɾ������/��ɾ�ļ���
echo 4.��ֹ���̹���V0.5����ֹ���̣�
echo 5.ȡ���ػ�����V0.2�������ʾ����Ҫ�ػ�/����/ע�������к��ȡ����
echo 6.�������ٹ���v0.5���������٣�
echo 7.�ػ�/ע��/���𹤾�V0.3
echo 8.�˳����˳���
set choose =
set /p choose=
if '%choose%'=='1' goto bkup
if '%choose%'=='2' goto fomr
if '%choose%'=='3' goto delt
if '%choose%'=='4' goto task
if '%choose%'=='5' goto nshu
if '%choose%'=='6' goto ping
if '%choose%'=='7' goto shut
if '%choose%'=='8' goto exit
goto ping
:ping
pause
ping www.qq.com
echo.
echo.
echo ������ϣ����ݣ�***MS��С��100Ϊ�죬101-500�еȣ�501������
echo ��������ز˵�
pause>nul
goto caidan
goto shut
:shut
echo ��ѡ��
echo s�ǹػ�
echo l��ע��
echo r������
set /p ml01=
echo �������ʼ
pause>nul
shutdown /%ml01% /t 5
echo 5���ػ�
pause>nul
goto caidan
goto nshu
:nshu
shutdown /a
echo ����ɣ�����������ز˵���
pause>nul
goto caidan
goto bkup
:bkup
echo ��ѡ��Ҫ���ݵ��ļ�/�ļ���/�������磺D/E/A����һ��Ҫ������ȷ�������޷�����!��
set /p yp=
echo ��ѡ�񱸷ݱ���λ�ã��磨A:\���ݣ���һ��Ҫ������ȷ�������޷�����!��
set /p bcwz=
copy '%yp%' '%bcwz%'
echo ������ϣ��Ƿ��ٴα��ݣ�y=yes n=no ��ѡ��Ϊ���
set choose =
set /p choose=��ѡ��Y.N����
if '%choose%'=='y' goto bkup
if '%choose%'=='n' goto caidan
goto fomr
:fomr
echo ��ѡ��Ҫ��ʽ���Ĵ���,�����ܸ�ʽ�����������ڵĴ��̣�����:A/C/G
set /p cp=
echo ��ȷ��Ҫʹ�ô˳����綪ʧ��Ҫ����,���˲��е��κ����Σ�(�����ȷ��)
pause>nul
format %cp%:/q
echo �Ѹ�ʽ����ϣ��Ƿ��ʽ���������̣�y=yes n=no ��ѡ��Ϊ���
set choose =
set /p choose=��ѡ��Y.N����
if '%choose%'=='y' goto fomr
if '%choose%'=='n' goto caidan
goto delt
:delt
echo �������ļ�·������:c:\525894\io\55.exe��d:\23\��
set /p dellujing=
echo ��ѡ���ǲ���ɾ������ֻɾ��1�Σ���A=����ɾ��B=ɾ��1�Σ�
set choose =
set /p choose=��ѡ��A,B����
if '%choose%'=='a' goto buduandel
if '%choose%'=='b' goto delonce
goto delonce
:delonce
del /f /s /q %dellujing%
del %dellujing%
echo ɾ����ϣ�A��ѡ�����ļ�ɾ����B�ص��˵�
set choose =
set /p choose=��ѡ��:
if '%choose%'=='a' goto delt
if '%choose%'=='b' goto caidan
goto buduandel
:buduandel
del /f /s /q %dellujing%
del %dellujing%
goto buduandel
goto task
:task
echo ������Ҫ�رյĽ���
set /p taskjincheng=
echo ��ѡ���ǲ��Ϲرջ���ֻ�ر�1�Σ���A=���Ϲر�B=�ر�1�Σ�
set choose =
set /p choose=��ѡ��A,B����
if '%choose%'=='a' goto taskbuduan
if '%choose%'=='b' goto taskonce
goto taskbuduan
:taskbuduan
taskill /f /im %taskjincheng%
taskill %taskjincheng%
goto taskbuduan
goto taskonce
:once
taskill /f /im %taskjincheng%
taskill %taskjincheng%
echo �ر���ϣ�A��ѡ�����ļ��رգ�B�ص��˵�
set choose =
set /p choose=��ѡ��A,B����
if '%choose%'=='a' goto task
if '%choose%'=='b' goto caidan
goto caidan
goto exit
:exit
echo ������˳�
pause>nul