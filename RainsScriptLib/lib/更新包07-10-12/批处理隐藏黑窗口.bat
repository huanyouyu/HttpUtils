@echo off
:: ת����ע������
:: �ǳ���������̳ bbs.verybat.cn   ��Ա 9306516����(�Ǳ���ԭ��)
:: ԭ���ӵ�ַ:http://bbs.verybat.cn/viewthread.php?tid=4464&extra=page%3D1
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
rem ���￪ʼ���Լ�������Ҫִ�е��������ˡ�
