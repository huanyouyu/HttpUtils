@echo off
:: ת����ע������
:: �ǳ���������̳ bbs.verybat.cn   ��Ա 9306516����(�Ǳ���ԭ��)
:: ��ת�Ƶ�D��Ϊ��
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "D:\pagefile.sys 512 1024"