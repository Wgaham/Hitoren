@call storage=sysBtn.ks
@call storage=rclick_tjs.ks
@call storage=SavesAnywhere.ks
@call storage=voiceCountSave.ks
@call storage=macro.ks
@call storage=ExtStaffroll.ks

@image layer=base page=fore storage=bg901
@image layer=base page=back storage=base_start1
[stoptrans][trans layer=base children=false time=1000 method=crossfade][wt]

@if exp="sf.svoice==0"
@eval exp="tf.svoice=intrandom(1,4)"
@playse cond="tf.svoice==1" storage=svoice_asa1 buf=1
@playse cond="tf.svoice==2" storage=svoice_asa2 buf=1
@playse cond="tf.svoice==3" storage=svoice_asa3 buf=1
@playse cond="tf.svoice==4" storage=svoice_asa4 buf=1
@endif
@playse cond="sf.svoice==1" storage=svoice_asa1 buf=1
@playse cond="sf.svoice==2" storage=svoice_asa2 buf=1
@playse cond="sf.svoice==3" storage=svoice_asa3 buf=1
@playse cond="sf.svoice==4" storage=svoice_asa4 buf=1

@wait time=2000
@image layer=base page=back storage=bg901
[stoptrans][trans layer=base children=false time=1000 method=crossfade][wt]
@wait time=1000
@image layer=base page=back storage=base_start2
[stoptrans][trans layer=base time=1000 method=crossfade][wt]
@wait time=3000
@image layer=base page=back storage=bg901
[stoptrans][trans layer=base children=false time=1000 method=crossfade][wt]
@wait time=1000

@if exp="Storages.isExistentStorage('movie.mpg')==1 && Storages.isExistentStorage('krmovie.dll')==1"
@openvideo slot=0 storage=movie.mpg
@video slot=0 visible=true mode=overlay volume=50 left=-2 width=1282 top=-174 height=1068
@playvideo slot=0
@wv slot=0 canskip=true
@endif

*startanchor|startanchor
@startanchor
[stoptrans]
@sysbtopt forevisible=false
@sysbtopt backvisible=false
@cm
@rclick enabled=false
@history output=false enabled=false
@clearvar
@cancelskip
@cancelautomode
@eval exp="tf.skipModeOn=false, tf.autoModeOn=false"

@image layer=base page=back storage=base_title
@layopt  layer=message4 page=back visible=true
@current layer=message4 page=back

@nowait
[locate x=475 y=279][button graphic=button_title_start storage=000.ks exp="tf.storage='001.ks'" target=*start]
[locate x=475 y=353][button graphic=button_title_load exp="tf.from_title=1, sb.rightClickMenuLoad(1)"]
[locate x=475 y=421][button graphic=button_title_system  storage=000.ks target=*system exp="tf.from_title=1"]
[locate x=475 y=490][button graphic=button_title_special storage=special.ks target=*special exp="tf.from_title=1" cond="sf.ed==1"]
[locate x=511 y=594][button graphic=button_title_close   storage=000.ks target=*close]
@endnowait
[stoptrans][trans cond="!tf.from_title" time=1000 method=crossfade][trans cond="tf.from_title" time=0 method=crossfade][wt]

@if exp="sf.svoice==0 && !tf.from_title"
@eval exp="tf.svoice=intrandom(1,4)"
@playse cond="tf.svoice==1" storage=svoice_hito1 buf=1
@playse cond="tf.svoice==2" storage=svoice_hito2 buf=1
@playse cond="tf.svoice==3" storage=svoice_hito3 buf=1
@playse cond="tf.svoice==4" storage=svoice_hito4 buf=1
@endif
@playse cond="sf.svoice==1 && !tf.from_title" storage=svoice_hito1 buf=1
@playse cond="sf.svoice==2 && !tf.from_title" storage=svoice_hito2 buf=1
@playse cond="sf.svoice==3 && !tf.from_title" storage=svoice_hito3 buf=1
@playse cond="sf.svoice==4 && !tf.from_title" storage=svoice_hito4 buf=1

[if exp="!tf.from_title"][playbgm storage=bgm90][eval exp="tf.bgm='bgm90'"][endif]

@eval exp="tf.from_title=0"
@s

*load
;@tempsave
@call storage=load.ks target=*load
;@tempload bgm=false
@jump storage=000.ks target=*startanchor
;@unlocklink
;@s

*system
;@tempsave
@call storage=system.ks target=*system
;@tempload bgm=false
@jump storage=000.ks target=*startanchor
;@unlocklink
;@s

*start
@rclick2
@history output=true enabled=true
;■自動改ページ
@eval exp="f.AutoRepage=true"
@labelopt title="间接之恋"
@eval exp="f.route='non'"
@eval exp="f.mayo=0"

@if exp="kag.skipMode || !sf.effect"
@stopbgm
@layopt layer=message4 page=fore visible=false
@layopt layer=message4 page=back visible=false
@freeimage layer=base page=fore
;@image layer=base page=fore storage=bg900
@else
@fadeoutbgm time=1000
@freeimage layer=base page=back
@layopt layer=message4 page=back visible=false
[stoptrans][trans time=500 method=crossfade][wt]
@wait time=500
@endif

@jump2 storage=&tf.storage


*close
;@playse cond="checkSysVoiceFile(getSV.end)" storage="&getSV.end" buf=1
@close
@unlocklink
;@eval exp="kag.unlockMessageLayerSelProcess()"
@stopse buf=1
@s

;タイトルへ戻る処理
*returnTitle
@if exp="!kag.skipMode && sf.effect"
@locklink
@fadeoutbgm time=1000
@fadeoutse time=1000
@freeimage layer=base page=back
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back
@position layer=message0 page=back visible=false
@position layer=message1 page=back visible=false
@position layer=message2 page=back visible=false
@position layer=message3 page=back visible=false
@position layer=message4 page=back visible=false
@position layer=message5 page=back visible=false
@position layer=message6 page=back visible=false
@position layer=message7 page=back visible=false
@sysbtopt backvisible=false
[stoptrans][trans time=1000 method=crossfade][wt]
@wait time=1000
@endif

@if exp="kag.skipMode || !sf.effect"
@locklink
@stopbgm
@stopse
@freeimage layer=base page=fore
@freeimage layer=base page=back
@freeimage layer=0 page=fore
@freeimage layer=0 page=back
@freeimage layer=1 page=fore
@freeimage layer=1 page=back
@freeimage layer=2 page=fore
@freeimage layer=2 page=back
@freeimage layer=3 page=fore
@freeimage layer=3 page=back
@freeimage layer=4 page=fore
@freeimage layer=4 page=back
@position layer=message0 page=fore visible=false
@position layer=message0 page=back visible=false
@position layer=message1 page=fore visible=false
@position layer=message1 page=back visible=false
@position layer=message2 page=fore visible=false
@position layer=message2 page=back visible=false
@position layer=message3 page=fore visible=false
@position layer=message3 page=back visible=false
@position layer=message4 page=fore visible=false
@position layer=message4 page=back visible=false
@position layer=message5 page=fore visible=false
@position layer=message5 page=back visible=false
@position layer=message6 page=fore visible=false
@position layer=message6 page=back visible=false
@position layer=message7 page=fore visible=false
@position layer=message7 page=back visible=false
@sysbtopt forevisible=false
@sysbtopt backvisible=false
@endif

@gotostart

;中断データ読込処理
*dataLoad
@if exp="!kag.skipMode && sf.effect"
@locklink
@fadeoutbgm time=1000
@fadeoutse time=1000
@freeimage layer=base page=back
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back
@position layer=message0 page=back visible=false
@position layer=message2 page=back visible=false
@position layer=message3 page=back visible=false
@position layer=message4 page=back visible=false
@position layer=message5 page=back visible=false
@position layer=message6 page=back visible=false
@position layer=message7 page=back visible=false
@sysbtopt backvisible=false
[stoptrans][trans time=1000 method=crossfade][wt]
@wait time=1000
@eval exp="dataLoad()"
@layopt layer=message0 page=back visible=true
@layopt layer=message2 page=back visible=true
@sysbtopt backvisible=true
[stoptrans][trans time=1000 method=crossfade][wt]
@wait time=1000
@endif

@if exp="kag.skipMode || !sf.effect"
@stopbgm
@stopse
@endif

@eval exp="tf.skipModeOn=false, tf.autoModeOn=false, tf.from_title=0"
@load place="&tf.place"

*qload
@if exp="Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(96))"
@eval exp="stopAllSounds()"
@load place=96
@else
@eval exp="System.inform('没有已保存的快速存档啦！笨蛋')"
@jump target=*startanchor
@endif
