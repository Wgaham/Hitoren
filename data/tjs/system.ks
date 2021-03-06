*system
@eval exp="stopAllSounds()"
@stoptrans
@tempsave
@locklink
@sysbtopt forevisible=false
@rclick enabled=true jump=true storage=system.ks target=*return
@jump cond="sf.systempage==1" storage=system.ks target=*system1a

*system0a
@eval exp="sf.systempage=0"
@eval exp="tf.stop=0"
@position layer=message5 page=fore visible=true frame=base_system0
@position layer=message6 page=fore visible=true marginl=0 margint=0 marginr=0 marginb=0 left=471 top=516 width=718 height=126 frame=window_sample
@layopt   layer=message6 page=fore opacity="&sf.opacity"
@current  layer=message5
@er

@iscript
tf.slider_opacity = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_opacity) {
	.left = 115;
	.top  = 290;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 255;
	.position = (255 - sf.opacity);
	.onChange = function(pos) {
		sf.opacity = kag.fore.messages[6].opacity = (255 - pos);
	};
}

tf.slider_speed = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_speed) {
	.left = 483;
	.top  = 382;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 80;
//■	.position = (80 - kag.chSpeed);
	.position = (80 - kag.userChSpeed);
	.onChange = function(pos) {
//■		kag.setDelay(%["speed"=> (80 - pos)]);
//■		kag.chSpeed = (80 - pos);//■■
		kag.userChSpeed = (80 - pos);//■■
		kag.setUserSpeed();//■■
		speedTest(kag.userChSpeed);
//■		speedTest(kag.chSpeed);
	};
}

tf.slider_autospeed = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_autospeed) {
	.left = 415;
	.top  = 454;
	.width  = 382;
	.height = 29;
	.visible = true;
	.min = 1000;
	.max = 5000;
	.position = (6000 - kag.autoModePageWait);
	.onChange = function(pos) {
		kag.autoModePageWait = kag.autoModeLineWait = (6000 - pos);
	};
}
@endscript

*system0b
@current layer=message5
@er

;@slider_erase
;@slider_init layer=message5
;@slider name=opcity page=fore visible=true left=120 top=300 width=300 height=24 val="tf.opcity" min=0 max=255
;@slider name=text_speed page=fore visible=true left=120 top=600 width=300 height=24 val=tf.text_speed min=0 max=50
;@image layer=1 index=1005999 page=fore visible=true storage=window_sample opacity="&tf.opcity" left=471 top=516

;@eval exp="sf.face='微软雅黑'"
;@eval exp="sf.bold=0"
;@eval exp="sf.shadowlevel=4000"

@nowait
[locate x=541 y=83][button graphic=button_system_go_to_page1 storage=system.ks target=*system0z]
[locate x=938 y=83][button graphic=button_system_default exp="setDefaultWithAsk('system.ks', '*system0y')"]

[locate x=109 y=207][button cond="kag.fullScreened"  exp="kag.windowedMenuItem.click()"   graphic=button_system_size_window storage=system.ks target=*system0b]
[locate x=278 y=207][button cond="!kag.fullScreened" exp="kag.fullScreenMenuItem.click()" graphic=button_system_size_full   storage=system.ks target=*system0b]

[locate x=109 y=355][button cond="!sf.effect" exp="sf.effect=1" graphic=button_system_on  storage=system.ks target=*system0b]
[locate x=278 y=355][button cond="sf.effect"  exp="sf.effect=0" graphic=button_system_off storage=system.ks target=*system0b]

[locate x=109 y=449][button cond="!rc.skip" exp="rc.skip=1" graphic=button_system_skip_kidoku storage=system.ks target=*system0b]
[locate x=278 y=449][button cond="rc.skip"  exp="rc.skip=0" graphic=button_system_skip_all    storage=system.ks target=*system0b]

[locate x=109 y=522][button cond="!sf.continue_skip" exp="sf.continue_skip=1" graphic=button_system_on  storage=system.ks target=*system0b]
[locate x=278 y=522][button cond="sf.continue_skip"  exp="sf.continue_skip=0" graphic=button_system_off storage=system.ks target=*system0b]

[locate x=109 y=599][button cond="!sf.continue_auto" exp="sf.continue_auto=1" graphic=button_system_on  storage=system.ks target=*system0b]
[locate x=278 y=599][button cond="sf.continue_auto"  exp="sf.continue_auto=0" graphic=button_system_off storage=system.ks target=*system0b]


[locate x=475 y=207][button cond="sf.face!='微软雅黑'" exp="sf.face='微软雅黑',tf.stop=0" graphic=button_system_gothic   storage=system.ks target=*system0b]
[locate x=644 y=207][button cond="sf.face=='微软雅黑'" exp="sf.face='宋体',tf.stop=0"     graphic=button_system_minchyou storage=system.ks target=*system0b]

[locate x=500 y=279][button cond="sf.bold!=1" exp="sf.bold=1,tf.stop=0" graphic=button_system_bold0 storage=system.ks target=*system0b]
[locate x=500 y=279][button cond="sf.bold==1" exp="sf.bold=0,tf.stop=0" graphic=button_system_bold1 storage=system.ks target=*system0b]

[locate x=600 y=279][button cond="sf.edge!=1" exp="sf.edge=1,sf.shadow=0,tf.stop=0,sf.shadowlevel=4000,sf.shadowwidth=2,sf.shadowofs=0" graphic=button_system_edge0 storage=system.ks target=*system0b]
[locate x=600 y=279][button cond="sf.edge==1" exp="sf.edge=0,            tf.stop=0,sf.shadowlevel=0,   sf.shadowwidth=0,sf.shadowofs=0" graphic=button_system_edge1 storage=system.ks target=*system0b]

[locate x=700 y=279][button cond="sf.shadow!=1" exp="sf.shadow=1,sf.edge=0,tf.stop=0,sf.shadowlevel=500,sf.shadowwidth=0,sf.shadowofs=1" graphic=button_system_shadow0 storage=system.ks target=*system0b]
[locate x=700 y=279][button cond="sf.shadow==1" exp="sf.shadow=0,          tf.stop=0,sf.shadowlevel=0,  sf.shadowwidth=0,sf.shadowofs=0" graphic=button_system_shadow1 storage=system.ks target=*system0b]

[locate x=842  y=207][button cond="sf.rclick!=0" exp="sf.rclick=0" graphic=button_system_hide storage=system.ks target=*system0b]
[locate x=1011 y=207][button cond="sf.rclick!=1" exp="sf.rclick=1" graphic=button_system_sys  storage=system.ks target=*system0b]
[locate x=842  y=251][button cond="sf.rclick!=2" exp="sf.rclick=2" graphic=button_system_skip storage=system.ks target=*system0b]
[locate x=1011 y=251][button cond="sf.rclick!=3" exp="sf.rclick=3" graphic=button_system_auto storage=system.ks target=*system0b]

[locate x=842  y=334][button cond="!sf.continue_voice" exp="sf.continue_voice=1" graphic=button_system_on  storage=system.ks target=*system0b]
[locate x=1011 y=334][button cond="sf.continue_voice"  exp="sf.continue_voice=0" graphic=button_system_off storage=system.ks target=*system0b]

[locate x=842  y=427][button cond="!sf.qload" exp="sf.qload=1" graphic=button_system_on  storage=system.ks target=*system0b]
[locate x=1011 y=427][button cond="sf.qload"  exp="sf.qload=0" graphic=button_system_off storage=system.ks target=*system0b]

[locate cond="!tf.from_title" x=734  y=646][button cond="!tf.from_title" graphic=button_system_game  storage=system.ks target=*return]
@locate x=896 y=646
@button cond="tf.from_title"  graphic=button_system_title storage=system.ks target=*return
@button cond="!tf.from_title" graphic=button_system_title exp="kag.goToStartWithAsk()"
[locate cond="!tf.from_title" x=1054 y=646][button cond="!tf.from_title" graphic=button_system_close exp="kag.closeByScript(%[ask:true])"]
@endnowait

@s cond="tf.stop"
@eval exp="tf.stop=1"

@position layer=message7 page=fore visible=true frame="" opacity=0 left=471 top=552 width=718  height=34 marginl=0 margint=0 marginr=0 marginb=0
@eval exp="speedTest(kag.userChSpeed)"

;@current  layer=message7
;@er
;@font size=36 face=&sf.face bold=&sf.bold edge=&sf.edge shadow=&sf.shadow
;@eval exp="kag.userChSpeed=kag.chSpeed, kag.setUserSpeed()"
;@eval exp="kag.fore.messages[7].font.face = &kag.chDefaultFace"
;间接之恋、JIANJIEZHILIAN

@s


*system0y
;@current layer=message7
;@er

@eval exp="deleteTeststrTimer()"

@iscript
invalidate tf.slider_opacity;
invalidate tf.slider_speed;
invalidate tf.slider_autospeed;
@endscript

;@eval cond="kag.fullScreened" exp="kag.windowedMenuItem.click()"
@eval cond="sf.opacity!=255"      exp="sf.opacity=255"
@eval cond="sf.effect!=1"         exp="sf.effect=1"
@eval cond="rc.skip!=1"           exp="rc.skip=1"
@eval cond="sf.continue_skip!=1"  exp="sf.continue_skip=1"
@eval cond="sf.continue_auto!=1"  exp="sf.continue_auto=1"
@eval cond="sf.face=='微软雅黑'" exp="sf.face='微软雅黑'"
@eval cond="sf.bold!=1"           exp="sf.bold=1"
@eval cond="sf.edge!=1"           exp="sf.edge=1"
@eval cond="sf.shadow==1"         exp="sf.shadow=0"
@eval cond="sf.shadowlevel!=4000" exp="sf.shadowlevel=4000"
@eval cond="sf.shadowwidth!=2"    exp="sf.shadowwidth=2"
@eval cond="sf.shadowofs!=0"      exp="sf.shadowofs=0"
@eval cond="kag.userChSpeed!=40"  exp="kag.userChSpeed=40"
;@eval exp="kag.setUserSpeed()"
@eval cond="kag.autoModePageWait!=3000" exp="kag.autoModePageWait=3000"
@eval cond="sf.rclick!=0"         exp="sf.rclick=0"
@eval cond="sf.continue_voice==1" exp="sf.continue_voice=0"
@eval cond="sf.qload!=1"          exp="sf.qload=1"

@jump storage=system.ks target=*system0a




*system0z
;@current layer=message7
;@er

@eval exp="deleteTeststrTimer()"

@iscript
invalidate tf.slider_opacity;
invalidate tf.slider_speed;
invalidate tf.slider_autospeed;
@endscript

;@eval exp="sf.opacity=kag.fore.layers[1].opacity"
;@eval exp="kag.userChSpeed=kag.chSpeed, kag.setUserSpeed()"

;@jump storage=system.ks target=*system1a

*system1a
@eval exp="sf.systempage=1"
@position layer=message5 page=fore visible=true frame=base_system1
@position layer=message6 page=fore visible=false
@position layer=message7 page=fore visible=false
;@current  layer=message7 page=fore
;@er
@current  layer=message5
@er

@iscript
tf.slider_bgm = new SliderLayer(kag, kag.fore.messages[5]);//■ＢＧＭ
with (tf.slider_bgm) {
	.left = 115;//スライダーのＸ座標
	.top  = 216;//スライダーのＹ座標
	.width  = 314;//スライダーの横幅（つかめる縦幅？）
	.height = 29;//スライダー高縦
	.visible = true;// true時、スライダーを表示
	.min = 0;//スライダーが扱う値の最小値
	.max = 100;//スライダーが扱う値の最大値
	.position = kag.bgm.currentBuffer.volume2 \ 1000;//タブの初期表示位置
	.onChange = function(pos) {
		kag.bgm.setOptions(%["gvolume"=>pos]);	// スライダーを動かしたらBGMの大域音量を変更
	};
}

tf.slider_se0 = new SliderLayer(kag, kag.fore.messages[5]);//■ＳＥ０のＧＶＯＬＵＭＥ
with (tf.slider_se0) {
	.left = 115;
	.top  = 323;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[0].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[0].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se1 = new SliderLayer(kag, kag.fore.messages[5]);//■ＳＥ１のＧＶＯＬＵＭＥ
with (tf.slider_se1) {
	.left = 115;
	.top  = 430;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[1].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[1].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se2 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se2) {
	.left = 483;
	.top  = 204;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[2].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[2].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se3 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se3) {
	.left = 483;
	.top  = 268;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[3].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[3].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se4 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se4) {
	.left = 483;
	.top  = 335;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[4].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[4].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se5 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se5) {
	.left = 483;
	.top  = 401;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[5].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[5].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se6 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se6) {
	.left = 483;
	.top  = 468;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[6].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[6].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se7 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se7) {
	.left = 483;
	.top  = 534;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[7].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[7].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se8 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se8) {
	.left = 483;
	.top  = 601;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[8].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[8].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se9 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se9) {
	.left = 849;
	.top  = 204;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[9].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[9].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se10 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se10) {
	.left = 849;
	.top  = 270;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[10].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[10].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se11 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se11) {
	.left = 849;
	.top  = 335;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[11].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[11].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se12 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se12) {
	.left = 849;
	.top  = 401;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[12].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[12].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se13 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se13) {
	.left = 849;
	.top  = 468;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[13].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[13].setOptions(%["gvolume"=>pos]);
	};
}

tf.slider_se14 = new SliderLayer(kag, kag.fore.messages[5]);
with (tf.slider_se14) {
	.left = 849;
	.top  = 534;
	.width  = 314;
	.height = 29;
	.visible = true;
	.min = 0;
	.max = 100;
	.position = kag.se[14].volume2 \ 1000;
	.onChange = function(pos) {
		kag.se[14].setOptions(%["gvolume"=>pos]);
	};
}
@endscript

*system1b
@current layer=message5 page=fore
@er

@nowait
[locate x=541 y=83][button graphic=button_system_go_to_page0 storage=system.ks target=*system1z]

[locate x=938 y=83][button graphic=button_system_default exp="setDefaultWithAsk('system.ks', '*system1y')"]

[locate x=307 y=278][button graphic=button_system_test exp="stopAllSounds(),kag.se[0].play(%['storage'=>'ドアノック'])"]

[locate x=307 y=384][button graphic=button_system_test exp="testPlaySystemVoice()"]

[locate x=109 y=505][button cond="sf.svoice!=1" graphic=button_system_svoice_aori   exp="sf.svoice=1" storage=system.ks target=*system1b]
[locate x=278 y=505][button cond="sf.svoice!=2" graphic=button_system_svoice_sakura exp="sf.svoice=2" storage=system.ks target=*system1b]
[locate x=109 y=549][button cond="sf.svoice!=3" graphic=button_system_svoice_risa   exp="sf.svoice=3" storage=system.ks target=*system1b]
[locate x=278 y=549][button cond="sf.svoice!=4" graphic=button_system_svoice_natume exp="sf.svoice=4" storage=system.ks target=*system1b]
[locate x=109 y=593][button cond="sf.svoice!=0" graphic=button_system_svoice_random exp="sf.svoice=0" storage=system.ks target=*system1b]

[locate x=673 y=166][button graphic=button_system_test exp="stopAllSounds(),kag.se[2].play(%['storage'=>'001_aori_126a'])"]
[locate x=673 y=231][button graphic=button_system_test exp="stopAllSounds(),kag.se[3].play(%['storage'=>'001_sakura_6a'])"]
[locate x=673 y=297][button graphic=button_system_test exp="stopAllSounds(),kag.se[4].play(%['storage'=>'001_risa_42a'])"]
[locate x=673 y=363][button graphic=button_system_test exp="stopAllSounds(),kag.se[5].play(%['storage'=>'001_natume_90a'])"]
[locate x=673 y=430][button graphic=button_system_test exp="stopAllSounds(),kag.se[6].play(%['storage'=>'001_kurenai_11a'])"]
[locate x=673 y=496][button graphic=button_system_test exp="stopAllSounds(),kag.se[7].play(%['storage'=>'001_chino_19a'])"]
[locate x=673 y=563][button graphic=button_system_test exp="stopAllSounds(),kag.se[8].play(%['storage'=>'001_achika_61a'])"]

[locate x=1040 y=166][button graphic=button_system_test exp="stopAllSounds(),kag.se[9].play(%['storage'=>'001_megu_70a'])"]
[locate x=1040 y=231][button graphic=button_system_test exp="stopAllSounds(),kag.se[10].play(%['storage'=>'001_sachiko_23a'])"]
[locate x=1040 y=297][button graphic=button_system_test exp="stopAllSounds(),kag.se[11].play(%['storage'=>'001_kaoru_14a'])"]
[locate x=1040 y=363][button graphic=button_system_test exp="stopAllSounds(),kag.se[12].play(%['storage'=>'001_toshihiko_23a'])"]
[locate x=1040 y=430][button graphic=button_system_test exp="stopAllSounds(),kag.se[13].play(%['storage'=>'001_kyoujirou_123a'])"]
[locate x=1040 y=496][button graphic=button_system_test exp="stopAllSounds(),kag.se[14].play(%['storage'=>'114_banri_24a'])"]

[locate cond="!tf.from_title" x=734 y=646][button cond="!tf.from_title" graphic=button_system_game  storage=system.ks target=*return]
@locate x=896 y=646
@button cond="tf.from_title"  graphic=button_system_title storage=system.ks target=*return
@button cond="!tf.from_title" graphic=button_system_title exp="kag.goToStartWithAsk()"
[locate cond="!tf.from_title" x=1054 y=646][button cond="!tf.from_title" graphic=button_system_close exp="kag.closeByScript(%[ask:true])"]
@endnowait
@s


*system1y

@iscript
invalidate tf.slider_bgm;
invalidate tf.slider_se0;
invalidate tf.slider_se1;
invalidate tf.slider_se2;
invalidate tf.slider_se3;
invalidate tf.slider_se4;
invalidate tf.slider_se5;
invalidate tf.slider_se6;
invalidate tf.slider_se7;
invalidate tf.slider_se8;
invalidate tf.slider_se9;
invalidate tf.slider_se10;
invalidate tf.slider_se11;
invalidate tf.slider_se12;
invalidate tf.slider_se13;
invalidate tf.slider_se14;
@endscript

@bgmopt gvolume=60

@seopt buf=0  gvolume=100
@seopt buf=1  gvolume=100
@seopt buf=2  gvolume=100
@seopt buf=3  gvolume=100
@seopt buf=4  gvolume=100
@seopt buf=5  gvolume=100
@seopt buf=6  gvolume=100
@seopt buf=7  gvolume=100
@seopt buf=8  gvolume=100
@seopt buf=9  gvolume=100
@seopt buf=10 gvolume=100
@seopt buf=11 gvolume=100
@seopt buf=12 gvolume=100
@seopt buf=13 gvolume=100
@seopt buf=14 gvolume=100

@eval cond="sf.svoice!=0" exp="sf.svoice=0"

@jump storage=system.ks target=*system1a


*system1z
@iscript
invalidate tf.slider_bgm;
invalidate tf.slider_se0;
invalidate tf.slider_se1;
invalidate tf.slider_se2;
invalidate tf.slider_se3;
invalidate tf.slider_se4;
invalidate tf.slider_se5;
invalidate tf.slider_se6;
invalidate tf.slider_se7;
invalidate tf.slider_se8;
invalidate tf.slider_se9;
invalidate tf.slider_se10;
invalidate tf.slider_se11;
invalidate tf.slider_se12;
invalidate tf.slider_se13;
invalidate tf.slider_se14;
@endscript

@jump storage=system.ks target=*system0a


*return
;@current layer=message7
;@er

@eval exp="deleteTeststrTimer()"

@iscript
invalidate tf.slider_opacity;
invalidate tf.slider_speed;
invalidate tf.slider_autospeed;

invalidate tf.slider_bgm;
invalidate tf.slider_se0;
invalidate tf.slider_se1;
invalidate tf.slider_se2;
invalidate tf.slider_se3;
invalidate tf.slider_se4;
invalidate tf.slider_se5;
invalidate tf.slider_se6;
invalidate tf.slider_se7;
invalidate tf.slider_se8;
invalidate tf.slider_se9;
invalidate tf.slider_se10;
invalidate tf.slider_se11;
invalidate tf.slider_se12;
invalidate tf.slider_se13;
invalidate tf.slider_se14;
@endscript

@unlocklink
@sysbtopt forevisible=true
@tempload bgm=false
@rclick2
@eval exp="kag.fore.messages[0].opacity = kag.back.messages[0].opacity = kag.fore.messages[1].opacity = kag.back.messages[1].opacity = kag.fore.messages[6].opacity = kag.back.messages[6].opacity =&sf.opacity"
@font face=&sf.face bold=&sf.bold edge=&sf.edge shadow=&sf.shadow

@return
