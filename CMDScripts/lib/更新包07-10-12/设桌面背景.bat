@echo off
:: ת����ע������
:: by �ǳ���������̳ bbs.verybat.cn   ��Ա 9306516����(�Ǳ���ԭ��)
:: �˴������bbs.cn-dos.net
rem ���ܣ���һ��ͼƬ������汳����ͼƬֻ����bmp��ʽ��
rem ������Ҫ��C:\4.bmp����Ϊ���汳��
rem ����δ��뱣��ΪMyWall.bat
rem ˫������MyWall.bat
rem ����MyWall.bat�󣬼�ʹɾ��C:\4.bmp�����汳�����޸�����Ч
cd "%userprofile%\Local Settings\Application Data\Microsoft"
if exist Wallpaper_bak.bmp (
  del Wallpaper_bak.bmp
)
if exist Wallpaper1.bmp (
  ren Wallpaper1.bmp Wallpaper_bak.bmp
)
copy C:\4.bmp Wallpaper1.bmp>nul
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%userprofile%\Local Settings\Application Data\Microsoft\Wallpaper1.bmp" /f>nul
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v OriginalWallpaper /t REG_SZ /d "%userprofile%\Local Settings\Application Data\Microsoft\Wallpaper1.bmp" /f>nul
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v ConvertedWallpaper /t REG_SZ /d "C:\4.bmp" /f>nul
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters