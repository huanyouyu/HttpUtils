@echo off
:: ת����ע������
:: �ǳ���������̳ bbs.verybat.cn   ��Ա 9306516����(�Ǳ���ԭ��)
:: ��svchost.exeΪ��
wmic process where name="svchost.exe" get executablepath|find /i /v "exec"
pause