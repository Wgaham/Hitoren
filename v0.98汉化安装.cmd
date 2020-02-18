@echo off
echo 间接之恋V0.98汉化安装程序
echo 本程序将删除旧版本的汉化文件，安装新版本的汉化文件
echo 请按任意键开始安装过程，否则请直接右上角关闭，这样不会进行任何更改
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
echo 已经自动备份旧版本的存档到savedata_bak文件夹
xcopy>nul 2>nul .\Data098\*.* .\ /e /y
rd>nul 2>nul .\Data098 /s /q
echo 汉化安装完成，为避免重复安装，按任意键后脚本会删除自己
pause
del %0