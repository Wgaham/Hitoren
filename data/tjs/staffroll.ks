@clearvar
;@layopt layer=message0 page=fore visible=false opacity="&sf.opcity"
;@layopt layer=message0 page=back visible=false opacity="&sf.opcity"
;@layopt layer=message1 page=fore visible=false opacity="&sf.opcity"
;@layopt layer=message1 page=back visible=false opacity="&sf.opcity"
;@layopt layer=message2 page=fore visible=false
;@layopt layer=message2 page=back visible=false
;@layopt layer=message3 page=fore visible=false
;@layopt layer=message3 page=back visible=false
;@layopt layer=message4 page=fore visible=false
;@layopt layer=message4 page=back visible=false
;@sysbtopt forevisible=false
;@sysbtopt backvisible=false
;@freeimage layer=0 page=fore
;@freeimage layer=0 page=back
;@freeimage layer=1 page=fore
;@freeimage layer=1 page=back
;@freeimage layer=2 page=fore
;@freeimage layer=2 page=back
;@freeimage layer=3 page=fore
;@freeimage layer=3 page=back
;@freeimage layer=4 page=fore
;@freeimage layer=4 page=back
;@freeimage layer=base page=fore
;@freeimage layer=base page=back

@fadeoutse_all
@bgm_stop
@playbgm storage=bgm92 loop=false

;■初期化
@staffroll_init layer=message4

;■文字列を描画
@staffroll_set page=fore storage=staffroll.ks target=*text

;■スタッフロール開始、timeは文字が止まるまでの時間、実際のトータル時間はtransとwaitの合計時間
@staffroll_start time=170000 startdisp=720 enddisp=396

;--------------ここから背景変更のための小細工なので削除可能--------------

;■左クリックでスタッフロールをスキップ。実装的にいまいち
;■１回目のクリアから、スキップ可能
;■右クリックでもスキップできる用にしたかったが、スタッフロール中は効かない模様
;@rclick enabled=true jump=true target=*staffroll_stop
;@position layer=message6 page=fore visible=true
@current layer=message4
@click storage=staffroll.ks target=*staffroll_end

@backlay
@layopt layer=message0 page=back visible=false opacity="&sf.opcity"
@layopt layer=message1 page=back visible=false opacity="&sf.opcity"
@sysbtopt backvisible=false
@freeimage layer=0 page=back
@freeimage layer=1 page=back
@freeimage layer=2 page=back
@freeimage layer=3 page=back
@freeimage layer=4 page=back
@image layer=base page=back storage=base_staffroll0
[trans method=crossfade time=2000][wt]
@wait time=5000

@backlay
@image layer=base page=back storage=base_staffroll1
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll2
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll3
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll4
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll5
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll6
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll7
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll8
[trans method=crossfade time=2000][wt]
@wait time=18000

@backlay
@image layer=base page=back storage=base_staffroll0
[trans method=crossfade time=2000][wt]
@wait time=6000

;--------------ここまで背景変更のための小細工なので削除可能--------------

;■終了まで待つ。この前に背景のトランジションだとかの効果を入れればいい
;■imageのトランスを canskip=false にしていると、最後のimageが表示完了するまでスキップできない
@staffroll_wait canskip=true lastpos=true

;■スタッフロールを強制停止する
;■最後のimage表示（トランス）完了がトリガーで強制停止する
;@staffroll_stop lastpos=true

;■スタッフロールを完全に終了する
@staffroll_end

@stoptrans
@bgm_stop
@eval exp="f.AutoRepage=true"
@layopt cond="!kag.skipMode && sf.effect" layer=message4 page=back visible=false
@layopt cond="kag.skipMode || !sf.effect" layer=message4 page=fore visible=false
;■waitclickは必ず止まる（スキップ中であっても）。クリックしないと進まない。
;@waitclick
@jump2 cond="tf.root=='aori'" storage=116.ks
@jump2 cond="tf.root=='sakura'" storage=216.ks
@jump2 cond="tf.root=='natume'" storage=419.ks
@jump2 storage=419.ks

*staffroll_end
@stoptrans
@bgm_stop
@staffroll_stop lastpos=true
@staffroll_end
@eval exp="f.AutoRepage=true"
@layopt cond="!kag.skipMode && sf.effect" layer=message4 page=back visible=false
@layopt cond="kag.skipMode || !sf.effect" layer=message4 page=fore visible=false
;■waitclickは必ず止まる（スキップ中であっても）。クリックしないと進まない。
;@waitclick
@jump2 cond="tf.root=='aori'" storage=116.ks
@jump2 cond="tf.root=='sakura'" storage=216.ks
@jump2 cond="tf.root=='natume'" storage=419.ks
@jump2 storage=419.ks


*text
@position layer=message4 marginl=830
@nowait
@font size=800
[r]
@font size=20 color=0xffffff face="微软雅黑Bold,微软雅黑" bold=true edge=true edgecolor=0x000000
企画・原案[font size=30][r]
天都
[r]
[font size=20]シナリオ[font size=30][r]
天都
十全
藤島昼
たにかわたかみ
[r]
[font size=20]シナリオ統括[font size=30][r]
アンのうん
天都
[r]
[font size=20]原画[font size=30][r]
夕凪セシナ
ぱん太
柊暁生
[r]
[font size=20]デフォルメＣＧ[font size=30][r]
たかへろ
[r]
[font size=20]ミニキャラ[font size=30][r]
いずのケンタ
[r]
[font size=20]音楽[font size=30][r]
山下航生（doubleeleven）
rian
[r]
[font size=20]ＣＧ彩色[font size=30][r]
路
霧瀬ミツル
村政竜之輔
合同会社ロングショット
[r]
[font size=20]インターフェイスデザイン[font size=30][r]
雪音あんず
[r]
[font size=20]背景[font size=30][r]
やっくん
アンのうん
[r]
[font size=20]演出[font size=30][r]
椎名
佐久間 ゆき
松田典弘
栖
[r]
[font size=20]システム[font size=30][r]
栖
[r]
[font size=20]ＯＰムービー[font size=30][r]
yo-yu
[r]
[font size=20]キャスト[font size=30][r]
園原碧里：美々永跳
蒼木夏芽：遠野そよぎ
玉森桜：あじ秋刀魚
寿りさ：五行なずな
[r]
三枝紅：藤咲ウサ
三枝メグ：守田羽糸 
五味渕千乃：百瀬ぽこ
羽田野阿知華：春河あかり
三枝さちこ：杉原茉莉
三枝薫：黒衣虹男
羽田野俊彦：子太明
蒼木恭次郎：水樹空
園原万里：杉原茉莉
[r]
[font size=20]主題歌[font size=30][r]
「春色メロディ」
[font size=20]ボーカル[r][font size=30]
NANA
[font size=20]作詞・作曲[r][font size=30]
rian
[font size=20]編曲[r][font size=30]
山下航生（doubleeleven）
[r]
[font size=20]挿入歌[font size=30][r]
「繋ぐ想い」
[font size=20]ボーカル[r][font size=30]
Manaca
[font size=20]作詞・作曲[r][font size=30]
rian
[font size=20]編曲[r][font size=30]
山下航生（doubleeleven）
[r]
[font size=20]ＥＤテーマ[font size=30][r]
「恋ココロ」
[font size=20]ボーカル[r][font size=30]
西沢はぐみ
[font size=20]作詞・作曲[r][font size=30]
rian
[font size=20]編曲[r][font size=30]
山下航生（doubleeleven）
[r]
[font size=20]収録[font size=30][r]
ABSOLUTEスタジオ
[r]
[font size=20]収録補助[font size=30][r]
朝霧隼人
[r]
[font size=20]スペシャルサンクス[font size=30][r]
スタジオ雲雀
[r]
[font size=20]デバッグ[font size=30][r]
ASa Project　ALL STAFF
[r]
[font size=20]文本汉化(tieba ID)[font size=30][r]
Miku_Su
凌月楓
Wgaham
[r]
[r]
[font size=20]制作・著作[font size=30][r]
ASa Project
@endnowait
@resetfont
@return
