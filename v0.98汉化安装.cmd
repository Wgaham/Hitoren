@echo off
echo ���֮��V0.98������װ����
echo ������ɾ���ɰ汾�ĺ����ļ�����װ�°汾�ĺ����ļ�
echo ��ע�⽫���ű���Data098�ļ��зŵ���Ϸ��Ŀ¼������hitoren�ļ���ͬһĿ¼��
echo �밴�������ʼ��װ���̣�������ֱ�����Ͻǹرգ�������������κθ���
pause
cls
rd>nul 2>nul .\Chs_Data /s /q
rd>nul 2>nul .\data /s /q

del>nul 2>nul .\Install.cmd /s /q
del>nul 2>nul .\NewInstall.cmd /s /q
del>nul 2>nul .\UnInstall.cmd /s /q
del>nul 2>nul .\Readme.txt /s /q

ren>nul 2>nul data.xp3 data.xp3.jp
ren>nul 2>nul jp_data.bac data.xp3.jp
ren>nul 2>nul movie.mpg movie.mpg.jp

ren>nul 2>nul savedata savedata_bak
ren>nul 2>nul ver101.xp3 ver101.xp3.jp
echo �Ѿ��Զ����ݾɰ汾�Ĵ浵��savedata_bak�ļ���
echo ���йٷ�1.01�������򺺻������ݣ����Զ�����Ϊver01.xp3.jp
xcopy>nul 2>nul .\Data098\*.* .\ /e /y
rd>nul 2>nul .\Data098 /s /q
echo ������װ��ɣ�Ϊ�����ظ���װ�����������ű���ɾ���Լ�
pause
del %0
exit