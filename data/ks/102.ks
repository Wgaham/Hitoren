;碧里ルート０２.txt

;◆碧里ルート二日目
;◆暗転
;＜背景：自室＞
@bgm_stop
@bg f=bg900
@bg f=bg400
@bg f=bg030

@se0 f=目覚まし_ピピピ loop=true

;[無]ピピピピピ。[z]

[和樹]「嗯……」[z]

@se0 f=スイッチ_カチ

;ＢＧＭ開始
@bgm f=bgm01

[無]与昨天在相同的时间，闹钟提前发出了悦耳的铃声。[z]

[無]并不是红的恶作剧。[z]

[無]我是自己想要早起的。[z]

[和樹]「好，起床」[z]

;＜背景：リビング＞
@bg f=bg010
@se0 f=ドア開閉

@st2 f=st07000006

[和樹]「咦，老姐，这种时候看到你还真是稀奇」[z]

@st2 f=st07000008
@st2_nod
[メグ]「呼啊。要值日啊。早点去，把黑板擦干净，给花儿浇水」[z]

[和樹]「那也没必要起这么早吧？」[z]

@st2 f=st07000011
[メグ]「谁都不想在给花儿浇水的时候被人看到吧。所以要乘着学校没人干，明白了？这就是少女心」[z]

[和樹]「这是哪门子少女心」[z]

@st2 f=st07000000
[メグ]「那，和树君为什么又这么早起来呢？」[z]

[和樹]「呃？」[z]

@st2 f=st07000015
[メグ]「嗯？？」[z]

[和樹]「我、我也要值日啊。给花浇水什么的」[z]

@st2 f=st07000014
[メグ]「呼——都辛苦了」[z]

[和樹]「……」[z]

[和樹]「我可以换台吗？」[z]

@st2 f=st07000001
[メグ]「随便」[z]

@st2_del

@se0 f=スイッチ_ピッ

[無]我记得昨天，好像是这个台吧……[z]

[ジャスティンローラ]「贾斯汀萝拉老师的，今日星座占卜」[z]

@st2 f=st07001013

[メグ]「这老太婆怎么回事，穿的那么客气，还自己叫自己老师」[z]

[和樹]「你先闭上嘴」[z]

@st2_del

@se0 f=コミカル_チャラララー

[ジャスティンローラ]「啊啦啦，继昨天的好运，您今天也会心想事成哦」[z]

[和樹]「噢噢，就是我」[z]

[ジャスティンローラ]「幸运色是红色。身上带着红色的东西的话，毫无疑问，一定会发生幸运的事情的」[z]

[和樹]「红色吗。穿条红内裤行不行啊。但是我也没有红内裤」[z]

@st2 f=st07000007
[メグ]「我倒是有」[z]

[和樹]「没问你」[z]

@st2 f=st07000011
[メグ]「……」[z]

@st2 f=st07000012
[メグ]「和树君信这种东西啊」[z]

[和樹]「什么叫这种东西，我跟你说千万别小看了她，贾斯汀波拉老师的占卜可是」[z]

@st2 f=st07000070
[メグ]「名字都说错了」[z]

[和樹]「哎呀，不能在这里磨蹭。我出发了！」[z]

@se0 f=ドア開閉

@eval exp="f.window=1"

@st2 f=st07001011
[メグ]「……」[z]

@st2 f=st07001009
[メグ]「哼哼。年轻就是好呀」[z]

;◆時間経過
;＜背景：電車内＞
@eval exp="f.window=0"
@bgm_stop
@bg f=bg900
@bg f=bg120
@bgm f=bgm02

@se0 f=電車内_ガタンガタン

[無]……与昨天相比，电车里要空旷多了。[z]

[無]原来如此，正如园原所说，昨天是因为电车事故这趟车才会这么挤，平常都是很空的。[z]

[無]虽然找不到座位，但乘客也并不很多。[z]

[無]我就这样靠在车门边思索。[z]

[和樹]「……」[z]

[無]这种情况的话，昨天的事件看来是无望了。[z]

[無]不行不行，我在想什么呢。[z]

[和樹]「呼」[z]

@st1 f=st04001020 left=-300
[紅]「可疑」[z]

@q
[和樹][font size=60]「呜哇。红！？」[z]

@st1 f=st04000056 left=-300
[紅]「在电车里笑得鼻孔鼓的那么大，如果你不是咱的兄长，咱在旁边看着都觉得恶心」[z]

[和樹]「红、红。你为啥会在这」[z]

@st1 f=st04000003 left=-300
[紅]「你那么早就兴高采烈地出门了，肯定没安好心，所以咱就追过来了」[z]

[和樹]「什么」[z]

@st3 f=st00000241 left=650
@st1_move time=200
@st3_move time=300
@wm
@wm

[碧里]「咦，红。真难得呀，你竟然在这个时间乘电车」[z]

@st1 f=st04000055

[和樹]「园原！」[z]

[無]园原带着精力充沛的表情进了电车。[z]

@st3 f=st00000101
@st3_nod
[碧里]「早上好，学长。红怎么回事」[z]
;■ボイス分割したい

@st1 f=st04000061
[紅]「事情是这样的，这个男人一大早就兴高采烈地出门了，肯定在打什么坏主意」[z]

@st3 f=st00000241
[碧里]「坏主意？」[z]

@st1 f=st04000064
[紅]「关键词是三文之德！」[z]

@st3 f=st00000206
[碧里]「指早起吗？　原来如此。所以学长上学比以前早了」[z]

@st1 f=st04000035
[紅]「因为是兄长，肯定是为了什么不好的东西才会对这可疑的三文之德趋之若鹜」[z]

@st1 f=st04000028
[紅]「若不是这样，起床困难户的兄长，不可能特意这么早起来」[z]

@st1 f=st04000003
[紅]「所以咱才要像这样监视他」[z]

[和樹]「监视……。什么情况」[z]

@st3 f=st00000111
[碧里]「原来如此。寻找三枝学长的三文之德吗！我也好想知道」[z]

[無]红瞎说了一通，把园原也忽悠进去了。[z]

[無]从这个角度看的话，她们俩关系还挺好的嘛。[z]

@st3 f=st00000213
[碧里]「要我推断的话肯定是这么回事，早早起床，去参加某个社团的社团晨练？」[z]

@st1 f=st04000056
[紅]「蠢猪」[z]

[和樹]「那倒不会，园原」[z]

@st3 f=st00000140
[碧里]「咦！？」[z]

@st1 f=st04000023
[紅]「作为妹妹，咱充分了解兄长的性癖。大致上咱还是可以猜到的」[z]

[和樹]「还性癖呢，你又知道我什么」[z]

@st1 f=st04000011
[紅]「看，那所开在路边的爱情旅馆。从窗户外可以看见下流的光景，兄长一定是为了这个……」[z]

@st3 f=st00000128
[碧里]「学、学长，真糟糕」[z]

[和樹]「糟糕的是你们的妄想」[z]

[和樹]「才不是为了那个」[z]

[和樹]「早点去学校，然后浇花，去帮值日生的忙，最后预习一个小时」[z]

[和樹]「像这样，身心怡然，度过健康而又美好的一天」[z]

;◆キラーン、といった効果音を重ねられたら
@se0 f=コミカル_ピキーン

[和樹][font size=60]「早起真美妙啊」[z]

;●立ち絵を揺らしたい

@st1 f=st04000058
[紅]「嘎哒嘎哒。兄长、刚刚、好像说了很可怕的话」[z]

@st3 f=st00000225
[碧里]「根本不符合他的个性」[z]

@bgm_stop_notime

;◆ガタンと、電車が揺れる演出。
@q
[無]ガタン[z]

@st1_del
@st3_del
@st4 f=st00001240 left=200
@st2 f=st04001051
@st4_jump left=200
@st2_jump
@q
[紅][font size=60]「哎哟──」[z]

@q
[和樹][font size=60]「呜哇」[z]

[無]电车摇晃了一下，红朝我这边倒过来。[z]

[無]专注在交谈中的我并没有抓住扶手，[z]

[無]于是平衡崩溃了。[z]

[無]噗扭。[z]

[無]倒向了园原站着的地方………[z]

@bgm f=bgm09

@st_all_del
@bg_notime f=ev101_00

@q
[碧里][font size=60]「呀——————」[z]

[無]与昨天相同的亲密距离。[z]

[和樹]「抱、抱歉」[z]

[碧里]「没、没事……」[z]

[無]不过，怎么说呢……。[z]

[無]真棒。[z]

@eval exp="f.window=1"

[紅]「！？」[z]

[紅]「（那是在欢呼的姿势吗！？）」[z]

;＜背景：電車内＞
;@bg f=bg020
;@st2 f=st04000054
[紅]「难道说，所谓的三文之德……」[z]

;@st2 f=st04000051
[紅]「不对不对。咱想多了，既然是兄长，肯定不会满足于那点程度的胸部的」[z]

;@st2 f=st00000200
[碧里]「红你一直在嘀嘀咕咕些什么呢」[z]

;@st2 f=st04000064
[紅]「哼。这种胸部，也不怕被人笑话」[z]

;@st2 f=st00000240
@q
[碧里][font size=60]「什么鬼！？」[z]

;◆時間経過
;＜背景：桜並木＞
@bgm_stop
@bg f=bg900
@bg f=bg150
@eval exp="f.window=0"
@bgm f=bgm02

@st1 f=st04000060
@st3 f=st00000122
[碧里]「三枝学长为什么要早起，到最后还是没弄明白」[z]

[和樹]「这个话题先告一段落吧」[z]

@st1 f=st04000058
@st1_jump
[紅]「你就省省吧！」[z]

@st1 f=st04000054
[紅]「阴暗的兄长会连续两天早起出门，必定有什么名堂」[z]

[和樹]「昨天是因为你调快了闹钟吧」[z]

@st1 f=st04000021
[紅]「那，今天是因为什么」[z]

[和樹]「这个……」[z]

[和樹]「我发现早起很爽啊，就是这样」[z]

@st3 f=st00000201
[碧里]「那也就是说，昨天早起发生了什么好事，所以今天也早起试试」[z]

@q
[和樹]「吓」[z]

@st_all_del
@st2 f=st00001231
[碧里]「昨天他碰到了我……」[z]

@q
[和樹][font size=60]「吓」[z]

@st2 f=st00001103
[碧里]「我知道了，学长，是为了那个」[z]

@q
[和樹][font size=120]「吓！」[z]

@st2 f=st00001271
[碧里]「前辈，其实是喜欢的吧」[z]

[和樹]「什什什什，什么」[z]

@st2 f=st00001130
@st2_jump
[碧里]「请不要装傻，明明昨天做的那么熟练」[z]

[和樹]「熟熟熟、熟练！？」[z]

;◆回想：昨日、ハプニングで園原の胸をさわってしまったシーンを回想。
@st_all_del
@eval exp="f.sepia=1"
@bg_notime f=ev101_00

;@st2 f=st00001260
[和樹]「误会啊，我并不是有意而……」[z]

@eval exp="f.sepia=0"
@bg_notime f=bg150

@st2 f=st00001232
[碧里]「是为了那个吗，是的话跟我说不就好了」[z]

[和樹]「不、不不。我绝对不是，为了那个，并不是那样的。只是觉得，不可抗力地，发生了幸运的事」[z]

@st2 f=st00001273
[碧里]「微糖（日语中“微糖”与“美頭”同音，男主理解成了“美丽的乳头”）」[z]

[和樹]「美美美美、美头！？」[z]

[無]ごくり。[z]

[和樹]「等等！园原，你在说什么呢！隔着衣服，我又怎么会知道得那么清楚」[z]

@st2 f=st00001141
[碧里]「什么？」[z]

[和樹]「不过，既然园原……有自信这么说，那就是美丽的乳头」[z]

@st2 f=st00001142
[碧里]「好了吗？」[z]

@st2 f=st00000206
[碧里]「那，请先等等」[z]

@se0 f=足音_屋外_タッタッタッ_フェードアウト

@st2_move left=-1300 time=400
@wm
@st2_del

[無]说完，园原跑开了。[z]

[和樹]「额额，園原？？」[z]

@st2 f=st04001021
[紅]「你们在讲什么啊，美头？」[z]

[和樹]「红，你先闪一边去」[z]

[無]我慌慌张张地把红支开。[z]

@st2 f=st04000063

[紅]「搞什么啊，这么突然」[z]

[和樹]「好像有不得了的事情要发生了」[z]

@st2 f=st04000003
@st2_jump
@wm
@st2_jump

[紅]「啥啥啥，要发生啥事」[z]

[和樹]「美头的时间」[z]

[無]咕噜，我紧张得咽了下口水。[z]

@se0 f=足音_屋外_タッタッタッ_フェードイン

@st2_del
@st3 f=st04000004 left=-300
@st1 f=st00000152 left=-1200
@st3_move
@st1_move
@wm
@wm

[無]园原回来了。好像也没有什么特别的变化……。[z]

@st1_del
@st2 f=st00001103
@st2_nod
[碧里]「咖啡，给」[z]

[和樹]「……」[z]

[和樹]「咖啡……？」[z]

[無]园原一边伸出手一边说，[z]

@st2 f=st00001111
[碧里]「还有，给我120元。那边的自动贩卖机有卖，这次请自己花钱买」[z]

[和樹]「啊、啊啊」[z]

[無]我茫然的取出零钱交给园原。[z]

@st2_del
@st1 f=st00000100
@st3 f=st04000001
[紅]「这样啊，昨天碧里请兄长喝了咖啡。为什么，又」[z]

@st1 f=st00000141
@st1_jump
[碧里]「呃、呃」[z]

[無]在红的吐槽下动摇了的园原望着我。[z]

[和樹]「看我也没用啊。话说，是为了什么来着」[z]

[無]事到如今，我也搞不清为什么我会被请喝咖啡了。[z]

@st1 f=st00000240
@st1_jump
[碧里]「我、我不知道。那，我先告辞了。要去晨练！」[z]

@se0 f=足音_屋外_タッタッタッ_フェードアウト

@st1_move left=-1300 time=300
@wm
@st1_del

[無]一溜烟就跑开了。[z]

[和樹]「……」[z]

[無]望着园原的背影，我总觉得有些好笑。[z]

[無]抿了抿手中的罐装咖啡。[z]

[和樹]「三文之德、吗」[z]

[和樹]「呼」[z]

[無]神清气爽的早晨。[z]

@eval exp="f.window=1"

@st3_del
@st2 f=st04001020
[紅]「……」[z]

@st2 f=st04001021
[紅]「可疑」[z]

@eval exp="f.window=0"

@jump2 storage=103.ks
