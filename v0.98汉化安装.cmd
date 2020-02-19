@echo off
echo 间接之恋V0.98汉化安装程序
echo 本程序将删除旧版本的汉化文件，安装新版本的汉化文件
echo 请注意将本脚本和Data098文件夹放到游戏根目录，即和hitoren文件在同一目录下
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
ren>nul 2>nul ver101.xp3 ver101.xp3.jp
echo 已经自动备份旧版本的存档到savedata_bak文件夹
echo 如有官方1.01补丁，因汉化不兼容，将自动改名为ver01.xp3.jp
xcopy>nul 2>nul .\Data098\*.* .\ /e /y
rd>nul 2>nul .\Data098 /s /q
echo 汉化安装完成，为避免重复安装，按任意键后脚本会删除自己
pause
del %0
exit