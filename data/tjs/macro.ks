;名前ウインドウ
@position layer=message1 page=fore left=25 top=479 width=323  height=39 frame=window_name
@position layer=message1 page=back left=25 top=479 width=323  height=39 frame=window_name
@position layer=message3 page=fore left=25 top=479 width=1255 height=39 marginl=45 margint=-16 marginr=0 marginb=0
@position layer=message3 page=back left=25 top=479 width=1255 height=39 marginl=45 margint=-16 marginr=0 marginb=0

;本文ウインドウ
@position layer=message0 page=fore left=0 top=494 width=1280 height=226 frame=window_message
@position layer=message0 page=back left=0 top=494 width=1280 height=226 frame=window_message
@position layer=message2 page=fore left=0 top=494 width=1280 height=226 marginl=70 margint=40 marginr=320 marginb=6
@position layer=message2 page=back left=0 top=494 width=1280 height=226 marginl=70 margint=40 marginr=320 marginb=6

;選択肢のボタン、スタッフロール、タイトル、cgモード、bgmモード、回想モード
@position layer=message4 page=fore marginl=0 margint=0 marginr=0 marginb=0 left=0 top=0 width=1280 height=720
@position layer=message4 page=back marginl=0 margint=0 marginr=0 marginb=0 left=0 top=0 width=1280 height=720

;システム画面
@position layer=message5 page=fore visible=false marginl=0 margint=0 marginr=0 marginb=0 left=0 top=0 width=1280 height=720
@position layer=message5 page=back visible=false marginl=0 margint=0 marginr=0 marginb=0 left=0 top=0 width=1280 height=720

;システム画面のサンプルウインドウ
;@position layer=message6 page=fore visible=false marginl=0 margint=0 marginr=0 marginb=0 left=471 top=516 width=718 height=126 frame=window_sample
;@position layer=message6 page=fore visible=false marginl=0 margint=0 marginr=0 marginb=0 left=471 top=516 width=718 height=126 frame=window_sample

;サンプル文字列
;@position layer=message7 page=fore visible=false
;@position layer=message7 page=fore visible=false

;ウインドウ濃淡
@layopt layer=message1 page=fore opacity="&sf.opacity"
@layopt layer=message1 page=back opacity="&sf.opacity"
@layopt layer=message0 page=fore opacity="&sf.opacity"
@layopt layer=message0 page=back opacity="&sf.opacity"
@layopt layer=message6 page=fore opacity="&sf.opacity"
@layopt layer=message6 page=back opacity="&sf.opacity"

@macro name=mes_del
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
@endmacro


;■トランジション関連
@macro name="fade"
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@endmacro

@macro name="eff"
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 400"]
[eval cond="mp.et === void" exp="mp.time = 800"]
[trans cond="mp.vet" rule=%r vague=100 time=%time]
[trans cond="mp.vet === void" rule=%r vague=100 time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@endmacro

@macro name="fadeOrEff"
[if exp="mp.r === void"]
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@endif
[eff * cond="mp.r !== void"]
@endmacro


[macro name="fade2"]
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans method=crossfade time=%time]
[wt]
[unlocklink]
[endmacro]

[macro name="fadeS"]
[locklink]
[stoptrans]
[eval exp="mp.time = 500"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
[endmacro]

[macro name="fadeF"]
[locklink]
[stoptrans]
[trans cond="mp.vet" method=crossfade time=%t|50]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
[endmacro]

[macro name="eff2"][eff * vet=true][endmacro]
[macro name="effS"][eff * et=s][endmacro]
[macro name="effF"][eff * et=f time=%t|50][endmacro]



@macro name=st0_del
@freeimage layer=0 page=fore
@eval exp="f.layer0=void"
@endmacro

@macro name=st1_del
@freeimage layer=1 page=fore
@eval exp="f.layer1=void"
@endmacro

@macro name=st2_del
@freeimage layer=2 page=fore
@eval exp="f.layer2=void"
@endmacro

@macro name=st3_del
@freeimage layer=3 page=fore
@eval exp="f.layer3=void"
@endmacro

@macro name=st4_del
@freeimage layer=4 page=fore
@eval exp="f.layer4=void"
@endmacro

@macro name=st_all_del
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@eval exp="f.layer0=void, f.layer1=void, f.layer2=void, f.layer3=void, f.layer4=void"
@endmacro


@macro name=st0
@if exp="(!Storages.isExistentStorage(&mp.f + '.tlg') && !Storages.isExistentStorage(&mp.f + '.png'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n立ち絵「' + mp.f + '」の記載誤り')"
@else
@eval exp="f.layer0=&mp.f"
@image * cond="!f.sepia" layer=0 page=fore visible=true index=%index|1100 left=%left|-700 top=%top|-300 storage="&f.layer0"
@image * cond="f.sepia"  layer=0 page=fore visible=true index=%index|1100 left=%left|-700 top=%top|-300 storage="&f.layer0" grayscale=true rgamma=1.4 ggamma=1.1
@endif
@endmacro

@macro name=st1
@if exp="(!Storages.isExistentStorage(&mp.f + '.tlg') && !Storages.isExistentStorage(&mp.f + '.png'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n立ち絵「' + mp.f + '」の記載誤り')"
@else
@eval exp="f.layer1=&mp.f"
@image * cond="!f.sepia" layer=1 page=fore visible=true index=%index|1300 left=%left|-570 top=%top|-300 storage="&f.layer1"
@image * cond="f.sepia"  layer=1 page=fore visible=true index=%index|1300 left=%left|-570 top=%top|-300 storage="&f.layer1" grayscale=true rgamma=1.4 ggamma=1.1
@endif
@endmacro

@macro name=st2
@if exp="(!Storages.isExistentStorage(&mp.f + '.tlg') && !Storages.isExistentStorage(&mp.f + '.png'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n立ち絵「' + mp.f + '」の記載誤り')"
@else
@eval exp="f.layer2=&mp.f"
;@eval cond="&f.layer2.charAt(6)" exp="f.layer2_index=1401"
;@eval cond="&f.layer2.charAt(6)" exp="mp.index=1401"
@image * cond="!f.sepia" layer=2 page=%page|fore visible=%visible|true index=%index|1400 left=%left|-300 top=%top|-300 storage="&f.layer2"
@image * cond="f.sepia"  layer=2 page=%page|fore visible=%visible|true index=%index|1400 left=%left|-300 top=%top|-300 storage="&f.layer2" grayscale=true rgamma=1.4 ggamma=1.1
@endif
@endmacro


@macro name=st3
@if exp="(!Storages.isExistentStorage(&mp.f + '.tlg') && !Storages.isExistentStorage(&mp.f + '.png'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n立ち絵「' + mp.f + '」の記載誤り')"
@else
@eval exp="f.layer3=&mp.f"
@image * cond="!f.sepia" layer=3 page=fore visible=true index=%index|1200 left=%left|-30 top=%top|-300 storage="&f.layer3"
@image * cond="f.sepia"  layer=3 page=fore visible=true index=%index|1200 left=%left|-30 top=%top|-300 storage="&f.layer3" grayscale=true rgamma=1.4 ggamma=1.1
@endif
@endmacro


@macro name=st4
@if exp="(!Storages.isExistentStorage(&mp.f + '.tlg') && !Storages.isExistentStorage(&mp.f + '.png'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n立ち絵「' + mp.f + '」の記載誤り')"
@else
@eval exp="f.layer4=&mp.f"
@image * cond="!f.sepia" layer=4 page=fore visible=true index=%index|1000 left=%left|100 top=%top|-300 storage="&f.layer4"
@image * cond="f.sepia"  layer=4 page=fore visible=true index=%index|1000 left=%left|100 top=%top|-300 storage="&f.layer4" grayscale=true rgamma=1.4 ggamma=1.1
@endif
@endmacro

;ジャンプ
@macro name=st0_jump
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-700"
@move cond="!&f.layer0.charAt(6)" layer=0 time=%time|65 path="&'('+mp.left+',-350,255)('+mp.left+',-300,255)'"
@move cond="&f.layer0.charAt(6)"  layer=0 time=%time|70 path="&'('+mp.left+',-400,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st1_jump
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-570"
@move cond="!&f.layer1.charAt(6)" layer=1 time=%time|65 path="&'('+mp.left+',-350,255)('+mp.left+',-300,255)'"
@move cond="&f.layer1.charAt(6)"  layer=1 time=%time|70 path="&'('+mp.left+',-400,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st2_jump
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-300"
@move cond="!&f.layer2.charAt(6)" layer=2 time=%time|65 path="&'('+mp.left+',-350,255)('+mp.left+',-300,255)'"
@move cond="&f.layer2.charAt(6)"  layer=2 time=%time|70 path="&'('+mp.left+',-400,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st3_jump
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-30"
@move cond="!&f.layer3.charAt(6)" layer=3 time=%time|65 path="&'('+mp.left+',-350,255)('+mp.left+',-300,255)'"
@move cond="&f.layer3.charAt(6)"  layer=3 time=%time|70 path="&'('+mp.left+',-400,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st4_jump
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=100"
@move cond="!&f.layer4.charAt(6)" layer=4 time=%time|65 path="&'('+mp.left+',-350,255)('+mp.left+',-300,255)'"
@move cond="&f.layer4.charAt(6)"  layer=4 time=%time|70 path="&'('+mp.left+',-400,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st0_nod
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-700"
@move cond="!&f.layer0.charAt(6)" layer=0 time=%time|70  path="&'('+mp.left+',-275,255)('+mp.left+',-300,255)'"
@move cond="&f.layer0.charAt(6)"  layer=0 time=%time|100 path="&'('+mp.left+',-250,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st1_nod
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-570"
@move cond="!&f.layer1.charAt(6)" layer=1 time=%time|70  path="&'('+mp.left+',-275,255)('+mp.left+',-300,255)'"
@move cond="&f.layer1.charAt(6)"  layer=1 time=%time|100 path="&'('+mp.left+',-250,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st2_nod
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-300"
@move cond="!&f.layer2.charAt(6)" layer=2 time=%time|70  path="&'('+mp.left+',-275,255)('+mp.left+',-300,255)'"
@move cond="&f.layer2.charAt(6)"  layer=2 time=%time|100 path="&'('+mp.left+',-250,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st3_nod
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=-30"
@move cond="!&f.layer3.charAt(6)" layer=3 time=%time|70  path="&'('+mp.left+',-275,255)('+mp.left+',-300,255)'"
@move cond="&f.layer3.charAt(6)"  layer=3 time=%time|100 path="&'('+mp.left+',-250,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st4_nod
@if exp="!kag.skipMode && sf.effect"
@eval cond="mp.left==void" exp="mp.left=100"
@move cond="!&f.layer4.charAt(6)" layer=4 time=%time|70  path="&'('+mp.left+',-275,255)('+mp.left+',-300,255)'"
@move cond="&f.layer4.charAt(6)"  layer=4 time=%time|100 path="&'('+mp.left+',-250,255)('+mp.left+',-300,255)'"
@endif
@endmacro

@macro name=st0_move
@eval cond="mp.left==void" exp="mp.left=-700"
@eval cond="mp.top==void"  exp="mp.top=-300"
@move cond="!kag.skipMode && sf.effect" layer=0 time=%time|500 path="&'('+mp.left+','+mp.top+',255)'"
@move cond="kag.skipMode || !sf.effect" layer=0 time=0         path="&'('+mp.left+','+mp.top+',255)'"
@endmacro

@macro name=st1_move
@eval cond="mp.left==void" exp="mp.left=-570"
@eval cond="mp.top==void"  exp="mp.top=-300"
@move cond="!kag.skipMode && sf.effect" layer=1 time=%time|500 path="&'('+mp.left+','+mp.top+',255)'"
@move cond="kag.skipMode || !sf.effect" layer=1 time=0         path="&'('+mp.left+','+mp.top+',255)'"
@endmacro

@macro name=st2_move
@eval cond="mp.left==void" exp="mp.left=-300"
@eval cond="mp.top==void"  exp="mp.top=-300"
@move cond="!kag.skipMode && sf.effect" layer=2 time=%time|500 path="&'('+mp.left+','+mp.top+',255)'"
@move cond="kag.skipMode || !sf.effect" layer=2 time=0         path="&'('+mp.left+','+mp.top+',255)'"
@endmacro

@macro name=st3_move
@eval cond="mp.left==void" exp="mp.left=-30"
@eval cond="mp.top==void"  exp="mp.top=-300"
@move cond="!kag.skipMode && sf.effect" layer=3 time=%time|500 path="&'('+mp.left+','+mp.top+',255)'"
@move cond="kag.skipMode || !sf.effect" layer=3 time=0         path="&'('+mp.left+','+mp.top+',255)'"
@endmacro

@macro name=st4_move
@eval cond="mp.left==void" exp="mp.left=100"
@eval cond="mp.top==void"  exp="mp.top=-300"
@move cond="!kag.skipMode && sf.effect" layer=4 time=%time|500 path="&'('+mp.left+','+mp.top+',255)'"
@move cond="kag.skipMode || !sf.effect" layer=4 time=0         path="&'('+mp.left+','+mp.top+',255)'"
@endmacro

[macro name=move_wait][wm cond="!kag.skipMode && sf.effect"][endmacro]



; 立ち絵
@macro name="setChara"
[eval exp="tf.storage = setPimg(mp)"]

@if exp="mp.y === void && mp.k === void && mp.s === void"
[image * storage=&tf.storage layer=%ly pos=%pos]
@endif

[image * cond="mp.y" storage=&tf.storage layer=%ly pos=%pos gceil=240 bceil=240]
[image * cond="mp.k" storage=&tf.storage layer=%ly pos=%pos rceil=200 gceil=200 bceil=200]
[image * cond="mp.s" storage=&tf.storage layer=%ly pos=%pos grayscale=true rgamma=1.4 ggamma=1.1]
; 位置調整
[layopt cond="getChrName(mp, 2)" * layer=%ly left=&tf.left]
[layopt cond="getChrName(mp, 3)" * layer=%ly top=&tf.top]
@endmacro

@macro name="charaOn1"
[setChara *][layopt cond="mp.v === void" layer=%ly visible=true]
[eval exp="f['ly' + mp.n] = mp.ly"]
@endmacro

[macro name="charaOnL"][charaOn1 * n=L ly=%ly|0 pos=l][endmacro]
[macro name="charaOnC"][charaOn1 * n=C ly=%ly|1 pos=c][endmacro]
[macro name="charaOnR"][charaOn1 * n=R ly=%ly|2 pos=r][endmacro]

;[macro name=中夕][freeimage layer=1][freeimage layer=2][image * layer=0 storage=%f page=fore visible=true index=%index|1000 left=%left|0 top=%top|0 gceil=240 bceil=240][endmacro]
;[macro name="charaOnLY"][charaOnL * y=true][endmacro]
;[macro name="charaOnCY"][charaOnC * y=true][endmacro]
;[macro name="charaOnRY"][charaOnR * y=true][endmacro]

;[macro name=中夜][freeimage layer=1][freeimage layer=2][image * layer=0 storage=%f page=fore visible=true index=%index|1000 left=%left|0 top=%top|0 rceil=200 gceil=200 bceil=200][endmacro]
;[macro name="charaOnLK"][charaOnL * k=true][endmacro]
;[macro name="charaOnCK"][charaOnC * k=true][endmacro]
;[macro name="charaOnRK"][charaOnR * k=true][endmacro]

;[macro name="charaOnLS"][charaOnL * s=true][endmacro]
;[macro name="charaOnCS"][charaOnC * s=true][endmacro]
;[macro name="charaOnRS"][charaOnR * s=true][endmacro]


@macro name="charaFadeOn"
[backlay cond="mp.bg === void"]
[if exp="mp.bg !== void"]
[backlay][image storage=%bg layer=base page=back mode=rect]
[endif]
[charaOnC * v=x page=back visible=true]
@endmacro




;背景関連
;※テスト用※
;[macro name="imgBase"]
;[eval exp="tf.storage = checkWall(mp)"]
;[backlay][image * storage="&tf.storage" layer=base page=back mode=rect]
;@if exp="tf.storage == '背景仮絵' && tf.evKariText[0] === void"
;[ptext layer=base page=back x=200 y=250 text="&'背景 「 '+mp.st+' 」'" size=28 color=0x000000 shadow=false]
;@endif
;@if exp="tf.storage == '背景仮絵' && tf.evKariText[0] !== void"
;[ptext layer=base page=back x=200 y=250 text="&'背景 「 '+tf.evKariText[0]" size=28 color=0x000000 shadow=false]
;[ptext layer=base page=back x=200 y=280 text="&'　　　　'+tf.evKariText[1]+' 」'" size=28 color=0x000000 shadow=false]
;@endif
;[endmacro]

;@macro name="imgBase"
;[backlay][image * storage=%st layer=base page=back mode=rect]
;@endmacro

; 暗転
@macro name="bgFadeBlack"
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
@backlay
@freeimage layer=base page=back
[fadeOrEff *]
@endmacro

[macro name="bgUDBlack"][bgFadeBlack * r=up-down][endmacro]
[macro name="bgUDBlackS"][bgFadeBlack * r=up-down et=s][endmacro]

; ホワイトアウト
@macro name="bgFlashWhite"
[laycount layers=4]
[eval exp="kag.fore.layers[3].assignImages(kag.fore.base)"]
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
[bgSet st=白 et=f time=50]
[eval exp="kag.back.base.assignImages(kag.back.layers[3])"][fadeOrEff *]
[laycount layers=3]
@endmacro

@macro name="bgFlashWhite×3"
[bgFlashWhite et=s][bgFlashWhite et=s][bgFlashWhite]
@endmacro

; 切り替え
[macro name="bgSet"]
[backlay]
[image * storage=%st layer=base page=back mode=rect]
[fadeOrEff *]
[endmacro]

[macro name="bgFadeIn"]
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
[bgSet *]
[endmacro]


@macro name=bg
@stoptrans
@if exp="(!Storages.isExistentStorage(mp.f + '.tlg'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n背景ファイル「' + mp.f + '」の記載誤り')"

@elsif exp="kag.skipMode || !sf.effect"
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@layopt layer=message0 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=true
@layopt layer=message3 page=fore visible=true
@sysbtopt forevisible=true
@image cond="!f.sepia" layer=base page=fore visible=true storage=%f
@image cond="f.sepia"  layer=base page=fore visible=true storage=%f grayscale=true rgamma=1.4 ggamma=1.1

@elsif exp="!kag.skipMode && sf.effect"
@backlay layer=base
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back
@layopt layer=message0 page=back visible=false opacity="&sf.opacity"
@layopt layer=message1 page=back visible=false opacity="&sf.opacity"
@layopt layer=message2 page=back visible=false
@layopt layer=message3 page=back visible=false
@sysbtopt backvisible=false
[trans time=500 method=crossfade][wt]
@wait time=500
@image cond="!f.sepia" layer=base page=back visible=true storage=%f
@image cond="f.sepia"  layer=base page=back visible=true storage=%f grayscale=true rgamma=1.4 ggamma=1.1
[trans time=500 method=crossfade][wt]
@wait time=500

@endif
@eval exp="f.layer3=void, f.layer1=void, f.layer0=void, f.layer2=void, f.layer4=void, sf[mp.f]=1"
@endmacro


@macro name=bg_notime
@stoptrans
@if exp="(!Storages.isExistentStorage(mp.f + '.tlg'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n背景ファイル「' + mp.f + '」の記載誤り')"
@else
@image cond="!f.sepia" layer=base page=fore visible=true storage=%f
@image cond="f.sepia"  layer=base page=fore visible=true storage=%f grayscale=true rgamma=1.4 ggamma=1.1
@eval exp="sf[mp.f]=1"
@endmacro


@macro name=white
@stoptrans
@if exp="!kag.skipMode && sf.effect"
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
;@layopt layer=message0 page=back visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
;@layopt layer=message1 page=back visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
;@layopt layer=message2 page=back visible=false
@layopt layer=message3 page=fore visible=false
;@layopt layer=message3 page=back visible=false
@sysbtopt forevisible=false
;@sysbtopt backvisible=false
[image layer=base page=back storage=bg901][trans method=crossfade time=200][wt]
[image layer=base page=back storage=%f1  ][trans method=crossfade time=200][wt]
[image layer=base page=back storage=bg901][trans method=crossfade time=200][wt]
[image layer=base page=back storage=%f1  ][trans method=crossfade time=200][wt]
[image layer=base page=back storage=bg901][trans method=crossfade time=200][wt]
;@wait time=200
[image layer=base page=back storage=%f2]
;@layopt layer=message0 page=fore visible=true opacity="&sf.opacity"
;@layopt layer=message0 page=back visible=true opacity="&sf.opacity"
;@layopt layer=message1 page=fore visible=true opacity="&sf.opacity"
;@layopt layer=message1 page=back visible=true opacity="&sf.opacity"
;@layopt layer=message2 page=fore visible=true
;@layopt layer=message2 page=back visible=true
;@layopt layer=message3 page=fore visible=true
;@layopt layer=message3 page=back visible=true
;@sysbtopt forevisible=true
;@sysbtopt backvisible=true
[trans children=false method=crossfade time=4000]
;@wt を入れていないので、弊害あり
@quake hmax=25 vmax=25 time=2000
@endif

@if exp="kag.skipMode || !sf.effect"
@image layer=base page=fore visible=true storage=%f2
@endif

@eval exp="sf[mp.f1]=1"
@eval exp="sf[mp.f2]=1"
@endmacro



[macro name="bgFade"][bgFadeBlack *][bgSet *][endmacro]

[macro name="bgClockwise"][bgFadeIn * r=clockwise][endmacro]
[macro name="bgLDownToRUp"][bgFadeIn * r=left-right3][endmacro]
[macro name="bgUpDown"][bgFadeIn * r=up-down][endmacro]
[macro name="bgLeftRight"][bgFadeIn * r=left-right1][endmacro]
[macro name="bgUDSpeed"][bgFadeIn * et=s r=up-down][endmacro]
[macro name="bgLR1Speed"][bgFadeIn * et=s r=left-right1][endmacro]
[macro name="bgLR2Speed"][bgFadeIn * et=s r=left-right2][endmacro]

[macro name="bgSetS"][bgSet * et=s][endmacro]
[macro name="bgFadeBlackS"][bgFadeBlack * et=s][endmacro]
[macro name="bgFadeInS"][bgFadeIn * et=s][endmacro]
[macro name="bgFadeS"][bgFade * et=s][endmacro]

[macro name="bgSetF"][bgSet * et=f time=%t|50][endmacro]
[macro name="bgFadeBlackF"][bgFadeBlack * et=f time=%t|50][endmacro]
[macro name="bgFadeInF"][bgFadeIn * et=f time=%t|50][endmacro]
[macro name="bgFadeF"][bgFade * et=f time=%t|50][endmacro]


;セピア回想用
@macro name="imgSepiaBack"
;
@if exp="sf.effect"
@layopt layer=message0 page=fore visible=false
@layopt layer=message1 page=fore visible=false
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
@backlay
@freeimage layer=base page=back
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back

[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]

@endif

[backlay][image * storage=%bg layer=base page=back mode=rect grayscale=true rgamma=1.4 ggamma=1.1]
@freeimage cond="!sf.effect" layer=0 page=back
@freeimage cond="!sf.effect" layer=1 page=back
@freeimage cond="!sf.effect" layer=2 page=back
@freeimage cond="!sf.effect" layer=3 page=back
@freeimage cond="!sf.effect" layer=4 page=back
[charaOnLS * cond="mp.stl !== void" v=x st=%stl page=back visible=true]
[charaOnCS * cond="mp.stc !== void" v=x st=%stc page=back visible=true]
[charaOnRS * cond="mp.str !== void" v=x st=%str page=back visible=true]

[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]

@layopt layer=message0 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=true
@sysbtopt forevisible=true
@endmacro


;通常回想用
@macro name="imgLookBack"
;
@if exp="sf.effect"
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
@backlay
@freeimage layer=base page=back
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back

[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@endif

[backlay][image storage=%bg layer=base page=back mode=rect rfloor=128 gfloor=128 bfloor=128]
@freeimage cond="!sf.effect" layer=0 page=back
@freeimage cond="!sf.effect" layer=1 page=back
@freeimage cond="!sf.effect" layer=2 page=back
@freeimage cond="!sf.effect" layer=3 page=back
@freeimage cond="!sf.effect" layer=4 page=back
[charaOnLB * cond="mp.stl !== void" v=x st=%stl page=back visible=true]
[charaOnCB * cond="mp.stc !== void" v=x st=%stc page=back visible=true]
[charaOnRB * cond="mp.str !== void" v=x st=%str page=back visible=true]
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@layopt layer=message0 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=true
@sysbtopt forevisible=true
@endmacro

;回想終了
@macro name="imgBackEnd"
;
@if exp="sf.effect"
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
@backlay
@freeimage layer=base page=back
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@endif
;
@if exp="mp.bg !== void"
[backlay][image * storage=%bg layer=base page=back mode=rect]
@freeimage cond="!sf.effect" layer=0 page=back
@freeimage cond="!sf.effect" layer=1 page=back
@freeimage cond="!sf.effect" layer=2 page=back
@freeimage cond="!sf.effect" layer=3 page=back
@freeimage cond="!sf.effect" layer=4 page=back
[charaOnL * cond="mp.stl !== void" v=x st=%stl page=back visible=true]
[charaOnC * cond="mp.stc !== void" v=x st=%stc page=back visible=true]
[charaOnR * cond="mp.str !== void" v=x st=%str page=back visible=true]
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
@layopt layer=message0 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=true
@sysbtopt forevisible=true
@endif
;
@endmacro


[macro name="eventOn"]
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
[bgSet *]
[eval exp="sf[mp.st]=1"]
[endmacro]

;イベント絵
;■デバック用
;[macro name="eventOn"]
;[eval exp="tf.storage = checkEvent(mp)"]
;@freeimage layer=0 page=fore
;@freeimage layer=1 page=fore
;@freeimage layer=2 page=fore
;@freeimage layer=3 page=fore
;@freeimage layer=4 page=fore
;@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
;@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
;@layopt layer=message2 page=fore visible=false
;@layopt layer=message3 page=fore visible=false
;@sysbtopt forevisible=false
;[bgSet * st="&tf.storage"][eval exp="sf[mp.st] = true"]
;@if exp="tf.storage == 'イベント仮絵' && tf.evKariText[0] === void"
;[ptext layer=base page=fore x=200 y=250 text="&'イベント絵 「 '+mp.st+' 」'" size=28 color=0x000000 shadow=false]
;@endif
;@if exp="tf.storage == 'イベント仮絵' && tf.evKariText[0] !== void"
;[ptext layer=base page=fore x=200 y=250 text="&'イベント絵 「 '+tf.evKariText[0]" size=28 color=0x000000 shadow=false]
;[ptext layer=base page=fore x=200 y=280 text="&'　　　　　　　'+tf.evKariText[1]+' 」'" size=28 color=0x000000 shadow=false]
;@endif
;[endmacro]


; 消去
[macro name="eventOnS"][eventOn * et=s][endmacro]

;ボイスカウントを空にしてjump
[macro name=jump2][eval exp="vf=%[]"][jump * storage=%storage][endmacro]

; 演出付き切り替え
@macro name="goToNext"
[cancelskip][cancelautomode]
; 暗転
[if exp=" sf.effect"][bgFadeBlack f=1][endif]

[if exp="!sf.effect"]
@freeimage layer=0 page=fore
@freeimage layer=1 page=fore
@freeimage layer=2 page=fore
@freeimage layer=3 page=fore
@freeimage layer=4 page=fore
[eval exp="f.lyL = void, f.lyC = void, f.lyR = void"]
@layopt layer=message0 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=false
@layopt layer=message3 page=fore visible=false
@sysbtopt forevisible=false
[backlay]
[endif]

; 白幕
[if exp="sf.effect"]
[backlay][image * storage=白 layer=base page=back mode=rect]
[endif]

[fadeoutbgm time=1000][eff r=blind1][wb]
[wait time=400 cond="sf.effect"]
; 暗転して次のシナリオへ、ボイスカウントリセット
@backlay
@freeimage layer=base page=back
[locklink]
[stoptrans]
[eval cond="mp.et == 's'" exp="mp.time = 500"]
[eval cond="mp.et === void" exp="mp.time = 1000"]
[trans cond="mp.vet" method=crossfade time=%time]
[trans cond="mp.vet === void" method=crossfade time="&sf.effect ? mp.time : 1"]
[wt]
[unlocklink]
[eval exp="vf=%[]"][hr]
; スキップ中だったら継続
@if exp="tf.skipModeOn"
[eval exp="kag.skipToStop(), tf.skipModeOn = false"]
@endif
; オートモード中だったら継続
@if exp="tf.autoModeOn"
[eval exp="kag.enterAutoMode(), tf.autoModeOn = false"]
@endif

@jump storage=%sc
@endmacro



;■何に使っているか不明
@macro name="wvos"
[ws canskip=true buf=2][ws canskip=true buf=3][ws canskip=true buf=4][ws canskip=true buf=5]
[ws canskip=true buf=6][ws canskip=true buf=7][ws canskip=true buf=8][ws canskip=true buf=9]
[ws canskip=true buf=10][ws canskip=true buf=11][ws canskip=true buf=12][ws canskip=true buf=13]
[ws canskip=true buf=14]
[endhact][ro]
[eval exp="stopAllVoices()"]
@endmacro


@macro name="ev"
@if exp="!tf.nonstop"
@ws cond="kag.autoMode" buf=2
@ws cond="kag.autoMode" buf=3
@ws cond="kag.autoMode" buf=4
@ws cond="kag.autoMode" buf=5
@ws cond="kag.autoMode" buf=6
@ws cond="kag.autoMode" buf=7
@ws cond="kag.autoMode" buf=8
@ws cond="kag.autoMode" buf=9
@ws cond="kag.autoMode" buf=10
@ws cond="kag.autoMode" buf=11
@ws cond="kag.autoMode" buf=12
@ws cond="kag.autoMode" buf=13
@ws cond="kag.autoMode" buf=14
;■表情変化待ちで動作？
;■@eval exp="stopAllVoices()"
@endif

@eval cond="!sf.continue_voice" exp="stopAllVoices()"
@eval exp="tf.nonstop = false"
@endmacro


@macro name="z"
;@endindent
@endhact
;@eval exp="kag.historyLayer.clearAction()"
@ws cond="kag.autoMode" buf=2
@ws cond="kag.autoMode" buf=3
@ws cond="kag.autoMode" buf=4
@ws cond="kag.autoMode" buf=5
@ws cond="kag.autoMode" buf=6
@ws cond="kag.autoMode" buf=7
@ws cond="kag.autoMode" buf=8
@ws cond="kag.autoMode" buf=9
@ws cond="kag.autoMode" buf=10
@ws cond="kag.autoMode" buf=11
@ws cond="kag.autoMode" buf=12
@ws cond="kag.autoMode" buf=13
@ws cond="kag.autoMode" buf=14
@p
@cm
@eval cond="!sf.continue_voice" exp="stopAllVoices()"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message3 page=fore visible=false
@endmacro

@macro name="z2"
@endhact
@ws cond="kag.autoMode" buf=2
@ws cond="kag.autoMode" buf=3
@ws cond="kag.autoMode" buf=4
@ws cond="kag.autoMode" buf=5
@ws cond="kag.autoMode" buf=6
@ws cond="kag.autoMode" buf=7
@ws cond="kag.autoMode" buf=8
@ws cond="kag.autoMode" buf=9
@ws cond="kag.autoMode" buf=10
@ws cond="kag.autoMode" buf=11
@ws cond="kag.autoMode" buf=12
@ws cond="kag.autoMode" buf=13
@ws cond="kag.autoMode" buf=14
@p
@eval cond="!sf.continue_voice" exp="stopAllVoices()"
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message3 page=fore visible=false
@endmacro


;セリフ途中の表情変化待ち
@macro name="zz"
[eval exp="tf.nonstop = true, kag.clickCount = 0"]
@if exp="checkChangeFile(tf.voice) && !checkPlayVoice()"
[waittrig name="&'change' + tf.LabelNum" canskip=true]
[eval exp="cancelAllVoices()"]
@else
[wait time="&!kag.skipMode ? kag.autoModeLineWait : 1"]
@endif
[l cond="kag.autoMode && checkPlayVoice()"]
@if exp="tf.LabelNum == ''"
[eval exp="tf.LabelNum = 2"]
@else
[eval exp="tf.LabelNum++"]
@endif
@endmacro


;ＢＧＭ
@macro name=bgm
@if exp="(!Storages.isExistentStorage(mp.f + '.ogg'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\nＢＧＭファイル「' + mp.f + '」の記載誤り')"
@else
@playbgm storage=%f
@endif
@endmacro

@macro name=bgm_stop
@fadeoutbgm cond="!kag.skipMode && sf.effect" time=%time|1000
@stopbgm cond="kag.skipMode || !sf.effect"
@endmacro

@macro name=bgm_stop_notime
@stopbgm
@endmacro

;■効果音
@macro name=se0
@if exp="(!Storages.isExistentStorage(mp.f + '.wav') && !Storages.isExistentStorage(mp.f + '.ogg'))"
@eval exp="System.inform(kag.conductor.curStorage + ' ' + kag.conductor.curLine + '行目 直後\n効果音ファイル「' + mp.f + '」の記載誤り')"
@else
@playse cond="!kag.skipMode" * buf=0 storage=%f
@endif
@endmacro

@macro name=se0_stop
@fadeoutse cond="!kag.skipMode && sf.effect" buf=0 time=%time|1000
@stopse cond="mp.time==0 || kag.skipMode || !sf.effect" buf=0
@endmacro

@macro name=se0_stop_notime
@stopse buf=0
@endmacro

[macro name=se0_wait][ws cond="!kag.skipMode && sf.effect" buf=0 canskip=true][endmacro]

@macro name=fadeoutse_all
@if exp="!kag.skipMode && sf.effect"
@fadeoutse buf=0  time=%time|1000
@fadeoutse buf=1  time=%time|1000
@fadeoutse buf=2  time=%time|1000
@fadeoutse buf=3  time=%time|1000
@fadeoutse buf=4  time=%time|1000
@fadeoutse buf=5  time=%time|1000
@fadeoutse buf=6  time=%time|1000
@fadeoutse buf=7  time=%time|1000
@fadeoutse buf=8  time=%time|1000
@fadeoutse buf=9  time=%time|1000
@fadeoutse buf=10 time=%time|1000
@fadeoutse buf=11 time=%time|1000
@fadeoutse buf=12 time=%time|1000
@fadeoutse buf=13 time=%time|1000
@fadeoutse buf=14 time=%time|1000
@endif
@if exp="kag.skipMode || !sf.effect"
@stopse buf=0
@stopse buf=1
@stopse buf=2
@stopse buf=3
@stopse buf=4
@stopse buf=5
@stopse buf=6
@stopse buf=7
@stopse buf=8
@stopse buf=9
@stopse buf=10
@stopse buf=11
@stopse buf=12
@stopse buf=13
@stopse buf=14
@endif
@endmacro

;ウェイト
[macro name=w][wait * cond="!kag.skipMode && sf.effect" time=%time|500][endmacro]

;画面揺らし
[macro name=q][if exp="!kag.skipMode && sf.effect"][stopquake][quake time=%time|500 hmax=%x|25 vmax=%y|25][endif][endmacro]
[macro name=q_wait][wq cond="!kag.skipMode && sf.effect"][endmacro]


;名前
@macro name="chr"
@awsave
@rclick2
@hr

;@if exp="!getVisi(1) && mp.mode != 'vo'"
;@position layer=message0 page=fore visible=true
;@position layer=message2 page=fore visible=true
;@sysbtopt cond="mp.fm === void" forevisible=true
;@endif

@if exp="mp.name == '無'"
;@layopt cond="getVisi(3)" layer=message1 page=fore visible=false opacity="&sf.opacity"
;@layopt cond="getVisi(3)" layer=message3 page=fore visible=false
@layopt layer=message1 page=fore visible=false opacity="&sf.opacity"
@layopt layer=message1 page=back               opacity="&sf.opacity"
@layopt layer=message3 page=fore visible=false
@endif

@if exp="mp.name != '無'"
@position cond="f.window!=1" layer=message1 page=fore frame="window_name"
@position cond="f.window!=1" layer=message1 page=back frame="window_name"
@position cond="f.window==1" layer=message1 page=fore frame="window_name1"
@position cond="f.window==1" layer=message1 page=back frame="window_name1"
@layopt layer=message1 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message1 page=back              opacity="&sf.opacity"
@layopt layer=message3 page=fore visible=true
;@layopt cond="!getVisi(3)" layer=message1 page=fore visible=true
;@layopt cond="!getVisi(3)" layer=message3 page=fore visible=true
@current layer=message3
@font face=&sf.face bold=&sf.bold edge=&sf.edge shadow=&sf.shadow
@ch text=%name
@hr
@endif

@position cond="f.window!=1" layer=message0 page=fore frame="window_message"
@position cond="f.window!=1" layer=message0 page=back frame="window_message"
@position cond="f.window==1" layer=message0 page=fore frame="window_message1"
@position cond="f.window==1" layer=message0 page=back frame="window_message1"
@layopt layer=message0 page=fore visible=true opacity="&sf.opacity"
@layopt layer=message0 page=back              opacity="&sf.opacity"
@layopt layer=message2 page=fore visible=true
@sysbtopt forevisible=true
@current layer=message2
@font face=&sf.face bold=&sf.bold edge=&sf.edge shadow=&sf.shadow
@eval exp="tf.BookMarkNameOn = true"

@eval exp="tf.voice = checkVoiceFile(mp.name, mp.n)"

@if exp="tf.voice !== void"
@eval exp="tf.LabelNum = ''"
@hact exp="&setHact()"
@eval exp="playVoice(tf.voice)"
@endif

@endmacro


[macro name=無][chr name=無][endmacro]
;[macro name=無∨][chr * name=無 mode=vo][endmacro]
[macro name=和樹][chr name=和树][endmacro]

[macro name=？？？][chr * name=？？？][endmacro]
[macro name=声][chr * name=声音][endmacro]
[macro name=碧里][chr name=碧里][endmacro]
[macro name=桜][chr name=樱][endmacro]
[macro name=りさ][chr name=里沙][endmacro]
[macro name=夏芽][chr name=夏芽][endmacro]
[macro name=紅][chr name=红][endmacro]
[macro name=千乃][chr name=千乃][endmacro]
[macro name=千乃様][chr * name=千乃大人][endmacro]
[macro name=阿知華][chr name=阿知华][endmacro]
[macro name=阿知華？][chr * name=阿知华？][endmacro]
[macro name=メグ][chr name=巡][endmacro]
[macro name=さちこ][chr name=幸子][endmacro]
[macro name=薫][chr name=薫][endmacro]
[macro name=俊彦][chr name=俊彦][endmacro]
[macro name=恭次郎][chr name=恭次郎][endmacro]
[macro name=万里][chr name=万里][endmacro]
[macro name=目つきの悪い少年][chr name=面相凶恶的少年][endmacro]
[macro name=園原弟][chr name=园原的弟弟][endmacro]
[macro name=手紙][chr name=信][endmacro]

[macro name=和樹＆碧里][chr name=和树＆碧里][endmacro]
[macro name=和樹＆りさ][chr name=和树＆里沙][endmacro]
[macro name=和樹＆りさ＆夏芽][chr name=和树＆里沙＆夏芽][endmacro]
[macro name=和樹＆夏芽][chr name=和树＆夏芽][endmacro]
[macro name=和樹＆千乃][chr name=和树＆千乃][endmacro]
[macro name=和樹＆阿知華][chr name=和树＆阿知华][endmacro]
[macro name=和樹＆恭次郎][chr name=和树＆恭次郎][endmacro]
[macro name=和樹&万里][chr name=和树&万里][endmacro]
;■↑＆が全角だとうまく動作しない
[macro name=桜＆千乃][chr name=樱＆千乃][endmacro]
[macro name=りさ＆紅][chr name=里沙＆紅][endmacro]
[macro name=りさ＆阿知華][chr name=里沙＆阿知华][endmacro]
[macro name=りさ＆阿知華＆和樹][chr name=里沙＆阿知华＆和树][endmacro]
[macro name=りさ＆メグ][chr name=里沙＆巡][endmacro]
[macro name=りさ＆俊彦][chr name=里沙＆俊彦][endmacro]
[macro name=りさ＆恭次郎][chr name=里沙＆恭次郎][endmacro]
[macro name=紅＆碧里][chr name=红＆碧里][endmacro]
[macro name=紅＆りさ][chr name=红＆里沙][endmacro]
[macro name=紅＆メグ][chr name=红＆巡][endmacro]
[macro name=千乃＆桜][chr name=千乃＆樱][endmacro]
[macro name=千乃＆恭次郎][chr name=千乃＆恭次郎][endmacro]
[macro name=メグ＆りさ][chr name=巡＆里沙][endmacro]
[macro name=メグ＆りさ＆碧里][chr name=巡＆里沙＆碧里][endmacro]
[macro name=メグ＆紅][chr name=巡＆红][endmacro]
[macro name=メグ＆俊彦][chr name=巡＆俊彦][endmacro]
[macro name=さちこ＆薫][chr name=幸子＆薫][endmacro]
[macro name=薫＆俊彦][chr name=薫＆俊彦][endmacro]
[macro name=俊彦＆薫][chr name=俊彦＆薫][endmacro]
[macro name=恭次郎＆和樹][chr name=恭次郎＆和树][endmacro]

[macro name=三枝三兄妹][chr * name=三枝兄妹三人][endmacro]

[macro name="和樹　"][chr * name="和树　"][endmacro]
[macro name="俊彦　"][chr * name="俊彦　"][endmacro]

[macro name=木村][chr name=木村][endmacro]
[macro name=後藤][chr name=后藤][endmacro]
[macro name=木之元][chr name=木之元][endmacro]
[macro name=生徒][chr name=学生][endmacro]
[macro name=生徒Ａ][chr name=学生A][endmacro]
[macro name=生徒Ｂ][chr name=学生B][endmacro]
[macro name=生徒Ｃ][chr name=学生C][endmacro]
[macro name=他の生徒][chr name=其他学生][endmacro]
[macro name=生徒達][chr name=学生们][endmacro]
[macro name=男子][chr name=男同学][endmacro]
[macro name=男子２][chr name=男同学2号][endmacro]
[macro name=男子３][chr name=男同学3号][endmacro]
[macro name=男子生徒][chr name=男同学][endmacro]
[macro name=男子生徒２][chr name=男同学2号][endmacro]
[macro name=男子生徒Ａ][chr name=男同学A][endmacro]
[macro name=男子生徒Ｂ][chr name=男同学B][endmacro]
[macro name=男子生徒Ｃ][chr name=男同学C][endmacro]
[macro name=男子生徒Ｙ][chr name=男同学Y][endmacro]
[macro name=男子生徒Ｚ][chr name=男同学Z][endmacro]
[macro name=女子][chr name=女性社员][endmacro]
[macro name=女子２][chr name=女性社员2号][endmacro]
[macro name=女子３][chr name=女性社员3号][endmacro]
[macro name=女子生徒][chr name=女同学][endmacro]
[macro name=女子生徒Ａ][chr name=女同学A][endmacro]
[macro name=女子生徒Ｂ][chr name=女同学B][endmacro]
[macro name=女子生徒Ａ＆女子生徒Ｂ][chr name=女同学A＆女同学B][endmacro]
[macro name=女子生徒Ｃ][chr name=女同学C][endmacro]
[macro name=女子生徒Ｂ子][chr name=另一位女同学B][endmacro]
[macro name=女子生徒Ｃ子][chr name=另一位女同学C][endmacro]
[macro name=必死な女の子][chr name=呼救的女性][endmacro]
[macro name=一同][chr name=一起的社员们][endmacro]
[macro name=上級生][chr name=某位前辈学生][endmacro]
[macro name=水泳部員達][chr name=游泳社社员们][endmacro]
[macro name=部員達][chr name=社员们][endmacro]
[macro name=男子部員][chr name=男社员][endmacro]
[macro name=女子部員Ａ][chr name=女社员A][endmacro]
[macro name=女子部員Ｂ][chr name=女社员B][endmacro]
[macro name=野球部員][chr name=棒球部社员][endmacro]
[macro name=実行委員][chr name=实行委员][endmacro]
[macro name=委員の先輩][chr name=前辈委员][endmacro]
[macro name=担任][chr name=班主任][endmacro]
[macro name=教師][chr name=教师][endmacro]
[macro name=担任教師][chr name=班主任老师][endmacro]
[macro name=男教師][chr name=男性教师][endmacro]
[macro name=店員][chr name=店员][endmacro]
[macro name=野次馬Ａ][chr name=吃瓜群众A][endmacro]
[macro name=野次馬Ｂ][chr name=吃瓜群众B][endmacro]
[macro name=背広の男][chr name=虎背熊腰男][endmacro]
[macro name=小男][chr name=麻秆男][endmacro]
[macro name=大男][chr name=壮汉][endmacro]
[macro name=小男＆大男][chr name=麻秆男＆壮汉][endmacro]
[macro name=少女][chr name=小孩][endmacro]
[macro name=女の子][chr name=小女孩][endmacro]
[macro name=ママ][chr name=小孩的妈妈][endmacro]
[macro name=ナース][chr name=护士][endmacro]
[macro name=伯母さん][chr name=伯母][endmacro]
[macro name=男優][chr name=萤幕中的男演员][endmacro]
[macro name=女優][chr name=荧幕中的女演员][endmacro]
[macro name=若い男][chr name=年轻男性][endmacro]
[macro name=若い女][chr name=年轻女性][endmacro]
[macro name=不良男][chr name=男混混][endmacro]
[macro name=不良男１][chr name=男混混1号][endmacro]
[macro name=不良男２][chr name=男混混2号][endmacro]
[macro name=不良女][chr name=女混混][endmacro]
[macro name=おっさん][chr name=大叔][endmacro]
[macro name=おばさん][chr name=老婆婆][endmacro]
[macro name=チャラ男][chr name=轻浮男][endmacro]
[macro name=チャラ女][chr name=轻浮女][endmacro]
[macro name=カップルＡ][chr name=情侣A][endmacro]
[macro name=カップルＢ][chr name=情侣B][endmacro]
[macro name=乗客][chr name=乘客][endmacro]
[macro name=乗客Ａ][chr name=乗客A][endmacro]
[macro name=乗客Ｂ][chr name=乗客B][endmacro]
[macro name=乗客Ｃ][chr name=乗客C][endmacro]
[macro name=乗客Ｄ][chr name=乗客D][endmacro]
[macro name=乗客Ｅ][chr name=乗客E][endmacro]
[macro name=映画主人公][chr name=电影中的男主角][endmacro]
[macro name=映画ヒロイン][chr name=电影中的女主角][endmacro]
[macro name=テレビ][chr name=电视节目][endmacro]
[macro name=キャスター][chr name=新闻播音员][endmacro]
[macro name=アナウンス][chr name=车内广播][endmacro]
[macro name=通行人Ａ][chr name=行人A][endmacro]
[macro name=通行人Ｂ][chr name=行人B][endmacro]
[macro name=通行人Ｃ][chr name=行人C][endmacro]
[macro name=通行人Ｄ][chr name=行人D][endmacro]
[macro name=司会][chr name=主持人][endmacro]
[macro name=ギャラリー][chr name=观众席][endmacro]
[macro name=ギャラリーＡ][chr name=观众A][endmacro]
[macro name=ギャラリーＢ][chr name=观众B][endmacro]
[macro name=ギャラリー達][chr name=观众席][endmacro]
[macro name=観衆生徒Ａ][chr name=围观学生A][endmacro]
[macro name=観衆生徒Ｂ][chr name=围观学生B][endmacro]
[macro name=観衆生徒Ｃ][chr name=围观学生C][endmacro]
[macro name=観衆生徒Ｄ][chr name=围观学生D][endmacro]
[macro name=観衆生徒Ｅ][chr name=围观学生E][endmacro]
[macro name=老人][chr name=老年人][endmacro]
[macro name=おじいさん][chr name=老爷爷][endmacro]
[macro name=爺さん][chr name=老头][endmacro]
[macro name=じーさん][chr name=老年客人][endmacro]
[macro name=師範][chr name=老师][endmacro]
[macro name=係の人][chr name=店里的人][endmacro]
[macro name=ティッシュ配り][chr name=发传单的人][endmacro]
[macro name=ジャスティンローラ][chr name=贾斯汀萝拉][endmacro]
[macro name=やつれた犬][chr name=憔悴的狗][endmacro]
[macro name=動かない犬][chr name=一动不动的狗][endmacro]
[macro name=やけに冷たい犬][chr name=眼神冰冷的狗][endmacro]
[macro name=猫][chr name=猫][endmacro]
[macro name=謎の生命体][chr name=迷之生物][endmacro]
[macro name=和樹メール][chr name=和树讯息内容][endmacro]
[macro name=碧里メール][chr name=碧里讯息内容][endmacro]
[macro name=碧里メール？][chr name=碧里讯息内容？][endmacro]
[macro name=碧里からのメール][chr name=碧里发来的讯息][endmacro]
[macro name=夏芽からのメール][chr name=夏芽发来的讯息][endmacro]
[macro name=紅からのメール][chr name=红发来的讯息][endmacro]
[macro name=千乃からのメール][chr name=千乃发来的讯息][endmacro]
[macro name=千乃へのメール][chr name=回给千乃的讯息][endmacro]
[macro name=メール][chr name=讯息内容][endmacro]


;動き演出
@macro name="setPos1"
[eval exp="f.moveL = getLS('l', f['ly'+mp.i]), f.moveT = getLS('t', f['ly'+mp.i])"]
@endmacro

[macro name="setPosL"][setPos1 i=L][endmacro]
[macro name="setPosC"][setPos1 i=C][endmacro]
[macro name="setPosR"][setPos1 i=R][endmacro]

@macro name="setMove1"
[move cond="!kag.skipMode && sf.effect" layer="&f['ly'+mp.i]" time=400 path="&'('+f.moveL+','+(f.moveT+10)+',255)('+f.moveL+','+f.moveT+',255)'"]
@endmacro

[macro name="頷くＬ"][setMove1 i=L][endmacro]
[macro name="頷くＣ"][setMove1 i=C][endmacro]
[macro name="頷くＲ"][setMove1 i=R][endmacro]

@macro name="setMove2"
[move cond="!kag.skipMode && sf.effect" layer="&f['ly'+mp.i]" time=100 path="&setMovePath(f.moveL, f.moveT, 2)"]
@endmacro

[macro name="震えるＬ"][setMove2 i=L n=%n][endmacro]
[macro name="震えるＣ"][setMove2 i=C n=%n][endmacro]
[macro name="震えるＲ"][setMove2 i=R n=%n][endmacro]

@macro name="setMove3"
[move cond="!kag.skipMode && sf.effect" layer="&f['ly'+mp.i]" time=150 path="&'('+f.moveL+','+(f.moveT-10)+',255)('+f.moveL+','+f.moveT+',255)'"]
@endmacro

[macro name="ジャンプＬ"][setMove3 i=L][endmacro]
[macro name="ジャンプＣ"][setMove3 i=C][endmacro]
[macro name="ジャンプＲ"][setMove3 i=R][endmacro]


@macro name=memory
@stoptrans
;@current layer=message4 page=back
;@er
@eval exp="f.SceneReplay=1,f.AutoRepage=true"
@rclick2 enabled=true
@history enabled=true output=true

@if exp="!kag.skipMode && sf.effect"
@fadeoutbgm time=1000
@layopt layer=message4 page=back visible=false
;@image layer=base page=back storage=bg900
@freeimage layer=base page=back
[trans time=500 method =crossfade][wt]
@endif
[if exp="kag.skipMode || !sf.effect"][stopbgm][endif]
@endmacro

@macro name=select2
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait
[locate x=242 y=150][button * graphic=button_select exp=%exp1 storage=%storage1]
@eval exp="drawTextButton(0, mp.text1)"
[locate x=242 y=300][button * graphic=button_select exp=%exp2 storage=%storage2]
@eval exp="drawTextButton(1, mp.text2)"
@endnowait
@s
@endmacro

@macro name=select3
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait
[locate x=242 y=100][button * graphic=button_select exp=%exp1 storage=%storage1]
@eval exp="drawTextButton(0, mp.text1)"
[locate x=242 y=250][button * graphic=button_select exp=%exp2 storage=%storage2]
@eval exp="drawTextButton(1, mp.text2)"
[locate x=242 y=400][button * graphic=button_select exp=%exp3 storage=%storage3]
@eval exp="drawTextButton(2, mp.text3)"
@endnowait
@s
@endmacro

@macro name=select4
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait
[locate x=242 y=100][button graphic=button_select exp=%exp1 storage=%storage1]
@eval exp="drawTextButton(0, mp.text1)"
[locate x=242 y=200][button graphic=button_select exp=%exp2 storage=%storage2]
@eval exp="drawTextButton(1, mp.text2)"
[locate x=242 y=300][button graphic=button_select exp=%exp3 storage=%storage3]
@eval exp="drawTextButton(2, mp.text3)"
[locate x=242 y=400][button graphic=button_select exp=%exp4 storage=%storage4]
@eval exp="drawTextButton(3, mp.text4)"
@endnowait
@s
@endmacro

@macro name=select4_long
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait
[locate x=67 y=100][button graphic=button_select_long target=%target]
@eval exp="drawTextButton2(0, mp.text1)"
[locate x=67 y=200][button graphic=button_select_long target=%target]
@eval exp="drawTextButton2(1, mp.text2)"
[locate x=67 y=300][button graphic=button_select_long target=%target]
@eval exp="drawTextButton2(2, mp.text3)"
[locate x=67 y=400][button graphic=button_select_long target=%target]
@eval exp="drawTextButton2(3, mp.text4)"
@endnowait
@s
@endmacro

@macro name=select5_long
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait
[locate x=67 y=50][button graphic=button_select_long  storage=304.ks target=*endselect]
@eval exp="drawTextButton3(0, ' 1. 我们之间的战斗、永不停息……')"
[locate x=67 y=150][button graphic=button_select_long exp=f.select_304ks=1  storage=304.ks target=*endselect]
@eval exp="drawTextButton3(1, ' 2. 你喘得好厉害啊！！')"
[locate x=67 y=250][button graphic=button_select_long storage=304.ks target=*endselect]
@eval exp="drawTextButton3(2, ' 3. 真的吗！你别蒙我啊！牛X，等会我去瞅瞅')"
[locate x=67 y=350][button graphic=button_select_long  storage=304.ks target=*endselect]
@eval exp="drawTextButton3(3, ' 4. 里沙……我爱你')"
[locate x=67 y=450][button graphic=button_select_long  storage=304.ks target=*endselect]
@eval exp="drawTextButton3(4, ' 5. 看我大屌欸嘿')"
@endnowait
@s
@endmacro

@macro name=select2_short
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait
@locate x=412 y=150
@button cond="f.select_401ks_sakura!=1" graphic=button_select_short button4=true exp="f.number_401ks=f.number_401ks+1, f.select_401ks_sakura=1" storage=401.ks target=*sakura
@button cond="f.select_401ks_sakura==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(0, ' 1. 找樱帮忙')"
@locate x=412 y=300
@button cond="f.select_401ks_megu!=1" graphic=button_select_short button4=true exp="f.number_401ks=f.number_401ks+1, f.select_401ks_megu=1" storage=401.ks target=*megu
@button cond="f.select_401ks_megu==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(1, ' 2. 找姐姐帮忙')"
@endnowait
@s
@endmacro


@macro name=jump_401ks_select
@jump cond="f.number_401ks==2" storage=401.ks target=*endselect
@jump storage=401.ks target=*select
@endmacro


@macro name=select5_short
@eval cond="kag.skipMode==3" exp="tf.skipModeOn_beforeSelet=1"
@layopt  layer=message4 page=fore visible=true
@current layer=message4
@er
@nowait

@locate x=412 y=50
@button cond="f.select_111ks_chino!=1" graphic=button_select_short button4=true exp="f.number_111ks=f.number_111ks+1, f.select_111ks_chino=1" storage=111.ks target=*chino
@button cond="f.select_111ks_chino==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(0, ' 1. 千乃')"

@locate x=412 y=150
@button cond="f.select_111ks_risa!=1" graphic=button_select_short button4=true exp="f.number_111ks=f.number_111ks+1, f.select_111ks_risa=1" storage=111.ks target=*risa
@button cond="f.select_111ks_risa==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(1, ' 2. 里沙')"

@locate x=412 y=250
@button cond="f.select_111ks_sakura!=1" graphic=button_select_short button4=true exp="f.number_111ks=f.number_111ks+1, f.select_111ks_sakura=1" storage=111.ks target=*sakura
@button cond="f.select_111ks_sakura==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(2, ' 3. 樱')"

@locate x=412 y=350
@button cond="f.select_111ks_natume!=1" graphic=button_select_short button4=true exp="f.number_111ks=f.number_111ks+1, f.select_111ks_natume=1" storage=111.ks target=*natume
@button cond="f.select_111ks_natume==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(3, ' 4. 夏芽')"

@locate x=412 y=450
@button cond="f.select_111ks_kyoujirou!=1" graphic=button_select_short button4=true exp="f.number_111ks=f.number_111ks+1, f.select_111ks_kyoujirou=1" storage=111.ks target=*kyoujirou
@button cond="f.select_111ks_kyoujirou==1" graphic=button_select_short button4=true enabled=false
@eval exp="drawTextButton4(4, ' 5. 恭次郎')"

@endnowait
@s
@endmacro

@macro name=jump_111ks_select
@jump cond="f.number_111ks==3" storage=111.ks target=*endselect
@jump storage=111.ks target=*select
@endmacro

@macro name=endselect
@eval exp="vf=%[]"
@layopt layer=message4 page=fore visible=false
@cm
@eval cond="tf.skipModeOn_beforeSelet==1 && sf.continue_skip==1" exp="kag.skipToStop(), tf.skipModeOn_beforeSelet=0"
@eval cond="tf.autoModeOn==1 && sf.continue_auto==0" exp="kag.autoMode=0, tf.autoModeOn=0"
@endmacro

@macro name=endselect2
@layopt layer=message4 page=fore visible=false
@cm
@eval cond="tf.skipModeOn_beforeSelet==1 && sf.continue_skip==1" exp="kag.skipToStop(), tf.skipModeOn_beforeSelet=0"
@eval cond="tf.autoModeOn==1 && sf.continue_auto==0" exp="kag.autoMode=0, tf.autoModeOn=0"
@endmacro

@macro name=rclick2
@rclick cond="&sf.rclick==0" enabled=%enable|true jump=false call=false
@rclick cond="&sf.rclick==1" enabled=%enable|true jump=false call=true storage=system.ks target=*system
@rclick cond="&sf.rclick==2 || &sf.rclick==3" enabled=%enable|true jump=false call=true storage=skip_auto.ks target=*skip_auto
@endmacro


@iscript
//■コンフィグの文字速度表示サンプル
//■var targetlayer = kag.fore.messages[7];//描画するメッセージレイヤー
var teststr;//テスト文字列
var teststr_timer;//タイマー
var teststr_counter;//カウンター
var teststr_rectx = 0;//メッセージレイヤ内の短形塗りつぶし領域のｘ座標
var teststr_recty = 0;//メッセージレイヤ内の短形塗りつぶし領域のｙ座標
var teststr_rectw = 718;//メッセージレイヤ内の短形塗りつぶし領域の横幅
var teststr_recth = 34;//メッセージレイヤ内の短形塗りつぶし領域の縦幅
var rectcol = 0x00000000;//メッセージレイヤ内の短形塗りつぶし領域の透明度と背景色
var teststr_strx = 5;//■メッセージレイヤ内の文字表示ｘ座標
var teststr_stry = 2;//■メッセージレイヤ内の文字表示ｙ座標
var teststr_strcol = 0x000000;//■文字の色
function speedTest(speed)//文字速度表示用
{
//	kag.fore.messages[7].setPosition(%[visible:true]);
	kag.fore.messages[7].font.height = 30;
	kag.fore.messages[7].font.face   = &sf.face;
	kag.fore.messages[7].font.bold   = &sf.bold;

	teststr_counter = 0;
	teststr ="间接之恋、JIANJIEZHILIAN";//文字列
	kag.fore.messages[7].fillRect(teststr_rectx, teststr_recty, teststr_rectw, teststr_recth, rectcol);//前回のテスト文字列を短形塗りつぶし(left, top, width, height, value)
	if (speed == 0) {
		kag.fore.messages[7].drawText(teststr_strx, teststr_stry, teststr, teststr_strcol, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);//■(x, y, text, color, opa=255, aa=true, shadowlevel=0, shadowcolor=0x000000, shadowwidth=0, shadowofsx=0, shadowofsy=0)
	}
	else {
		teststr_timer = new Timer(onTeststrTimer, '');
		teststr_timer.interval = speed;
		teststr_timer.enabled = true;
	}
}

function onTeststrTimer()
{
	kag.fore.messages[7].drawText(teststr_strx + kag.fore.messages[7].font.getTextWidth(teststr.substring(0, teststr_counter)), teststr_stry, teststr.charAt(teststr_counter), teststr_strcol, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
	teststr_counter++;
	if (teststr_counter == teststr.length) {
		invalidate teststr_timer;
		teststr_timer = void;
		teststr_counter = 0;
	}
}

function deleteTeststrTimer()//コンフィグ終了時に呼び出すためのもの
{
	if (teststr_timer !== void)
	{
		invalidate teststr_timer;
		teststr_timer = void;
	}
}

var menuCheckTimer = new Timer (menuCheck, '');
menuCheckTimer.interval = 20;
function menuCheck()
{
//■	if(tf.auto==1) kag.autoModeMenuItem.click();
//■	if(tf.skip==1) kag.skipToNextStopMenuItem.click();
	if(sf.rclick==2) sb.onSkipButtonClick();
	if(sf.rclick==3) sb.onAutoButtonClick();
	menuCheckTimer.enabled = false;//タイマー停止
//■	if(tf.auto==1) tf.auto=0;
//■	if(tf.skip==1) tf.skip=0;
}

function setDefaultWithAsk(storage, target)//■デフォルトに戻すダイアログを表示させる関数
{
//■	playSysVoice(getSV.default);
//■	kag.se[1].play(%[storage:file]);
	if(askYesNo(,,"d")) kag.process(storage, target);
}

function drawTextButton(n,text)
{
	with (kag.current.links[n].object)
	{
		.font.height = 36;
		.font.face   = &sf.face;
		.font.bold   = &sf.bold;
		var x = 70;
		var y = 9;
		// ボタンの「通常の状態」部分に文字列を描画
		.drawText(x,               y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		// ボタンの「ボタンが押された状態」部分に文字列を描画
		.drawText(x+.width,        y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		// ボタンの「ボタンの上にマウスカーソルがある状態」部分に文字列を描画
		.drawText(x+.width+.width, y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
	}
}

function drawTextButton2(n,text)
{
	with (kag.current.links[n].object)
	{
		.font.height = 32;
		.font.face   = &sf.face;
		.font.bold   = &sf.bold;
		var x = 45;
		var y = 11;
		.drawText(x,               y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width,        y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width+.width, y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
	}
}

function drawTextButton3(n,text)
{
	with (kag.current.links[n].object)
	{
		.font.height = 28;
		.font.face   = &sf.face;
		.font.bold   = &sf.bold;
		var x = 35;
		var y = 13;
		.drawText(x,               y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width,        y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width+.width, y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
	}
}

function drawTextButton4(n,text)
{
	with (kag.current.links[n].object)
	{
		.font.height = 36;
		.font.face   = &sf.face;
		.font.bold   = &sf.bold;
		var x = 70;
		var y = 9;
		.drawText(x,                      y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width,               y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width+.width,        y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
		.drawText(x+.width+.width+.width, y, text, 0x000000, 255, true, &sf.shadowlevel, 0xffffff, &sf.shadowwidth, &sf.shadowofs, &sf.shadowofs);
	}
}

@endscript

@return
