@echo off
echo ����ж�ز�������������ж�غ�������ԭΪ����ԭ�棬�밴�������ʼж�غ���
echo ���������Ͻǹرգ���������κθ���
pause

rd>nul 2>nul .\data /s /q
del>nul 2>nul .\��������.txt /s /q
del>nul 2>nul .\movie.mpg /s /q
rd>nul 2>nul .\savedata /s /q
ren>nul 2>nul savedata_bak savedata
echo �Ѿ�ɾ�������浵����ԭԭʼ�浵
ren>nul 2>nul data.xp3.jp data.xp3
ren>nul 2>nul movie.mpg.jp movie.mpg
ren>nul 2>nul ver101.xp3.jp ver101.xp3
echo ����ж����ɣ�Ϊ�˷�ֹ�ظ����������������ű���ɾ���Լ�
pause
del %0