rem ����Ϸ   by��NOG �����ߵ�����
@echo off
cls
Title �������
::begin-----------------------------------
echo ��ӭ����ĳ��أ�
ping -n 2 127.1>nul 
echo ������·����Ҫ��������
echo 1.ͨ��˰���· 2.ͨ����һ��·��·
set /p choose=
if "%choose%"=="1" goto die1
ping -n 2 127.1>nul
echo �����а�ǹ��Ҫ��Ҫ��
echo 1.���� 2.��
set /p choose=
if "%choose%"=="2" goto die2
ping -n 2 127.1>nul
echo �����г�Ʊ��Ҫ��Ҫ��
echo 1.���� 2.��
set /p choose=
ping -n 2 127.1>nul
echo ����һ���̵꣡
if "%choose%"=="2" goto qian
ping -n 2 127.1>nul
echo ����ûǮ��
:goon
ping -n 2 127.1>nul
echo �߰��ߣ��߰��ߣ�������һ���ǹܣ�
ping -n 2 127.1>nul
if "%qiang%"=="yes" goto chengguan
ping -n 2 127.1>nul
echo �ǹ���������
ping -n 2 127.1>nul
echo �����ߣ�����һֻ��������Ŀ���������������
echo �������������ˣ���Ը���������1.Ը�� 2.��Ը��
set /p choose=
if "%choose%"=="1" goto konglong
:goon2
echo ����һֻ���ɵ��Բк��ӣ���������գ���ԭ��������BOSS��....
ping -n 2 127.1>nul
if "%konglong%"=="yes" goto win
echo ��������δ֪�Բе粨��������㣬��ϧ�������յ�ǰ���ˡ�����
goto end
:win
echo ��������ȥ����Ӵ�ս��
ping -n 2 127.1>nul
echo ����ֱ�ӱ�����ҧ����Ƭ��
ping -n 2 127.1>nul
echo żҲ����ͨ���ˣ�
ping -n 2 127.1>nul
echo.
echo.
echo --------------------------
echo �������
echo �����ߣ�NOG �����ߵ�����
echo ллʹ�á�
echo --------------------------
ping -n 2 127.1>nul
jiong2.bat
:konglong
echo �����������𣬵�δ������������ѣ�
ping -n 2 127.1>nul
set konglong=yes
goto goon2
:chengguan
echo �ǹܣ��Ƿ���ǹ��������һ�˰ɣ�
ping -n 2 127.1>nul
echo �㣺�����ǹܹ���ô��
ping -n 2 127.1>nul
echo �ǹܣ��ðɣ�������ǹ��·��Ӱ�����ݣ����ھ�����
ping -n 2 127.1>nul
echo ��Ҫ��Ҫ��ǹܴ�սһ����
echo 1.Ҫ 2.��Ҫ
set /p choose=
if "%choose%"=="2" goto die3
echo ǹû�ӵ����㱻�ǹܴ����ˡ�����������Ʒ���⡣��������
echo ��Ϸ��ɶȣ�60
goto end
:die3
echo �㱻������������������362452455245�죡��Ϸ��������Ʒ���⡣������
echo ��Ϸ��ɶȣ�60
goto end
:qian
ping -n 2 127.1>nul
echo �ۣ��̵���ֻ��һ���֡��塿ǹ�����������ˡ�����
set qiang=yes
goto goon 
:die2
echo ǹ�߻�����������������߰���
echo ��Ϸ��ɶȣ�20
goto end
:die1
echo �ۣ��������壬����ĵ��˰��ˣ��տ�ʼ�͹��ˣ������еĲ;ߣ�
echo ��Ϸ��ɶȣ�0
goto end
::end-----------------------------------
:end
echo ��������˳�.......
pause>nul
