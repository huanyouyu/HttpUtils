
@rem ----- ExeScript Options Begin -----
@rem ScriptType: console
@rem DestDirectory: temp
@rem Icon: default
@rem OutputFile: �������������
@rem ----- ExeScript Options End -----
@echo off
@rem ====�������ݲ�Ҫ�޸�====



title CSXO  Beta-1.3�� �����ߵķ�ŭ 
color 0a

set lv=0
set rhp=100
set rhpsx=100
set rmp=50
set rmpsx=50
set rgj=15
set rfy=10
set yl=0
set ds=0
set exp=0
set sjexp=10
set wqmc=��
set wqgj=0
set fzmc=��
set fzfy=0
set ydmc=��
set ydqx=0
set mzmc=��
set mzmf=0
set mfhf=3
set sjexpdz=10
set hh=1
set jcy=0
set xhy=0
set jnl1=��
set jnl01=�ռ�����

set jse=������
set sp=0
set jshu=0
set sli=0
set sbai=0
set sp=0




echo ������������������������������������������������������������������������������
echo ��                                 ��Ϸ����                                 ��
echo ������������������������������������������������������������������������������
echo.     
echo                                                         Bug�ύ: �ٶ�ح�����
echo.
echo.
echo.
echo.
echo.                         
echo               ���˶�����������Ϸ���ü��±��������Ϸ��
echo.
echo.
echo                         �޸ġ��ӹ������Ϸ��~
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto sye

:sye
set fhui=sye
cls
echo ������������������������������������������������������������������������������
echo ��                                    �� ҳ                                 ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�                             ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������
echo CSXO  Beta-1.3�� �����ߵķ�ŭ       
echo.
echo.
echo.
echo.
echo                                1. �Կ�ģʽ  
echo.
echo.
echo. 
echo.
echo                                2.������Ա
echo.
echo                                3.���¹���
echo.
echo                                0.�˳���Ϸ
echo.
echo.
echo �����룺
set /p you=
if %you%==1 goto dkms
if %you%==2 goto zzry
if %you%==3 goto gxgg
if %you%==0 goto tcyx

if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd

echo ����������������룡
pause
goto sye

:tcyx
cls
echo ������������������������������������������������������������������������������
echo ��                               �˳���Ϸ                                   ��
echo ������������������������������������������������������������������������������
echo.
echo.
echo.  
echo                             ���Ҫ�˳���Ϸô��
echo. 
echo.
echo.
echo.
echo.
echo                      1.�˳�              0.������ҳ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo �����룺
set /p you=
if %you%==1 goto tuichu
if %you%==0 goto sye

echo �����������룬���ڷ��أ�
pause
goto sye

:zzry
set fhui=zzry
cls
echo ������������������������������������������������������������������������������
echo ��                               �� �� ��                                   ��
echo ������������������������������������������������������������������������������
echo   Դ���룺bat                 ���룺����              =�� ��  �� �� ��=
echo.  
echo.
echo.
echo.
echo.
echo  1.��ע����΢��
echo.
echo  2.����ٷ�����
echo.
echo  3.�鿴CSXOС˵
echo.
echo.
echo.
echo  ���������QȺ���� �����ߵ��Թ��� (234877335)
echo.
echo.
echo.
echo �����룺
set /p you=
if %you%==234877335 goto kfz
if %you%==1 goto zzwb
if %you%==2 goto gftb
if %you%==3 goto dkxs
if %you%==0 goto sye

echo �������Ĵ��룬���������룡
pause
goto zzry


:zzwb
"C:\Program Files\Internet Explorer\iexplore.exe" "http://t.qq.com/mj3860"
echo.
echo ���֧�������ǵĶ�����лл
echo.
pause
goto zzry

:gftb
"C:\Program Files\Internet Explorer\iexplore.exe" "http://tieba.baidu.com/f?kw=����"
echo.
echo ��ӭ�������ǵ����ɣ��ǵþ���ǩ��Ŷ~�
echo.
pause
goto zzry

:dkxs
"C:\Program Files\Internet Explorer\iexplore.exe" "http://www.17k.com/book/140031.html"
echo.
echo С˵��Ȼ̫���ˣ����ǿ�һ�°�~
echo.
pause
goto zzry

:kfz
cls
echo ������������������������������������������������������������������������������
echo ��                          �� �� �� ���Թ���                               ��
echo ������������������������������������������������������������������������������
echo                                 s.��ҳ
echo.
echo.
echo.
echo 1.�޸Ľ�ɫ����
echo.
echo 2.�޸���������
echo.
echo 3.�޸�������ɫ
echo.
echo.
echo                                     �����߹��ܽ�����ѧϰ�������޸�ʧȥ��Ϸ��Ȥ
echo.
echo                                            �ٶ���������--��Ϸ����
echo.
echo.
echo.
echo.
echo �����룺
set /p you=
if %you%==1 goto jssj
if %you%==2 goto qtsj
if %you%==3 goto zts

if %you%==s goto sye

echo ����������������룡
pause
goto kfz

:jssj
cls
echo ������������������������������������������������������������������������������
echo ��                          �� �� �� ���Թ���                               ��
echo ������������������������������������������������������������������������������
echo                                 s.��ҳ
echo.
echo.
echo.
echo 1.�޸Ľ�ɫHP
echo.
echo 2.�޸Ľ�ɫ����
echo.
echo 3.�趨SPֵ
echo.
echo 4.�޸Ľ�ɫ����
echo.
echo.
echo 0.����
echo.
echo                                     �����߹��ܽ�����ѧϰ�������޸�ʧȥ��Ϸ��Ȥ
echo.
echo                                            �ٶ���������--��Ϸ����
echo.
echo.
echo �����룺
set /p you=
if %you%==1 goto jshp
if %you%==2 goto jsgj
if %you%==3 goto ssp
if %you%==4 goto jsmz
if %you%==0 goto kfz

if %you%==s goto sye

echo ����������������룡
pause
goto jssj

:jshp
echo.
echo ������HPֵ��
set /p rhp=
set /a rhpsx=%rhp%
echo ��ɫHP�޸ĳɹ���
pause
goto jssj
:jsgj
echo.
echo �����빥������
set /p rgj=
echo ��ɫ�������޸ĳɹ���
pause
goto jssj
:ssp
echo.
echo ������SPֵ��
set /p SP=
echo ��ɫSPֵ�޸ĳɹ���
pause
goto jssj
:jsmz
echo.
echo �������ɫ���֣�
set /p jse=
echo ��ɫ�����޸ĳɹ��������Ҫ������������ճ�����ܣ�
pause
goto jssj

:qtsj
echo ���߻�û���Ҫ�޸ĵĶ�������ȴ����£�
pause
goto kfz

:zts
echo ��������û����������ȴ����£�
pause
goto kfz


:gxgg
cls
echo ������������������������������������������������������������������������������
echo ��                                 ���¹���                                 ��
echo ������������������������������������������������������������������������������
echo.
echo 1.0�棬�Ż���������Ϸǰ���ǡ�CSOLս�ǡ�
echo.
echo 1.1�棬�������ݣ��������ܷ��ɱ�����޸���֪BUG
echo.
echo 1.2�棬�޸���ʾ�������
echo.
echo 1.3�濪���ߵķ�ŭ�����������ߵ��Թ��ܣ��޸���ʾ��ɫ�������͹������ļӵ㹦��
echo.    
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo   ��ʾ������Ĳ����Զ����������Թ�������Լ��ֶ�������
echo.
echo.
pause
goto sye

:rwxx
set fhui=rwxx
cls
echo ������������������������������������������������������������������������������
echo ��                                 ������Ϣ                                 ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�             s.��ҳ         ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������          
echo     ��ɫ��%jse%  
echo                                                              ս��%jshu%      
echo     �ȼ���%lv%   
echo                                                              ʤ��%sli% 
echo     ���飺%exp%/%sjexp%               
echo                                                              ����%sbai%
echo     Ѫ��  %rhp%/%rhpsx%                
echo     ħ��  %rmp%/%rmpsx% 
echo     ����  %rfy% 
echo     ����  %rgj%                     
echo     ���ܣ�%jnl1%            
echo     SP��  %sp%
echo. 
echo   .1. ��Ѫ��   .2. ��ħ��   .3. �ӷ���   .4. �ӹ���                
echo.                           
echo   .5.ѧϰ����  .6. ����     .y. �鿴˵��  
echo. 
echo �����룺
set /p you=
if %you%==1 goto jxue
if %you%==2 goto jmo
if %you%==3 goto jfang
if %you%==4 goto jgj
if %you%==5 goto jjnd
if %you%==6 goto sj
if %you%==y goto sming
if %you%==0 goto %fhui%
if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd
if %you%==s goto sye

echo ����������������룡
pause
goto rwxx

:jxue
if %sp% geq 1 goto jxue2
echo.
echo SP���㣬�ӵ�ʧ�ܣ�
pause
goto rwxx
:jxue2
set /a sp=%sp%-1
set /a rhp=%rhp%+5+%lv%
set /a rhpsx=%rhpsx%+5+%lv%
echo.
echo �ӵ�ɹ���
pause
goto rwxx
:jmo
if %sp% geq 1 goto jmo2
echo.
echo SP���㣬�ӵ�ʧ�ܣ�
pause
goto rwxx
:jmo2
set /a sp=%sp%-1
set /a rmp=%rmp%+5+%lv%
set /a rmpsx=%rmpsx%+5+%lv%
echo.
echo �ӵ�ɹ���
pause
goto rwxx

:jfang
if %sp% geq 1 goto jfang2
echo.
echo SP���㣬�ӵ�ʧ�ܣ�
pause
goto rwxx
:jfang2
set /a sp=%sp%-1
set /a rfy=%rfy%+5+%lv%
echo.
echo �ӵ�ɹ���
pause
goto rwxx


:jgj
if %sp% geq 1 goto jgj2
echo.
echo SP���㣬�ӵ�ʧ�ܣ�
pause
goto rwxx
:jgj2
set /a sp=%sp%-1
set /a rgj=%rgj%+5+%lv%
echo.
echo �ӵ�ɹ���
pause
goto rwxx


:jjnd
cls
echo ������������������������������������������������������������������������������
echo ��                                 ѧϰ����                                 ��
echo ������������������������������������������������������������������������������
echo.
echo.
echo     ��������            ʹ��Ч��              ����          ѧϰҪ��
echo.
echo.
echo  1. ���ɱ��        �Ե�����������10��        50����        LV3��10spֵ
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo  0.����
echo.
echo.
echo �����룺
set /p you=
if %you%==1 goto fjsc

if %you%==0 goto rwxx

echo ����������������룡
pause
goto jjnd

:fjsc
if %LV% geq 3 goto fjsc1
echo.
echo �ȼ����㣬����ʧ�ܣ�
pause
goto jjnd

:fjsc1
if %sp% geq 10 goto fjsc2
echo.
echo SP���㣬����ʧ�ܣ�
pause
goto jjnd
:fjsc2
set /a sp=%sp%-10
set jnl1= ���ɱ��
set jnl01= ���ɱ��
echo.
echo ��ϲ�������ɹ���
pause
goto jjnd

:sj
if %sjexp% leq %exp% goto sjcg
echo.
echo ���鲻�㣬����ʧ�ܣ�
pause
goto rwxx
:sjcg
set /a lv=%lv%+1 
set /a exe=%exp%-%sjexp%
set /a sjexp=%sjexp%+%sjexpdz%
set /a sjexpdz=%sjexpdz%+10
set /a rhpsx=%rhpsx%+20
set /a rhp=%rhpsx%
set /a rmpsx=%rmpsx%+10
set /a rmp=%rmpsx%  
set /a rgj=%rgj%+5
set /a rfy=%rfy%+5
set /a sp=%sp%+4
echo.
echo �����ɹ���
pause
goto rwxx

:sming
cls
echo ������������������������������������������������������������������������������
echo ��                                 ����˵��                                 ��
echo ������������������������������������������������������������������������������                         
echo.
echo.    
echo.
echo    ÿ��һ����������1 SPֵ��
echo.
echo    ÿ�����������Ի��4 SPֵ��
echo.
echo.
echo.
echo    �˽���������뵽 ����ɡ�
echo.
echo.
pause
goto rwxx

:grck
set fhui=grck
cls
echo ������������������������������������������������������������������������������
echo ��                                    �� ��                                 ��
echo ������������������������������������������������������������������������������
echo.
echo.
echo.
echo.
echo.
echo                            ��Ǹ���˹�����δ���ţ�
echo. 
echo.                               
echo. 
echo.                            
echo.
echo.
echo.
echo.
pause
goto rwxx



:sd
set fhui=sd
cls
echo ������������������������������������������������������������������������������
echo ��                                 �� ��                                    ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�             s.��ҳ         ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������
echo.
echo   ����          ����      �۸� (��ң� 
echo.  
echo 1.MP5           ����+17     100
echo 2.AK-47         ����+31     500
echo 3.M4A1          ����+29     250
echo.
echo.
echo.
echo.
echo 9.��һҳ
echo.
echo �����룺
set /p you=
if %you%==1 goto mp5
if %you%==2 goto ak
if %you%==3 goto m4
if %you%==9 goto sd2
if %you%==0 goto %fhui%
if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd
if %you%==s goto sye
echo.
echo ����������������룡
pause
goto sd
:mp5
set zwqmc=MP5 
set /a zwqgj=17
set /a wqjg=100
goto wqgm
:ak
set zwqmc=AK-47
set /a zwqgj=31
set /a wqjg=500
goto wqgm
:m4
set zwqmc=M4A1
set /a zwqgj=29
set /a wqjg=250
goto wqgm

:wqgm
if %wqjg% leq %yl% goto gmwqcg
echo.
echo ��Ҳ��㣬����ʧ�ܣ�
pause
goto sd
:gmwqcg
set /a yl=%yl%-%wqjg%
set wqmc=%zwqmc%
set wqgj=%zwqgj%
set /a rgj=%rgj%+%wqgj%
echo.
echo ����ɹ���
pause
goto sd

:sd2
cls
echo ������������������������������������������������������������������������������
echo ��                                  �� ��                                   ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�             s.��ҳ         ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������
echo.
echo   ����          ����      �۸� (��ң� 
echo.   
echo 1.����          ����+10   100
echo 2.Ƥ��          ����+30   500
echo 3.������        ����+60   1000
echo 4.������+ͷ��   ����+100  5000
echo.
echo 0.����    9.��һҳ
echo.
echo �����룺
set /p you=
if %you%==1 goto by
if %you%==2 goto py
if %you%==3 goto lj
if %you%==4 goto szy
if %you%==0 goto sd
if %you%==9 goto sd3
if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd
if %you%==s goto sye
echo.
echo ����������������룡
pause
goto sd2
:by
set zfjmc=����
set /a zfzfy=10
set /a fzjg=100
goto fzgm
:py
set zfzmc=Ƥ��
set /a zfzfy=30
set /a fzjg=500
goto fzgm
:lj
set zfzmc=������
set /a zfzfy=60
set /a fzjg=1000
goto fzgm
:szy
set zfzmc=������+ͷ��
set /a zfzfy=100
set /a fzjg=5000
goto fzgm

:fzgm
if %fzjg% leq %yl% goto gmfzcg
echo.
echo ��Ҳ��㣬����ʧ�ܣ�
pause
goto sd2
:gmfzcg
set /a yl=%yl%-%fzjg%
set fzmc=%zfzmc%
set fzfy=%zfzfy%
set /a rfy=%rfy%+%fzfy%
echo.
echo ����ɹ���
pause
goto sd2

:sd3
cls
echo ������������������������������������������������������������������������������
echo ��                                 �� ��                                    ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�             s.��ҳ         ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������
echo.
echo   ����          ����      �۸� (��ң� 
echo.
echo 1.������Һ  �ָ�Ѫ400��   1000          �ѳ�������%jcy%
echo.
echo 2.ħ����    �ָ���100��    500          �ѳ�������%xhy%
echo.
echo.
echo.
echo 3.��ѻָ� Ѫ������ʣ�������%mfhf%��
echo.
echo.
echo.
echo.
echo �����룺
set /p you=
if %you%==1 goto gmjcy
if %you%==2 goto gmxhy
if %you%==3 goto hf
if %you%==0 goto sd2
if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd
if %you%==s goto sye
echo.
echo ����������������룡
pause
goto sd3
:gmjcy
if %yl% geq 1000 goto gmjcycg
echo.
echo ��Ҳ��㣬����ʧ�ܣ�
pause
goto sd3
:gmjcycg
set /a yl=%yl%-1000
set /a jcy=%jcy%+1
echo.
echo ����ɹ���
pause
goto sd3
:gmxhy
if %yl% geq 500 goto gmxhycg
echo.
echo ��Ҳ��㣬����ʧ�ܣ�
pause
goto sd3
:gmxhycg
set /a yl=%yl%-500
set /a xhy=%xhy%+1
echo.
echo ����ɹ���
pause
goto sd3
:hf
if %mfhf%==0 goto hfsb
set /a mfhf=%mfhf%-1
set /a rhp=%rhpsx%
set /a rmp=%rmpsx%
echo.
echo �ָ��ɹ����´�����Ӵ��
echo.
pause
goto sd3

:hfsb
echo.
echo �����ѻָ�����Ϊ0���ָ�ʧ�ܣ�
echo.
pause
goto sd3
:dkms
set fhui=dkms
cls
echo ������������������������������������������������������������������������������
echo ��                                 ��ͼѡ��                                 ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�             s.��ҳ         ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������
echo.
echo.
echo.
echo                    1.ʧ��֮��   ���ȼ���LV1-LV3��
echo.
echo                    2.����˹���� ���ȼ���LV3-LV5��
echo.
echo                    3.������     ���ȼ���LV5-LV10��
echo.
echo.
echo.                 
echo �����룺
set /p you=
if %you%==1 goto slzc
if %you%==2 goto wls
if %you%==3 goto lec
if %you%==0 goto %fhui%
if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd
if %you%==s goto sye
echo.
echo ����������������룡
pause
goto dkms
:slzc
set fhui=slzc
cls
echo ������������������������������������������������������������������������������
echo ��                                 ʧ��֮��                                 ��
echo ������������������������������������������������������������������������������
echo a.����  b.�ֿ�  c.�̵�             s.��ҳ         ��ɫ��%jse%     %yl%���
echo ������������������������������������������������������������������������������
echo.
echo.
echo.
echo                    1.̫��     ���ȼ���LV1-LV3��
echo.
echo                    2.С��     ���ȼ���LV3-LV5��
echo.
echo                    3.ˮ�๤   ���ȼ���LV5-LV10��
echo.
echo.
echo.                 
echo �����룺
set /p you=
if %you%==1 goto tjian
if %you%==2 goto xao
if %you%==3 goto sng
if %you%==0 goto %fhui%
if %you%==a goto rwxx
if %you%==b goto grck
if %you%==c goto sd
if %you%==s goto sye
echo ����������������룡
pause
goto slzc
:tjian
set gmc=̫�� 
set ghp=20
set ggj=15
set gfy=10
set jyl=10
set jexp=10
set dd=dhw
goto zd
:dhgtl
:xao
set gmc=С�� 
set ghp=30
set ggj=20
set gfy=15
set jyl=20
set jexp=15
set dd=dhw
goto zd
:sng
set gmc=ˮ�๤
set ghp=50
set ggj=30
set gfy=20
set jyl=50
set jexp=25
set dd=dhcc
goto zd

:wls
echo.
echo ʱ��ִ٣���δ���ţ�
pause
goto dkms
:lec
echo.
echo ʱ��ִ٣���δ���ţ�
pause
goto dkms
:zd
set /a rsjgj=%rgj%-%gfy%
set /a gsjgj=%ggj%-%rfy%
if %gsjgj% lss 1 set gsjgj=1
if %rsjgj% lss 1 set rsjgj=1
cls
echo ������������������������������������������������������������������������������
echo ��                                  ս����                                  ��
echo ������������������������������������������������������������������������������
echo                                   �غ�����%hh%                          
echo.
echo                      ���ƣ�%gmc%          ��Ѫ��%rhp%/%rhpsx%            
echo.
echo                      ��Ѫ��%ghp%              ������%rmp%/%rmpsx%  
echo.
echo                      ������%ggj%      V S     ������%rgj%
echo.
echo                      ������%gfy%              ������%rfy%
echo.
echo                      A.����  Q.����  E.����  G.����     
echo.
echo �����룺
set /p you=
if %you%==a goto gj
if %you%==q goto fs
if %you%==e goto dj
if %you%==g goto tp
echo ����������������룡
pause
goto zd
:gj
set /a ghp=%ghp%-%rsjgj%
set /a rhp=%rhp%-%gsjgj%
echo.
echo �㹥��%gmc%�����������%rsjgj%���˺���
ping/n 2 127.1>nul
echo.
echo %gmc%�����㣬���������%gsjgj%���˺��� 
ping/n 2 127.1>nul
if %ghp% lss 1 goto win
if %rhp% lss 1 goto lose
set /a hh=%hh%+1
goto zd
set
:dj
echo.
echo 1.������Һ  �ָ���Ѫ400��  ʣ��������%jcy%
echo.
echo 2.ħ����    �ָ�����100��  ʣ��������%xhy%
echo.
echo 0.����
echo.
echo �����룺
set /p you=
if %you%==1 goto cjcy
if %you%==2 goto cxhy
if %you%==0 goto zd
echo ����������������룡
pause
goto dj
:cjcy
if %jcy% geq 1 goto cjcycg
echo.
echo ʣ������Ϊ0��ʹ��ʧ�ܣ�
pause
goto dj
:cjcycg
set /a jcy=%jcy%-1
set /a rhp=%rhp%+400
if %rhp% gtr %rhpsx% set /a rhp=%rhpsx%
echo.
echo ʹ�óɹ��������Ѫ�ָ��ˣ�
ping/n 2 127.1>nul
echo.
echo %gmc%�����㣬���������%gsjgj%���˺��� 
ping/n 2 127.1>nul
if %rhp% lss 1 goto lose
set /a hh=%hh%+1
goto zd
:cxhy
if %xhy% geq 1 goto cjcycg
echo.
echo ʣ������Ϊ0��ʹ��ʧ�ܣ�
pause
goto dj
:cjcycg
set /a xhy=%xhy%-1
set /a rmp=%rmp%+400
if %rmp% gtr %rmpsx% set /a rhp=%rhpsx%
echo.
echo ʹ�óɹ�����ķ����ָ��ˣ�
ping/n 2 127.1>nul
echo.
echo %gmc%�����㣬���������%gsjgj%���˺��� 
ping/n 2 127.1>nul
if %rhp% lss 1 goto lose
set /a hh=%hh%+1
goto zd
:fs
echo.
echo 1. �ػ�   �ԶԷ����20��̶��˺�  ���ģ�20����
echo.
echo 2.%jnl1%     
echo.
echo 3.����
echo.
echo �����룺
set /p you=
if %you%==1 goto ndxs
if %you%==2 goto %jnl01%
if %you%==3 goto zd
echo ����������������룡
pause
goto fs
:ndxs
if %rmp% geq 20 goto ndxscg
echo.
echo �������㣬����ʹ��ʧ�ܣ�
pause
goto fs
:ndxscg
set /a rmp=%rmp%-20
set /a ghp=%ghp%-20
set /a rhp=%rhp%-%gsjgj%
echo.
echo �㹥��%gmc%�����������20��̶��˺���
ping/n 2 127.1>nul
echo.
echo %gmc%�����㣬���������%gsjgj%���˺��� 
ping/n 2 127.1>nul
if %ghp% lss 1 goto win
if %rhp% lss 1 goto lose
set /a hh=%hh%+1
goto zd
:�ռ�����
echo �������գ����������룡
pause
goto fs
: ���ɱ��
set /a rmp=0
set /a ghp=%ghp%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%-%rsjgj%
set /a rhp=%rhp%-%gsjgj%
echo.
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo �㹥��%gmc%�����������%rsjgj%��̶��˺���
ping/n 2 127.1>nul
echo.
echo %gmc%�����㣬���������%gsjgj%���˺��� 
ping/n 2 127.1>nul
if %ghp% lss 1 goto win
if %rhp% lss 1 goto lose
set /a hh=%hh%+1
goto zd
:tp
set /a jshu=%jshu%+1
set /a sbai=%sbai%+1
goto %fhui%
:win
echo.
echo ��ʤ���ˣ�
set /a hh=0
set /a jshu=%jshu%+1
set /a sli=%sli%+1
ping/n 2 127.1>nul
echo.
echo ���:
ping/n 2 127.1>nul
echo.
echo ��ң�%jyl%
set /a yl=%yl%+%jyl%
ping/n 2 127.1>nul
echo.
echo ���飺%jexp%
set /a exp=%exp%+%jexp%
ping/n 2 127.1>nul
echo.
echo �����������
pause>nul
goto %fhui%
:lose
echo.
echo ��ʧ���ˣ�
set /a hh=0
set /a jshu=%jshu%+1
set /a sbai=%sbai%+1
echo.
echo �����������
pause>nul
set /a rhp=1
goto %fhui%

