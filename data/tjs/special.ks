*special
@rclick enabled=true jump=true storage=000.ks target=*startanchor
@image layer=base storage=base_title
@current layer=message4
@er
@nowait
[locate x=475 y=350][button graphic=button_title_cg target=*cg]
[locate x=475 y=420][button graphic=button_title_memory target=*memory]
[locate x=475 y=490][button graphic=button_title_music target=*music]
[locate x=477 y=596][button graphic=button_title_return storage=000.ks target=*startanchor]
@endnowait
@s

*cg
@eval cond="sf.cg_page===void" exp="sf.cg_page=1"
@rclick enabled=true jump=true storage=special.ks target=*special
@freeimage layer=0
@current layer=message4
@er
@image layer=base storage=base_cg
@image layer=base storage=base_cg11 cond="sf.cg_page==11"
@nowait
@locate x=116 y=235
@button graphic=button_ev001_03 target=*ev001_03 cond="sf.cg_page==1"
@button graphic=button_ev110_01 target=*ev110_01 cond="sf.cg_page==2 && sf.ev110_01a"
@button graphic=button_ev116_00 target=*ev116_00 cond="sf.cg_page==3 && sf.ev116_00"
@button graphic=button_ev413_01 target=*ev413_01 cond="sf.cg_page==4 && sf.ev413_01a"
@button graphic=button_ev417_00 target=*ev417_00 cond="sf.cg_page==5 && sf.ev417_00"
@button graphic=button_ev015c00 target=*ev015c00 cond="sf.cg_page==6 && sf.ev015c00b"
@button graphic=button_ev307_00 target=*ev307_00 cond="sf.cg_page==7 && sf.ev307_00"
@button graphic=button_ev311_00 target=*ev311_00 cond="sf.cg_page==8 && sf.ev311_00"
@button graphic=button_ev211_00 target=*ev211_00 cond="sf.cg_page==9 && sf.ev211_00a"
@button graphic=button_ev216_00 target=*ev216_00 cond="sf.cg_page==10 && sf.ev216_00"
@button graphic=button_ev202_00 target=*ev202_00 cond="sf.cg_page==11 && sf.ev202_00"
@locate x=380 y=235
@button graphic=button_ev007_00 target=*ev007_00 cond="sf.cg_page==1"
@button graphic=button_ev111_00 target=*ev111_00 cond="sf.cg_page==2 && sf.ev111_00a"
@button graphic=button_ev117_00 target=*ev117_00 cond="sf.cg_page==3 && sf.ev117_00a"
@button graphic=button_ev414_00 target=*ev414_00 cond="sf.cg_page==4 && sf.ev414_00a"
@button graphic=button_ev417_01 target=*ev417_01 cond="sf.cg_page==5 && sf.ev417_01"
@button graphic=button_ev304_00 target=*ev304_00 cond="sf.cg_page==6 && sf.ev304_00"
@button graphic=button_ev307_01 target=*ev307_01 cond="sf.cg_page==7 && sf.ev307_01"
@button graphic=button_ev001_00 target=*ev001_00 cond="sf.cg_page==8 && sf.ev001_00"
@button graphic=button_ev211_01 target=*ev211_01 cond="sf.cg_page==9 && sf.ev211_01a"
@button graphic=button_ev001_02 target=*ev001_02 cond="sf.cg_page==10"
@button graphic=button_ev205_01 target=*ev205_01 cond="sf.cg_page==11 && sf.ev205_01"
@locate x=644 y=235
@button graphic=button_ev015a00 target=*ev015a00 cond="sf.cg_page==1 && sf.ev015a00a"
@button graphic=button_ev111_01 target=*ev111_01 cond="sf.cg_page==2 && sf.ev111_01b"
@button graphic=button_ev117_01 target=*ev117_01 cond="sf.cg_page==3 && sf.ev117_01a"
@button graphic=button_ev414_01 target=*ev414_01 cond="sf.cg_page==4 && sf.ev414_01a"
@button graphic=button_ev417_02 target=*ev417_02 cond="sf.cg_page==5 && sf.ev417_02a"
@button graphic=button_ev305_00 target=*ev305_00 cond="sf.cg_page==6 && sf.ev305_00a"
@button graphic=button_ev308_00 target=*ev308_00 cond="sf.cg_page==7 && sf.ev308_00"
@button graphic=button_ev015b00 target=*ev015b00 cond="sf.cg_page==8 && sf.ev015b00a"
@button graphic=button_ev211_02 target=*ev211_02 cond="sf.cg_page==9 && sf.ev211_02a"
@button graphic=button_ev001_04 target=*ev001_04 cond="sf.cg_page==10"
@button graphic=button_ev215_00 target=*ev215_00 cond="sf.cg_page==11 && sf.ev215_00"
@locate x=908 y=235
@button graphic=button_ev101_00 target=*ev101_00 cond="sf.cg_page==1 && sf.ev101_00"
@button graphic=button_ev112_00 target=*ev112_00 cond="sf.cg_page==2 && sf.ev112_00"
@button graphic=button_ev117_02 target=*ev117_02 cond="sf.cg_page==3 && sf.ev117_02a"
@button graphic=button_ev414_02 target=*ev414_02 cond="sf.cg_page==4 && sf.ev414_02a"
@button graphic=button_ev418_00 target=*ev418_00 cond="sf.cg_page==5 && sf.ev418_00a"
@button graphic=button_ev305_01 target=*ev305_01 cond="sf.cg_page==6 && sf.ev305_01b"
@button graphic=button_ev308_01 target=*ev308_01 cond="sf.cg_page==7 && sf.ev308_01i"
@button graphic=button_ev205_00 target=*ev205_00 cond="sf.cg_page==8 && sf.ev205_00c"
@button graphic=button_ev213_00 target=*ev213_00 cond="sf.cg_page==9 && sf.ev213_00a"
@button graphic=button_ev002_00 target=*ev002_00 cond="sf.cg_page==10"
@locate x=116 y=428
@button graphic=button_ev103_00 target=*ev103_00 cond="sf.cg_page==1 && sf.ev103_00"
@button graphic=button_ev113_00 target=*ev113_00 cond="sf.cg_page==2 && sf.ev113_00"
@button graphic=button_ev001_01 target=*ev001_01 cond="sf.cg_page==3"
@button graphic=button_ev415_00h target=*ev415_00 cond="sf.cg_page==4 && sf.ev415_00c"
@button graphic=button_ev418_01 target=*ev418_01 cond="sf.cg_page==5 && sf.ev418_01a"
@button graphic=button_ev305_02 target=*ev305_02 cond="sf.cg_page==6 && sf.ev305_02a"
@button graphic=button_ev308_02 target=*ev308_02 cond="sf.cg_page==7 && sf.ev308_02e"
@button graphic=button_ev205_02 target=*ev205_02 cond="sf.cg_page==8 && sf.ev205_02"
@button graphic=button_ev213_01 target=*ev213_01 cond="sf.cg_page==9 && sf.ev213_01a"
@button graphic=button_ev012a00 target=*ev012a00 cond="sf.cg_page==10 && sf.ev012a00"
@locate x=380 y=428
@button graphic=button_ev106_00 target=*ev106_00 cond="sf.cg_page==1 && sf.ev106_00a"
@button graphic=button_ev115_00 target=*ev115_00 cond="sf.cg_page==2 && sf.ev115_00a"
@button graphic=button_ev015d00 target=*ev015d00 cond="sf.cg_page==3 && sf.ev015d00a"
@button graphic=button_ev415_01 target=*ev415_01 cond="sf.cg_page==4 && sf.ev415_01a"
@button graphic=button_ev418_02 target=*ev418_02 cond="sf.cg_page==5 && sf.ev418_02b"
@button graphic=button_ev306_00 target=*ev306_00 cond="sf.cg_page==6 && sf.ev306_00a"
@button graphic=button_ev309_00 target=*ev309_00 cond="sf.cg_page==7 && sf.ev309_00b"
@button graphic=button_ev206_00 target=*ev206_00 cond="sf.cg_page==8 && sf.ev206_00a"
@button graphic=button_ev214_00 target=*ev214_00 cond="sf.cg_page==9 && sf.ev214_00a"
@button graphic=button_ev009a00 target=*ev009a00 cond="sf.cg_page==10 && sf.ev009a00"
@locate x=644 y=428
@button graphic=button_ev110_00a target=*ev110_00a cond="sf.cg_page==1 && sf.ev110_00a"
@button graphic=button_ev115_01 target=*ev115_01 cond="sf.cg_page==2 && sf.ev115_01a"
@button graphic=button_ev412_00 target=*ev412_00 cond="sf.cg_page==3 && sf.ev412_00a"
@button graphic=button_ev416_00 target=*ev416_00 cond="sf.cg_page==4 && sf.ev416_00a"
@button graphic=button_ev418_03 target=*ev418_03 cond="sf.cg_page==5 && sf.ev418_03"
@button graphic=button_ev306_01 target=*ev306_01 cond="sf.cg_page==6 && sf.ev306_01a"
@button graphic=button_ev309_01 target=*ev309_01 cond="sf.cg_page==7 && sf.ev309_01a"
@button graphic=button_ev209_00 target=*ev209_00 cond="sf.cg_page==8 && sf.ev209_00a"
@button graphic=button_ev214_01 target=*ev214_01 cond="sf.cg_page==9 && sf.ev214_01b"
@button graphic=button_ev409_00 target=*ev409_00 cond="sf.cg_page==10 && sf.ev409_00"
@locate x=908 y=428
@button graphic=button_ev110_00d target=*ev110_00d cond="sf.cg_page==1 && sf.ev110_00d"
@button graphic=button_ev115_02 target=*ev115_02 cond="sf.cg_page==2 && sf.ev115_02a"
@button graphic=button_ev412_01 target=*ev412_01 cond="sf.cg_page==3 && sf.ev412_01"
@button graphic=button_ev416_01 target=*ev416_01 cond="sf.cg_page==4 && sf.ev416_01a"
@button graphic=button_ev419_00 target=*ev419_00 cond="sf.cg_page==5 && sf.ev419_00b"
@button graphic=button_ev306_02 target=*ev306_02 cond="sf.cg_page==6 && sf.ev306_02a"
@button graphic=button_ev309_02 target=*ev309_02 cond="sf.cg_page==7 && sf.ev309_02c"
@button graphic=button_ev209_01 target=*ev209_01 cond="sf.cg_page==8 && sf.ev209_01a"
@button graphic=button_ev214_02 target=*ev214_02 cond="sf.cg_page==9 && sf.ev214_02a"
@button graphic=button_ev413_00 target=*ev413_00 cond="sf.cg_page==10 && sf.ev413_00"

[locate x=570  y=82][button graphic=button_cg_page1 cond="sf.cg_page!=1" exp="sf.cg_page=1" storage=special.ks target=*cg]
[locate x=622  y=82][button graphic=button_cg_page2 cond="sf.cg_page!=2" exp="sf.cg_page=2" storage=special.ks target=*cg]
[locate x=674  y=82][button graphic=button_cg_page3 cond="sf.cg_page!=3" exp="sf.cg_page=3" storage=special.ks target=*cg]
[locate x=726  y=82][button graphic=button_cg_page4 cond="sf.cg_page!=4" exp="sf.cg_page=4" storage=special.ks target=*cg]
[locate x=778  y=82][button graphic=button_cg_page5 cond="sf.cg_page!=5" exp="sf.cg_page=5" storage=special.ks target=*cg]
[locate x=830  y=82][button graphic=button_cg_page6 cond="sf.cg_page!=6" exp="sf.cg_page=6" storage=special.ks target=*cg]
[locate x=882  y=82][button graphic=button_cg_page7 cond="sf.cg_page!=7" exp="sf.cg_page=7" storage=special.ks target=*cg]
[locate x=934  y=82][button graphic=button_cg_page8 cond="sf.cg_page!=8" exp="sf.cg_page=8" storage=special.ks target=*cg]
[locate x=986  y=82][button graphic=button_cg_page9 cond="sf.cg_page!=9" exp="sf.cg_page=9" storage=special.ks target=*cg]
[locate x=1038 y=82][button graphic=button_cg_page10 cond="sf.cg_page!=10" exp="sf.cg_page=10" storage=special.ks target=*cg]
[locate x=1090 y=82][button graphic=button_cg_page11 cond="sf.cg_page!=11" exp="sf.cg_page=11" storage=special.ks target=*cg]
[locate x=830 y=648][button graphic=button_cd_return_to_menu storage=special.ks target=*special]
@endnowait
@s

*ev001_03
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_03a][l]
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_03b][l]
@jump special.ks target=*cg
*ev007_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev007_00][l]
@jump special.ks target=*cg
*ev015a00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev015a00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015a00a][l][endif]
[if exp="sf.ev015a00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015a00b][l][endif]
[if exp="sf.ev015a00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015a00c][l][endif]
[if exp="sf.ev015a00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015a00d][l][endif]
[if exp="sf.ev015a00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015a00e][l][endif]
[if exp="sf.ev015a00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015a00f][l][endif]
@jump special.ks target=*cg
*ev101_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev101_00][l]
@jump special.ks target=*cg
*ev103_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev103_00][l]
@jump special.ks target=*cg
*ev106_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev106_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev106_00a][l][endif]
[if exp="sf.ev106_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev106_00b][l][endif]
[if exp="sf.ev106_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev106_00c][l][endif]
[if exp="sf.ev106_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev106_00d][l][endif]
[if exp="sf.ev106_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev106_00e][l][endif]
@jump special.ks target=*cg
*ev110_00a
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev110_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00a][l][endif]
[if exp="sf.ev110_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00b][l][endif]
[if exp="sf.ev110_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00c][l][endif]
@jump special.ks target=*cg
*ev110_00d
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev110_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00d][l][endif]
[if exp="sf.ev110_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00e][l][endif]
[if exp="sf.ev110_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00f][l][endif]
[if exp="sf.ev110_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00g][l][endif]
[if exp="sf.ev110_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00h][l][endif]
[if exp="sf.ev110_00i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00i][l][endif]
[if exp="sf.ev110_00j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00j][l][endif]
[if exp="sf.ev110_00k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00k][l][endif]
[if exp="sf.ev110_00l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00l][l][endif]
[if exp="sf.ev110_00m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00m][l][endif]
[if exp="sf.ev110_00n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00n][l][endif]
[if exp="sf.ev110_00o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00o][l][endif]
[if exp="sf.ev110_00p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00p][l][endif]
[if exp="sf.ev110_00q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00q][l][endif]
[if exp="sf.ev110_00r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_00r][l][endif]
@jump special.ks target=*cg

*ev110_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev110_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01a][l][endif]
[if exp="sf.ev110_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01b][l][endif]
[if exp="sf.ev110_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01c][l][endif]
[if exp="sf.ev110_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01d][l][endif]
[if exp="sf.ev110_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01e][l][endif]
[if exp="sf.ev110_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01f][l][endif]
[if exp="sf.ev110_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01g][l][endif]
[if exp="sf.ev110_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01h][l][endif]
[if exp="sf.ev110_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01i][l][endif]
[if exp="sf.ev110_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01j][l][endif]
[if exp="sf.ev110_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01k][l][endif]
[if exp="sf.ev110_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01l][l][endif]
[if exp="sf.ev110_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev110_01m][l][endif]
@jump special.ks target=*cg
*ev111_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev111_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00a][l][endif]
[if exp="sf.ev111_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00b][l][endif]
[if exp="sf.ev111_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00c][l][endif]
[if exp="sf.ev111_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00d][l][endif]
[if exp="sf.ev111_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00e][l][endif]
[if exp="sf.ev111_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00f][l][endif]
[if exp="sf.ev111_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00g][l][endif]
[if exp="sf.ev111_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00h][l][endif]
[if exp="sf.ev111_00i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00i][l][endif]
[if exp="sf.ev111_00j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00j][l][endif]
[if exp="sf.ev111_00k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00k][l][endif]
[if exp="sf.ev111_00l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00l][l][endif]
[if exp="sf.ev111_00m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00m][l][endif]
[if exp="sf.ev111_00n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00n][l][endif]
[if exp="sf.ev111_00o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00o][l][endif]
[if exp="sf.ev111_00p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00p][l][endif]
[if exp="sf.ev111_00q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00q][l][endif]
[if exp="sf.ev111_00r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00r][l][endif]
[if exp="sf.ev111_00s"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00s][l][endif]
[if exp="sf.ev111_00t"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00t][l][endif]
[if exp="sf.ev111_00u"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00u][l][endif]
[if exp="sf.ev111_00v"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_00v][l][endif]
@jump special.ks target=*cg
*ev111_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev111_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01a][l][endif]
[if exp="sf.ev111_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01b][l][endif]
[if exp="sf.ev111_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01c][l][endif]
[if exp="sf.ev111_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01d][l][endif]
[if exp="sf.ev111_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01e][l][endif]
[if exp="sf.ev111_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01f][l][endif]
[if exp="sf.ev111_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01g][l][endif]
[if exp="sf.ev111_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01h][l][endif]
[if exp="sf.ev111_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01i][l][endif]
[if exp="sf.ev111_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01j][l][endif]
[if exp="sf.ev111_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01k][l][endif]
[if exp="sf.ev111_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01l][l][endif]
[if exp="sf.ev111_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01m][l][endif]
[if exp="sf.ev111_01n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01n][l][endif]
[if exp="sf.ev111_01o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01o][l][endif]
[if exp="sf.ev111_01p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01p][l][endif]
[if exp="sf.ev111_01q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01q][l][endif]
[if exp="sf.ev111_01r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01r][l][endif]
[if exp="sf.ev111_01s"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01s][l][endif]
[if exp="sf.ev111_01t"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01t][l][endif]
[if exp="sf.ev111_01u"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01u][l][endif]
[if exp="sf.ev111_01v"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01v][l][endif]
[if exp="sf.ev111_01w"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01w][l][endif]
[if exp="sf.ev111_01x"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev111_01x][l][endif]
@jump special.ks target=*cg
*ev112_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev112_00][l]
@jump special.ks target=*cg
*ev113_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev113_00][l]
@jump special.ks target=*cg
*ev115_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev115_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00a][l][endif]
[if exp="sf.ev115_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00b][l][endif]
[if exp="sf.ev115_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00c][l][endif]
[if exp="sf.ev115_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00d][l][endif]
[if exp="sf.ev115_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00e][l][endif]
[if exp="sf.ev115_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00f][l][endif]
[if exp="sf.ev115_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_00g][l][endif]
@jump special.ks target=*cg
*ev115_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev115_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01a][l][endif]
[if exp="sf.ev115_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01b][l][endif]
[if exp="sf.ev115_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01c][l][endif]
[if exp="sf.ev115_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01d][l][endif]
[if exp="sf.ev115_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01e][l][endif]
[if exp="sf.ev115_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01f][l][endif]
[if exp="sf.ev115_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01g][l][endif]
[if exp="sf.ev115_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01h][l][endif]
[if exp="sf.ev115_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01i][l][endif]
[if exp="sf.ev115_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01j][l][endif]
[if exp="sf.ev115_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01k][l][endif]
[if exp="sf.ev115_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_01l][l][endif]
@jump special.ks target=*cg
*ev115_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev115_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02a][l][endif]
[if exp="sf.ev115_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02b][l][endif]
[if exp="sf.ev115_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02c][l][endif]
[if exp="sf.ev115_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02d][l][endif]
[if exp="sf.ev115_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02e][l][endif]
[if exp="sf.ev115_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02f][l][endif]
[if exp="sf.ev115_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02g][l][endif]
[if exp="sf.ev115_02h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02h][l][endif]
[if exp="sf.ev115_02i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02i][l][endif]
[if exp="sf.ev115_02j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02j][l][endif]
[if exp="sf.ev115_02k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02k][l][endif]
[if exp="sf.ev115_02l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02l][l][endif]
[if exp="sf.ev115_02m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02m][l][endif]
[if exp="sf.ev115_02n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev115_02n][l][endif]
@jump special.ks target=*cg

*ev116_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev116_00][l]
@jump special.ks target=*cg
*ev117_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev117_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_00a][l][endif]
[if exp="sf.ev117_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_00b][l][endif]
[if exp="sf.ev117_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_00c][l][endif]
[if exp="sf.ev117_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_00d][l][endif]
[if exp="sf.ev117_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_00e][l][endif]
@jump special.ks target=*cg
*ev117_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev117_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_01a][l][endif]
[if exp="sf.ev117_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_01b][l][endif]
[if exp="sf.ev117_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_01d][l][endif]
[if exp="sf.ev117_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_01d][l][endif]
[if exp="sf.ev117_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_01e][l][endif]
[if exp="sf.ev117_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_01f][l][endif]
@jump special.ks target=*cg
*ev117_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev117_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_02a][l][endif]
[if exp="sf.ev117_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_02b][l][endif]
[if exp="sf.ev117_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_02c][l][endif]
[if exp="sf.ev117_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_02d][l][endif]
[if exp="sf.ev117_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev117_02e][l][endif]
@jump special.ks target=*cg
*ev001_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_01a][l]
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_01b][l]
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_01c][l]
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_01d][l]
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_01e][l]
@jump special.ks target=*cg
*ev015d00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev015d00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015d00a][l][endif]
[if exp="sf.ev015d00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015d00b][l][endif]
[if exp="sf.ev015d00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015d00c][l][endif]
[if exp="sf.ev015d00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015d00d][l][endif]
[if exp="sf.ev015d00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015d00e][l][endif]
[if exp="sf.ev015d00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015d00f][l][endif]
@jump special.ks target=*cg
*ev412_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev412_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev412_00a][l][endif]
[if exp="sf.ev412_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev412_00b][l][endif]
@jump special.ks target=*cg
*ev412_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev412_01][l]
@jump special.ks target=*cg

*ev413_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev413_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev413_01a][l][endif]
[if exp="sf.ev413_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev413_01b][l][endif]
[if exp="sf.ev413_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev413_01c][l][endif]
@jump special.ks target=*cg
*ev414_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev414_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00a][l][endif]
[if exp="sf.ev414_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00b][l][endif]
[if exp="sf.ev414_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00c][l][endif]
[if exp="sf.ev414_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00d][l][endif]
[if exp="sf.ev414_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00e][l][endif]
[if exp="sf.ev414_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00f][l][endif]
[if exp="sf.ev414_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00g][l][endif]
[if exp="sf.ev414_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_00h][l][endif]
@jump special.ks target=*cg
*ev414_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev414_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_01a][l][endif]
[if exp="sf.ev414_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_01b][l][endif]
[if exp="sf.ev414_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_01c][l][endif]
@jump special.ks target=*cg
*ev414_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev414_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02a][l][endif]
[if exp="sf.ev414_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02b][l][endif]
[if exp="sf.ev414_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02c][l][endif]
[if exp="sf.ev414_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02d][l][endif]
[if exp="sf.ev414_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02e][l][endif]
[if exp="sf.ev414_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02f][l][endif]
[if exp="sf.ev414_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev414_02g][l][endif]
@jump special.ks target=*cg
*ev415_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev415_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00a][l][endif]
[if exp="sf.ev415_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00b][l][endif]
[if exp="sf.ev415_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00c][l][endif]
[if exp="sf.ev415_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00d][l][endif]
[if exp="sf.ev415_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00e][l][endif]
[if exp="sf.ev415_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00f][l][endif]
[if exp="sf.ev415_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00g][l][endif]
[if exp="sf.ev415_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_00h][l][endif]
@jump special.ks target=*cg
*ev415_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev415_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_01a][l][endif]
[if exp="sf.ev415_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_01b][l][endif]
[if exp="sf.ev415_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_01c][l][endif]
[if exp="sf.ev415_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_01d][l][endif]
[if exp="sf.ev415_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev415_01e][l][endif]
@jump special.ks target=*cg
*ev416_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev416_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_00a][l][endif]
[if exp="sf.ev416_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_00b][l][endif]
[if exp="sf.ev416_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_00c][l][endif]
[if exp="sf.ev416_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_00d][l][endif]
[if exp="sf.ev416_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_00e][l][endif]
@jump special.ks target=*cg
*ev416_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev416_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_01a][l][endif]
[if exp="sf.ev416_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_01b][l][endif]
[if exp="sf.ev416_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_01c][l][endif]
[if exp="sf.ev416_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_01d][l][endif]
[if exp="sf.ev416_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_01e][l][endif]
[if exp="sf.ev416_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev416_01f][l][endif]
@jump special.ks target=*cg

*ev417_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev417_00][l]
@jump special.ks target=*cg
*ev417_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev417_01][l]
@jump special.ks target=*cg
*ev417_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev417_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev417_02a][l][endif]
[if exp="sf.ev417_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev417_02b][l][endif]
@jump special.ks target=*cg
*ev418_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev418_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_00a][l][endif]
[if exp="sf.ev418_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_00b][l][endif]
[if exp="sf.ev418_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_00c][l][endif]
[if exp="sf.ev418_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_00d][l][endif]
[if exp="sf.ev418_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_00e][l][endif]
@jump special.ks target=*cg
*ev418_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev418_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_01a][l][endif]
[if exp="sf.ev418_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_01b][l][endif]
[if exp="sf.ev418_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_01c][l][endif]
@jump special.ks target=*cg
*ev418_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev418_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_02a][l][endif]
[if exp="sf.ev418_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_02b][l][endif]
[if exp="sf.ev418_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_02c][l][endif]
[if exp="sf.ev418_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_02d][l][endif]
[if exp="sf.ev418_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_02e][l][endif]
[if exp="sf.ev418_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_02f][l][endif]
@jump special.ks target=*cg
*ev418_03
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev418_03][l]
@jump special.ks target=*cg
*ev419_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev419_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev419_00a][l][endif]
[if exp="sf.ev419_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev419_00b][l][endif]
@jump special.ks target=*cg

*ev015c00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev015c00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015c00a][l][endif]
[if exp="sf.ev015c00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015c00b][l][endif]
[if exp="sf.ev015c00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015c00c][l][endif]
@jump special.ks target=*cg
*ev304_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev304_00][l]
@jump special.ks target=*cg
*ev305_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev305_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_00a][l][endif]
[if exp="sf.ev305_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_00b][l][endif]
@jump special.ks target=*cg
*ev305_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev305_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01a][l][endif]
[if exp="sf.ev305_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01b][l][endif]
[if exp="sf.ev305_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01c][l][endif]
[if exp="sf.ev305_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01d][l][endif]
[if exp="sf.ev305_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01e][l][endif]
[if exp="sf.ev305_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01f][l][endif]
[if exp="sf.ev305_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01g][l][endif]
[if exp="sf.ev305_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01h][l][endif]
[if exp="sf.ev305_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01i][l][endif]
[if exp="sf.ev305_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01j][l][endif]
[if exp="sf.ev305_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01k][l][endif]
[if exp="sf.ev305_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01l][l][endif]
[if exp="sf.ev305_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01m][l][endif]
[if exp="sf.ev305_01n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01n][l][endif]
[if exp="sf.ev305_01o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01o][l][endif]
[if exp="sf.ev305_01p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01p][l][endif]
[if exp="sf.ev305_01q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01q][l][endif]
[if exp="sf.ev305_01r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01r][l][endif]
[if exp="sf.ev305_01s"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01s][l][endif]
[if exp="sf.ev305_01t"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01t][l][endif]
[if exp="sf.ev305_01u"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01u][l][endif]
[if exp="sf.ev305_01v"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_01v][l][endif]
@jump special.ks target=*cg
*ev305_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev305_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02a][l][endif]
[if exp="sf.ev305_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02b][l][endif]
[if exp="sf.ev305_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02c][l][endif]
[if exp="sf.ev305_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02d][l][endif]
[if exp="sf.ev305_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02e][l][endif]
[if exp="sf.ev305_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02f][l][endif]
[if exp="sf.ev305_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02g][l][endif]
[if exp="sf.ev305_02h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02h][l][endif]
[if exp="sf.ev305_02i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02i][l][endif]
[if exp="sf.ev305_02j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev305_02j][l][endif]
@jump special.ks target=*cg
*ev306_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev306_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00a][l][endif]
[if exp="sf.ev306_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00b][l][endif]
[if exp="sf.ev306_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00c][l][endif]
[if exp="sf.ev306_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00d][l][endif]
[if exp="sf.ev306_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00e][l][endif]
[if exp="sf.ev306_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00f][l][endif]
[if exp="sf.ev306_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00g][l][endif]
[if exp="sf.ev306_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00h][l][endif]
[if exp="sf.ev306_00i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00i][l][endif]
[if exp="sf.ev306_00j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00j][l][endif]
[if exp="sf.ev306_00k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00k][l][endif]
[if exp="sf.ev306_00l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00l][l][endif]
[if exp="sf.ev306_00m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_00m][l][endif]
@jump special.ks target=*cg
*ev306_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev306_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01a][l][endif]
[if exp="sf.ev306_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01b][l][endif]
[if exp="sf.ev306_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01c][l][endif]
[if exp="sf.ev306_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01d][l][endif]
[if exp="sf.ev306_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01e][l][endif]
[if exp="sf.ev306_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01f][l][endif]
[if exp="sf.ev306_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01g][l][endif]
[if exp="sf.ev306_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01h][l][endif]
[if exp="sf.ev306_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01i][l][endif]
[if exp="sf.ev306_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01j][l][endif]
[if exp="sf.ev306_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01k][l][endif]
[if exp="sf.ev306_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01l][l][endif]
[if exp="sf.ev306_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01m][l][endif]
[if exp="sf.ev306_01n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01n][l][endif]
[if exp="sf.ev306_01o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01o][l][endif]
[if exp="sf.ev306_01p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01p][l][endif]
[if exp="sf.ev306_01q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01q][l][endif]
[if exp="sf.ev306_01r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_01r][l][endif]
@jump special.ks target=*cg
*ev306_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev306_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02a][l][endif]
[if exp="sf.ev306_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02b][l][endif]
[if exp="sf.ev306_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02c][l][endif]
[if exp="sf.ev306_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02d][l][endif]
[if exp="sf.ev306_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02e][l][endif]
[if exp="sf.ev306_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02f][l][endif]
[if exp="sf.ev306_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02g][l][endif]
[if exp="sf.ev306_02h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02h][l][endif]
[if exp="sf.ev306_02i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev306_02i][l][endif]
@jump special.ks target=*cg

*ev307_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev307_00][l]
@jump special.ks target=*cg
*ev307_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev307_01][l]
@jump special.ks target=*cg
*ev308_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_00][l]
@jump special.ks target=*cg
*ev308_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev308_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01a][l][endif]
[if exp="sf.ev308_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01b][l][endif]
[if exp="sf.ev308_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01c][l][endif]
[if exp="sf.ev308_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01d][l][endif]
[if exp="sf.ev308_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01e][l][endif]
[if exp="sf.ev308_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01f][l][endif]
[if exp="sf.ev308_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01g][l][endif]
[if exp="sf.ev308_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01h][l][endif]
[if exp="sf.ev308_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01i][l][endif]
[if exp="sf.ev308_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01j][l][endif]
[if exp="sf.ev308_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01k][l][endif]
[if exp="sf.ev308_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01l][l][endif]
[if exp="sf.ev308_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01m][l][endif]
[if exp="sf.ev308_01n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01n][l][endif]
[if exp="sf.ev308_01o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01o][l][endif]
[if exp="sf.ev308_01p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01p][l][endif]
[if exp="sf.ev308_01q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01q][l][endif]
[if exp="sf.ev308_01r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01r][l][endif]
[if exp="sf.ev308_01s"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01s][l][endif]
[if exp="sf.ev308_01t"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01t][l][endif]
[if exp="sf.ev308_01u"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01u][l][endif]
[if exp="sf.ev308_01v"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01v][l][endif]
[if exp="sf.ev308_01w"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01w][l][endif]
[if exp="sf.ev308_01x"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01x][l][endif]
[if exp="sf.ev308_01y"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01y][l][endif]
[if exp="sf.ev308_01z1"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01z1][l][endif]
[if exp="sf.ev308_01z2"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01z2][l][endif]
[if exp="sf.ev308_01z3"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_01z3][l][endif]
@jump special.ks target=*cg
*ev308_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev308_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02a][l][endif]
[if exp="sf.ev308_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02b][l][endif]
[if exp="sf.ev308_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02c][l][endif]
[if exp="sf.ev308_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02d][l][endif]
[if exp="sf.ev308_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02e][l][endif]
[if exp="sf.ev308_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02f][l][endif]
[if exp="sf.ev308_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02g][l][endif]
[if exp="sf.ev308_02h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02h][l][endif]
[if exp="sf.ev308_02i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02i][l][endif]
[if exp="sf.ev308_02j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev308_02j][l][endif]
@jump special.ks target=*cg
*ev309_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev309_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_00a][l][endif]
[if exp="sf.ev309_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_00b][l][endif]
@jump special.ks target=*cg
*ev309_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev309_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01a][l][endif]
[if exp="sf.ev309_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01b][l][endif]
[if exp="sf.ev309_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01c][l][endif]
[if exp="sf.ev309_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01d][l][endif]
[if exp="sf.ev309_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01e][l][endif]
[if exp="sf.ev309_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01f][l][endif]
[if exp="sf.ev309_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01g][l][endif]
[if exp="sf.ev309_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01h][l][endif]
[if exp="sf.ev309_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01i][l][endif]
[if exp="sf.ev309_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01j][l][endif]
[if exp="sf.ev309_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01k][l][endif]
[if exp="sf.ev309_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01l][l][endif]
[if exp="sf.ev309_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01m][l][endif]
[if exp="sf.ev309_01n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01n][l][endif]
[if exp="sf.ev309_01o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01o][l][endif]
[if exp="sf.ev309_01p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01p][l][endif]
[if exp="sf.ev309_01q"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01q][l][endif]
[if exp="sf.ev309_01r"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_01r][l][endif]
@jump special.ks target=*cg
*ev309_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev309_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02a][l][endif]
[if exp="sf.ev309_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02b][l][endif]
[if exp="sf.ev309_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02c][l][endif]
[if exp="sf.ev309_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02d][l][endif]
[if exp="sf.ev309_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02e][l][endif]
[if exp="sf.ev309_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02f][l][endif]
[if exp="sf.ev309_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02g][l][endif]
[if exp="sf.ev309_02h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev309_02h][l][endif]
@jump special.ks target=*cg

*ev311_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev311_00"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev311_00][l][endif]
@jump special.ks target=*cg
*ev001_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_00][l]
@jump special.ks target=*cg
*ev015b00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev015b00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015b00a][l][endif]
[if exp="sf.ev015b00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015b00b][l][endif]
[if exp="sf.ev015b00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015b00c][l][endif]
[if exp="sf.ev015b00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015b00d][l][endif]
[if exp="sf.ev015b00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015b00e][l][endif]
[if exp="sf.ev015b00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev015b00f][l][endif]
@jump special.ks target=*cg
*ev205_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev205_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_00a][l][endif]
[if exp="sf.ev205_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_00b][l][endif]
[if exp="sf.ev205_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_00c][l][endif]
[if exp="sf.ev205_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_00d][l][endif]
[if exp="sf.ev205_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_00e][l][endif]
[if exp="sf.ev205_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_00f][l][endif]
@jump special.ks target=*cg
*ev205_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_02][l]
@jump special.ks target=*cg
*ev206_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev206_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev206_00a][l][endif]
[if exp="sf.ev206_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev206_00b][l][endif]
@jump special.ks target=*cg
*ev209_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev209_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_00a][l][endif]
[if exp="sf.ev209_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_00b][l][endif]
@jump special.ks target=*cg
*ev209_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev209_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01a][l][endif]
[if exp="sf.ev209_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01b][l][endif]
[if exp="sf.ev209_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01c][l][endif]
[if exp="sf.ev209_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01d][l][endif]
[if exp="sf.ev209_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01e][l][endif]
[if exp="sf.ev209_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01f][l][endif]
[if exp="sf.ev209_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01g][l][endif]
[if exp="sf.ev209_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01h][l][endif]
[if exp="sf.ev209_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01i][l][endif]
[if exp="sf.ev209_01j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01j][l][endif]
[if exp="sf.ev209_01k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01k][l][endif]
[if exp="sf.ev209_01l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01l][l][endif]
[if exp="sf.ev209_01m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01m][l][endif]
[if exp="sf.ev209_01n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01n][l][endif]
[if exp="sf.ev209_01o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01o][l][endif]
[if exp="sf.ev209_01p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev209_01p][l][endif]
@jump special.ks target=*cg

*ev211_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev211_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00a][l][endif]
[if exp="sf.ev211_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00b][l][endif]
[if exp="sf.ev211_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00c][l][endif]
[if exp="sf.ev211_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00d][l][endif]
[if exp="sf.ev211_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00e][l][endif]
[if exp="sf.ev211_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00f][l][endif]
[if exp="sf.ev211_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00g][l][endif]
[if exp="sf.ev211_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00h][l][endif]
[if exp="sf.ev211_00i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00i][l][endif]
[if exp="sf.ev211_00j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00j][l][endif]
[if exp="sf.ev211_00k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00k][l][endif]
[if exp="sf.ev211_00l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00l][l][endif]
[if exp="sf.ev211_00m"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00m][l][endif]
[if exp="sf.ev211_00n"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00n][l][endif]
[if exp="sf.ev211_00o"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00o][l][endif]
[if exp="sf.ev211_00p"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_00p][l][endif]
@jump special.ks target=*cg
*ev211_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev211_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01a][l][endif]
[if exp="sf.ev211_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01b][l][endif]
[if exp="sf.ev211_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01c][l][endif]
[if exp="sf.ev211_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01d][l][endif]
[if exp="sf.ev211_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01e][l][endif]
[if exp="sf.ev211_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01f][l][endif]
[if exp="sf.ev211_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01g][l][endif]
[if exp="sf.ev211_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01h][l][endif]
[if exp="sf.ev211_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_01i][l][endif]
@jump special.ks target=*cg
*ev211_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev211_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02a][l][endif]
[if exp="sf.ev211_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02b][l][endif]
[if exp="sf.ev211_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02c][l][endif]
[if exp="sf.ev211_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02d][l][endif]
[if exp="sf.ev211_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02e][l][endif]
[if exp="sf.ev211_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02f][l][endif]
[if exp="sf.ev211_02g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02g][l][endif]
[if exp="sf.ev211_02h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02h][l][endif]
[if exp="sf.ev211_02i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02i][l][endif]
[if exp="sf.ev211_02j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev211_02j][l][endif]
@jump special.ks target=*cg
*ev213_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev213_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00a][l][endif]
[if exp="sf.ev213_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00b][l][endif]
[if exp="sf.ev213_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00c][l][endif]
[if exp="sf.ev213_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00d][l][endif]
[if exp="sf.ev213_00e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00e][l][endif]
[if exp="sf.ev213_00f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00f][l][endif]
[if exp="sf.ev213_00g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00g][l][endif]
[if exp="sf.ev213_00h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00h][l][endif]
[if exp="sf.ev213_00i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00i][l][endif]
[if exp="sf.ev213_00j"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00j][l][endif]
[if exp="sf.ev213_00k"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00k][l][endif]
[if exp="sf.ev213_00l"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_00l][l][endif]
@jump special.ks target=*cg
*ev213_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev213_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01a][l][endif]
[if exp="sf.ev213_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01b][l][endif]
[if exp="sf.ev213_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01c][l][endif]
[if exp="sf.ev213_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01d][l][endif]
[if exp="sf.ev213_01e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01e][l][endif]
[if exp="sf.ev213_01f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01f][l][endif]
[if exp="sf.ev213_01g"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01g][l][endif]
[if exp="sf.ev213_01h"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01h][l][endif]
[if exp="sf.ev213_01i"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev213_01i][l][endif]
@jump special.ks target=*cg
*ev214_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev214_00a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_00a][l][endif]
[if exp="sf.ev214_00b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_00b][l][endif]
[if exp="sf.ev214_00c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_00c][l][endif]
[if exp="sf.ev214_00d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_00d][l][endif]
@jump special.ks target=*cg
*ev214_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev214_01a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_01a][l][endif]
[if exp="sf.ev214_01b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_01b][l][endif]
[if exp="sf.ev214_01c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_01c][l][endif]
[if exp="sf.ev214_01d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_01d][l][endif]
@jump special.ks target=*cg
*ev214_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[if exp="sf.ev214_02a"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_02a][l][endif]
[if exp="sf.ev214_02b"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_02b][l][endif]
[if exp="sf.ev214_02c"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_02c][l][endif]
[if exp="sf.ev214_02d"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_02d][l][endif]
[if exp="sf.ev214_02e"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_02e][l][endif]
[if exp="sf.ev214_02f"][image layer=0 index=2000001 visible=true left=0 top=0 storage=ev214_02f][l][endif]
@jump special.ks target=*cg

*ev216_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev216_00][l]
@jump special.ks target=*cg
*ev001_02
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_02][l]
@jump special.ks target=*cg
*ev001_04
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev001_04][l]
@jump special.ks target=*cg
*ev002_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev002_00][l]
@jump special.ks target=*cg
*ev012a00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev012a00][l]
@jump special.ks target=*cg
*ev009a00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev009a00][l]
@jump special.ks target=*cg
*ev409_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev409_00][l]
@jump special.ks target=*cg
*ev413_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev413_00][l]
@jump special.ks target=*cg

*ev202_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev202_00][l]
@jump special.ks target=*cg
*ev205_01
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev205_01][l]
@jump special.ks target=*cg
*ev215_00
@rclick enabled=true jump=true storage=special.ks target=*cg
[image layer=0 index=2000001 visible=true left=0 top=0 storage=ev215_00][l]
@jump special.ks target=*cg


*memory
@fadeoutse buf=2 time=1000
@fadeoutse buf=3 time=1000
@fadeoutse buf=4 time=1000
@fadeoutse buf=5 time=1000
@playbgm cond="f.SceneReplay==1" storage=bgm90
@eval exp="f.SceneReplay=0"
@eval exp="vf = %[]"
;@eval exp="f.window=0"
@history enabled=false output=false
@rclick enabled=true jump=true storage=special.ks target=*special
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@layopt layer=message4 page=fore visible=true
@sysbtopt forevisible=false
@image layer=base page=fore visible=true storage=base_memory
@current layer=message4
@er
@jump cond="sf.memory_page==1" storage=special.ks target=*memory1
@jump cond="sf.memory_page==2" storage=special.ks target=*memory2

*memory1
@eval exp="sf.memory_page=1"
@nowait
[locate x=116 y=235][button graphic=button_ev110_00 storage=special.ks target=*m1 cond="sf.m1"]
[locate x=380 y=235][button graphic=button_ev111_00 storage=special.ks target=*m2 cond="sf.m2"]
[locate x=644 y=235][button graphic=button_ev115_00 storage=special.ks target=*m3 cond="sf.m3"]
[locate x=908 y=235][button graphic=button_ev117_00 storage=special.ks target=*m4 cond="sf.m4"]
[locate x=116 y=428][button graphic=button_ev414_00 storage=special.ks target=*m5 cond="sf.m5"]
[locate x=380 y=428][button graphic=button_ev415_00a storage=special.ks target=*m6 cond="sf.m6"]
[locate x=644 y=428][button graphic=button_ev416_00 storage=special.ks target=*m7 cond="sf.m7"]
[locate x=908 y=428][button graphic=button_ev418_00 storage=special.ks target=*m8 cond="sf.m8"]
[locate x=847 y=82 ][button graphic=button_memory_page2 exp="sf.memory_page=2" storage=special.ks target=*memory]
[locate x=830 y=648][button graphic=button_memory_return_to_menu storage=special.ks target=*special]
@endnowait
@s

*memory2
@eval exp="sf.memory_page=2"
@nowait
[locate x=116 y=235][button graphic=button_ev305_01 storage=special.ks target=*m9  cond="sf.m9"]
[locate x=380 y=235][button graphic=button_ev306_00 storage=special.ks target=*m10 cond="sf.m10"]
[locate x=644 y=235][button graphic=button_ev308_01 storage=special.ks target=*m11 cond="sf.m11"]
[locate x=908 y=235][button graphic=button_ev309_01 storage=special.ks target=*m12 cond="sf.m12"]
[locate x=116 y=428][button graphic=button_ev209_00 storage=special.ks target=*m13 cond="sf.m13"]
[locate x=380 y=428][button graphic=button_ev211_00 storage=special.ks target=*m14 cond="sf.m14"]
[locate x=644 y=428][button graphic=button_ev213_00 storage=special.ks target=*m15 cond="sf.m15"]
[locate x=908 y=428][button graphic=button_ev214_00 storage=special.ks target=*m16 cond="sf.m16"]
[locate x=795 y=82 ][button graphic=button_memory_page1 exp="sf.memory_page=1" storage=special.ks target=*memory]
[locate x=830 y=648][button graphic=button_memory_return_to_menu storage=special.ks target=*special]
@endnowait
@s

*m1
[memory][eval exp="vf.aori=95"][jump storage=110.ks target=*m1]
*m2
[memory][eval exp="vf.aori=196"][jump storage=111.ks target=*m2]
*m3
[memory][eval exp="vf.aori=52"][jump storage=115.ks target=*m3]
*m4
[memory][eval exp="vf.aori=29"][jump storage=117.ks target=*m4]
*m5
[memory][eval exp="vf.natume=84"][jump storage=414.ks target=*m5]
*m6
[memory][eval exp="vf.natume=75"][jump storage=415.ks target=*m6]
*m7
[memory][eval exp="vf.natume=32"][jump storage=416.ks target=*m7]
*m8
[memory][eval exp="vf.natume=50,vf.megu=21"][jump storage=418.ks target=*m8]
*m9
[memory][eval exp="vf.risa=105"][jump storage=305.ks target=*m9]
*m10
[memory][eval exp="vf.risa=53"][jump storage=306.ks target=*m10]
*m11
[memory][eval exp="vf.risa=66"][jump storage=308.ks target=*m11]
*m12
[memory][eval exp="vf.risa=157"][jump storage=309.ks target=*m12]
*m13
[memory][eval exp="vf.sakura=25"][jump storage=209.ks target=*m13]
*m14
[memory][eval exp="vf.sakura=16"][jump storage=211.ks target=*m14]
*m15
[memory][eval exp="vf.sakura=15"][jump storage=213.ks target=*m15]
*m16
[memory][eval exp="vf.sakura=32"][jump storage=214.ks target=*m16]


*music
@rclick enabled=true jump=true storage=special.ks target=*special
@current layer=message4
@jump storage=special.ks target=*music1 cond="sf.music_page==1"
@jump storage=special.ks target=*music2 cond="sf.music_page==2"
@jump storage=special.ks target=*music3 cond="sf.music_page==3"

*music1
@eval exp="sf.music_page=1"
@image layer=base storage=base_music1
@er
@nowait
[if exp="tf.bgm!='bgm30'"][locate x=111 y=287][button graphic=button_bgm30 target=*bgm30][endif]
[if exp="tf.bgm!='bgm31'"][locate x=111 y=357][button graphic=button_bgm31 target=*bgm31][endif]
[if exp="tf.bgm!='bgm33'"][locate x=111 y=428][button graphic=button_bgm33 target=*bgm33][endif]
[if exp="tf.bgm!='bgm32'"][locate x=111 y=498][button graphic=button_bgm32 target=*bgm32][endif]
[if exp="tf.bgm!='bgm01'"][locate x=111 y=567][button graphic=button_bgm01 target=*bgm01][endif]
[if exp="tf.bgm!='bgm02'"][locate x=642 y=287][button graphic=button_bgm02 target=*bgm02][endif]
[if exp="tf.bgm!='bgm03'"][locate x=642 y=357][button graphic=button_bgm03 target=*bgm03][endif]
[if exp="tf.bgm!='bgm04'"][locate x=642 y=428][button graphic=button_bgm04 target=*bgm04][endif]
[if exp="tf.bgm!='bgm05'"][locate x=642 y=498][button graphic=button_bgm05 target=*bgm05][endif]
[if exp="tf.bgm!='bgm06'"][locate x=642 y=567][button graphic=button_bgm06 target=*bgm06][endif]
[locate x=847 y=82][button graphic=button_music_page2 storage=special.ks target=*music2]
[locate x=899 y=82][button graphic=button_music_page3 storage=special.ks target=*music3]
[locate x=830 y=648][button graphic=button_music_return_to_menu storage=special.ks target=*special]
@endnowait
@s

*bgm30
[playbgm storage=bgm30][eval exp="tf.bgm='bgm30'"][jump target=*music1]
*bgm31
[playbgm storage=bgm31][eval exp="tf.bgm='bgm31'"][jump target=*music1]
*bgm33
[playbgm storage=bgm33][eval exp="tf.bgm='bgm33'"][jump target=*music1]
*bgm32
[playbgm storage=bgm32][eval exp="tf.bgm='bgm32'"][jump target=*music1]
*bgm01
[playbgm storage=bgm01][eval exp="tf.bgm='bgm01'"][jump target=*music1]
*bgm02
[playbgm storage=bgm02][eval exp="tf.bgm='bgm02'"][jump target=*music1]
*bgm03
[playbgm storage=bgm03][eval exp="tf.bgm='bgm03'"][jump target=*music1]
*bgm04
[playbgm storage=bgm04][eval exp="tf.bgm='bgm04'"][jump target=*music1]
*bgm05
[playbgm storage=bgm05][eval exp="tf.bgm='bgm05'"][jump target=*music1]
*bgm06
[playbgm storage=bgm06][eval exp="tf.bgm='bgm06'"][jump target=*music1]

*music2
@eval exp="sf.music_page=2"
@image layer=base storage=base_music2
@er
@nowait
[if exp="tf.bgm!='bgm07'"][locate x=111 y=287][button graphic=button_bgm07 target=*bgm07][endif]
[if exp="tf.bgm!='bgm19'"][locate x=111 y=357][button graphic=button_bgm19 target=*bgm19][endif]
[if exp="tf.bgm!='bgm08'"][locate x=111 y=428][button graphic=button_bgm08 target=*bgm08][endif]
[if exp="tf.bgm!='bgm09'"][locate x=111 y=498][button graphic=button_bgm09 target=*bgm09][endif]
[if exp="tf.bgm!='bgm10'"][locate x=111 y=567][button graphic=button_bgm10 target=*bgm10][endif]
[if exp="tf.bgm!='bgm15'"][locate x=642 y=287][button graphic=button_bgm15 target=*bgm15][endif]
[if exp="tf.bgm!='bgm16'"][locate x=642 y=357][button graphic=button_bgm16 target=*bgm16][endif]
[if exp="tf.bgm!='bgm17'"][locate x=642 y=428][button graphic=button_bgm17 target=*bgm17][endif]
[if exp="tf.bgm!='bgm18'"][locate x=642 y=498][button graphic=button_bgm18 target=*bgm18][endif]
[if exp="tf.bgm!='bgm14'"][locate x=642 y=567][button graphic=button_bgm14 target=*bgm14][endif]
[locate x=795 y=82][button graphic=button_music_page1 storage=special.ks target=*music1]
[locate x=899 y=82][button graphic=button_music_page3 storage=special.ks target=*music3]
[locate x=830 y=648][button graphic=button_music_return_to_menu storage=special.ks target=*special]
@endnowait
@s

*bgm07
[playbgm storage=bgm07][eval exp="tf.bgm='bgm07'"][jump target=*music2]
*bgm19
[playbgm storage=bgm19][eval exp="tf.bgm='bgm19'"][jump target=*music2]
*bgm08
[playbgm storage=bgm08][eval exp="tf.bgm='bgm08'"][jump target=*music2]
*bgm09
[playbgm storage=bgm09][eval exp="tf.bgm='bgm09'"][jump target=*music2]
*bgm10
[playbgm storage=bgm10][eval exp="tf.bgm='bgm10'"][jump target=*music2]
*bgm15
[playbgm storage=bgm15][eval exp="tf.bgm='bgm15'"][jump target=*music2]
*bgm16
[playbgm storage=bgm16][eval exp="tf.bgm='bgm16'"][jump target=*music2]
*bgm17
[playbgm storage=bgm17][eval exp="tf.bgm='bgm17'"][jump target=*music2]
*bgm18
[playbgm storage=bgm18][eval exp="tf.bgm='bgm18'"][jump target=*music2]
*bgm14
[playbgm storage=bgm14][eval exp="tf.bgm='bgm14'"][jump target=*music2]

*music3
@eval exp="sf.music_page=3"
@image layer=base storage=base_music3
@er
@nowait
[if exp="tf.bgm!='bgm11'"][locate x=111 y=287][button graphic=button_bgm11 target=*bgm11][endif]
[if exp="tf.bgm!='bgm20'"][locate x=111 y=357][button graphic=button_bgm20 target=*bgm20][endif]
[if exp="tf.bgm!='bgm12'"][locate x=111 y=428][button graphic=button_bgm12 target=*bgm12][endif]
[if exp="tf.bgm!='bgm13'"][locate x=111 y=498][button graphic=button_bgm13 target=*bgm13][endif]
[if exp="tf.bgm!='bgm90'"][locate x=111 y=567][button graphic=button_bgm90 target=*bgm90][endif]
[if exp="tf.bgm!='bgm91'"][locate x=642 y=287][button graphic=button_bgm91 target=*bgm91][endif]
[if exp="tf.bgm!='bgm92'"][locate x=642 y=357][button graphic=button_bgm92 target=*bgm92][endif]
[locate x=795 y=82][button graphic=button_music_page1 storage=special.ks target=*music1]
[locate x=847 y=82][button graphic=button_music_page2 storage=special.ks target=*music2]
[locate x=830 y=648][button graphic=button_music_return_to_menu storage=special.ks target=*special]
@endnowait
@s

*bgm11
[playbgm storage=bgm11][eval exp="tf.bgm='bgm11'"][jump target=*music3]
*bgm20
[playbgm storage=bgm20][eval exp="tf.bgm='bgm20'"][jump target=*music3]
*bgm12
[playbgm storage=bgm12][eval exp="tf.bgm='bgm12'"][jump target=*music3]
*bgm13
[playbgm storage=bgm13][eval exp="tf.bgm='bgm13'"][jump target=*music3]
*bgm90
[playbgm storage=bgm90][eval exp="tf.bgm='bgm90'"][jump target=*music3]
*bgm91
[playbgm storage=bgm91][eval exp="tf.bgm='bgm91'"][jump target=*music3]
*bgm92
[playbgm storage=bgm92][eval exp="tf.bgm='bgm92'"][jump target=*music3]
