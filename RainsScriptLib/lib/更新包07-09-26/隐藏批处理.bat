@echo off
:: ת����ע������
:: by �ǳ���������̳ bbs.verybat.cn
:: 9306516����(�Ǳ���ԭ��)
::���ܼܺ򵥣����ǣ��������ң�ɱ�����������
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit
:begin
echo ���￪ʼ���Լ�������Ҫִ�е������ˡ�
