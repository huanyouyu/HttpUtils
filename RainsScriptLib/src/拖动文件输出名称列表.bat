::~nx��������ʾ·��������ʾ��׺
"" >FileList.txt
for %%a in (%*) do (
echo %%~nxa >>FileList.txt
)
msg %username% /time:10 "�����ɣ��뿴FileList.txt"