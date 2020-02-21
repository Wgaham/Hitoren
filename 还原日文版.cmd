@echo off
echo 汉化卸载补丁，本补丁将卸载汉化，还原为日文原版，请按任意键开始卸载汉化
echo 否则请右上角关闭，不会进行任何更改
pause

rd>nul 2>nul .\data /s /q
del>nul 2>nul .\汉化感想.txt /s /q
del>nul 2>nul .\movie.mpg /s /q
rd>nul 2>nul .\savedata /s /q
ren>nul 2>nul savedata_bak savedata
echo 已经删除汉化存档，还原原始存档
ren>nul 2>nul data.xp3.jp data.xp3
ren>nul 2>nul movie.mpg.jp movie.mpg
ren>nul 2>nul ver101.xp3.jp ver101.xp3
echo 汉化卸载完成，为了防止重复操作，按任意键后脚本会删除自己
pause
del %0