echo off
echo ### �޸�ý���ļ�MD5ֵ (im3guo@qq.com��Ʒ) ##
echo .
fsutil file createnew %~dp1\a1109.txt 16
copy /b %1+%~dp1\a1109.txt zzz_%~nx1
del /q /s %~dp1\a1109.txt
echo .
echo .�Ѿ������
pause
