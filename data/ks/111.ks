;碧里ルート１１.txt

;◆暗転
;昼
;＜背景：教室＞
@bgm_stop
@bg f=bg900
@bg f=bg230
@eval exp="f.window=1"
@bgm f=bgm05

[女子生徒Ａ]「呐呐，三枝同学」[z]

@st2 f=st04000001
[紅]「什么事」[z]

[女子生徒Ａ]「园原同学她」[z]

@st2 f=st04000051
[紅]「碧里怎么啦？」[z]

[女子生徒Ｂ]「啊，武田同学也知道的吧？」[z]

[女子生徒Ａ]「知道知道。已经传得风生水起了」[z]

[女子生徒Ｂ]「没错没错，风生水起。园原同学她」[z]

[女子生徒Ａ＆女子生徒Ｂ]「「恋爱了」」[z]

@st2 f=st04000064
@st2_jump
[紅]「额额！？　碧里、恋爱！？」[z]

[女子生徒Ｂ]「三枝同学，你和园原同学关系最好，没察觉吗」[z]

[女子生徒Ａ]「我看到她和一个帅爆了的男生走在一起呢」[z]

[女子生徒Ａ]「嘛，园原同学长的那么漂亮，没有点底子，哪里配得上呀」[z]

[女子生徒Ａ]「虽然我也挺看好她和三枝同学的哥哥……」[z]

@st2 f=st04000053
[紅]「姆」[z]

@st2 f=st04000059
[紅]「碧里配兄长太浪费了！」[z]

[女子生徒Ｂ]「怎么了，三枝同学，突然这么说」[z]

[女子生徒Ｂ]「嘛，确实也是。园原同学又漂亮性格又好，更好的人选数不胜数呢」[z]

@st2 f=st04000063
[紅]「姆」[z]

@st2 f=st04001064
@st2_jump
@q
[紅][font size=60]「话不能这么说」[z]

[女子生徒Ａ]「哎呀，刚刚你自己也说了吧！」[z]

@st2 f=st04000056
[紅]「是、是吗。抱歉」[z]

;夜
;＜背景：繁華街‐夜＞
@bgm_stop
@bg f=bg900
@bg f=bg132

@st2 f=st04010001
[紅]「嗯？  那是、碧里？」[z]

@st2_del
@bgm f=bgm17

@st1 f=st00010161
@st3 f=st12010164
[碧里]「所以说，呐……！」[z]

@st3 f=st12010163
[万里]「吵死了，别管我。回见」[z]

@se0 f=足音_屋外_タッタッタッ_フェードアウト

@st1 f=st00010163
@st3_move left=600
@st1_move left=-300

[碧里]「等等……！」[z]
@wm
@st_all_del

@bgm_stop

@st2 f=st00010152
@st2_nod
[碧里]「……哈啊，真是的」[z]

@bgm f=bgm08

@st_all_del
@st1 f=st04010021
@st3 f=st00010152
[紅]「吵风流架」[z]

@st3 f=st00010240
@st3_jump
@q
[碧里]「呜哇！红？？你在这干什么」[z]

@st1 f=st04010011
[紅]「那是咱的台词，你刚刚在和一个帅哥讲话吧。那是……」[z]

@st3 f=st00010127
[碧里]「啊啊、那是……。没什么，只是个街上的推销员」[z]

@st1 f=st04010051
[紅]「不像你说的那样啊」[z]

@st3 f=st00010151
[碧里]「是吗？嘛、管他的」[z]

;@st3_del
;@bg_notime f=bg900
@st1 f=st04010061
[紅]「（为何一定要隐瞒。这、果然……）」[z]

@st1 f=st04010036
[紅]「（那就是传言中的恋爱对象！）」[z]

@st1 f=st04010039
[紅]「嚯嚯。碧里挺能干的嘛」[z]

@st3 f=st00010140
[碧里]「呃、呃呃。什么意思？」[z]

@st1 f=st04010023
@st1_jump
[紅]「还装，还装」[z]

@st3 f=st00010142
[碧里]「？？」[z]

@st1 f=st04010003
[紅]「不对～咱好像略微想错了」[z]

@st1 f=st04010010
[紅]「万一，碧里和兄长………哎呀，还是不要这么想」[z]

@st1 f=st04010036
[紅]「八竿子打不着的事情」[z]

@st3 f=st00010241
[碧里]「？？到底要……」[z]

@st1 f=st04010056
[紅]「没、没什么」[z]

@st1 f=st04010055
[紅]「（咱，为什么要这么疑神疑鬼呢……）」[z]

@st1 f=st04010091
[紅]「啊哈哈，真搞不懂」[z]

@st3 f=st00010242
[碧里]「？？？确实搞不懂？什么事」[z]

;◆日付変更
;朝
;＜背景：桜並木＞
@bgm_stop
@bg f=bg900
@eval exp="f.window=0"
@bg f=bg150
@bgm f=bgm02

@st2 f=st00001100
[碧里]「下个星期天，和树有时间吗」[z]

[無]上学时，碧里试探性地向我问到。[z]

[和樹]「啊啊，没其他事」[z]

@st2 f=st00001103
@st2_jump
[碧里]「太好了」[z]

[和樹]「？？怎么了」[z]

@st2 f=st00000204
[碧里]「就是啊就是啊。难得社团放假了」[z]

[和樹]「是吗，你说过大赛快来了，这样好吗」[z]

@st2 f=st00000212
[碧里]「还是要适当地休息一下」[z]

@st2 f=st00000213
[碧里]「就是这样」[z]

[和樹]「嗯」[z]

;◆効果音：パンパカパーンみたいな音を重ねられたら
@se0 f=コミカル_ジャンジャカジャーン

@st2 f=st00000211
@st2_jump
[碧里]「约会吧！」[z]

[和樹]「约会？好啊」[z]
@st2 f=st00000103
@st2_jump
[碧里]「太好了」[z]

[和樹]「话说，我们还没正正经经出去过呢」[z]

@st2 f=st00000204
@st2_nod
[碧里]「就是，充其量只去过学长房间一次」[z]

[和樹]「去哪儿呢」[z]

@st2 f=st00000111
@st2_jump
[碧里]「交给我吧，我去做一份约会流程图」[z]

[無]说着，碧里像男子汉一样挺起了胸脯。[z]

[和樹]「不要那种流程图一样的东西好些吧？玩的开一些」[z]

[無]正常情况下，应该是男性更喜欢流程图，女性更喜欢开放。[z]

@st2 f=st00000263
[碧里]「那可不行，学长。这是很重要的约会，如何才能最高效率地享受，必须事先拟定好流程」[z]

@st2 f=st00000111
[碧里]「我挺喜欢设计流程，让我做吧」[z]

[無]感觉她兴奋过头了。[z]

@st2 f=st00000103
[碧里]「因为是我约你，我一定会精炼出最好的流程的」[z]

[和樹]「啊、碧里？也让我帮帮忙吧」[z]

@st2 f=st00000206
[碧里]「啊哈哈。总之交给我吧」[z]

[和樹]「那，下次出去玩的时候就用我的流程吧，碧里只要乖乖上船就好了」[z]

@st2 f=st00000204
[碧里]「是、是。我一定对学长的流程“以身相许”」[z]

@st2 f=st00001162
[碧里]「啊，不过大宝剑全套什么的可不行哟」[z]

@q
[和樹][font size=60]「呃呃！？」[z]

@st2 f=st00001164
[碧里]「什么呃呃！？啊。耍帅说出那些话就是为了这种企图！？」[z]

[和樹]「开玩笑的」[z]

[和樹]「不过，选哪家甜品店之类的小事随你吧」[z]

@st2 f=st00001131
[碧里]「…………」[z]

;@st2 f=st00000
[碧里]「甜品店、小事！？。这可是约会啊。行吗？」[z]

[和樹]「我明白了！」[z]

[無]好想快点到第二次约会那天啊。[z]

@st2 f=st00000270
[碧里]「真是」[z]

;◆日付変更
;昼
;＜背景：繁華街＞
@bgm_stop
@bg f=bg900
@bg f=bg130
@bgm f=bgm30

@st2 f=st00020100
[無]到了约好的地方，碧里已经在那里了。[z]

[和樹]「哟」[z]

@st2 f=st00020103
@st2_jump
[碧里]「哟！」[z]

[和樹]「噢噢」[z]

@st2 f=st00020201
[碧里]「什么嘛，看到我有那么吓人吗」[z]

[無]正确的说法是被碧里的打扮吓到了。[z]

[無]和穿着私服的碧里出门真新鲜呀。[z]

[無]碧里仿佛没察觉到我的动摇一样，翻开了笔记本专注地看着。[z]

@st2 f=st00020212
[碧里]「呵呵呵，可考虑了一通宵哦」[z]

@st2 f=st00020213
[碧里]「在杂志上调查了好久」[z]

[無]说着碧里摊开了校用的草稿纸。当下已经不会把笔记做在笔记本上了吧。[z]

@st2 f=st00021213
[和樹]「给我看看」[z]

@st2 f=st00020260
@st2_jump
[碧里]「哎哟。那可不行」[z]

[無]伸过头去，碧里马上把笔记盖住了。[z]

[無]好像画了很多图表和小人物，[z]

[無]不是要规划约会行程吗，她到底写了什么。[z]

@st2 f=st00020101
[碧里]「首先是看电影。学长喜欢电影吗？」[z]

[和樹]「嘛、算是……」[z]

[無]要看情况。[z]

@bgm_stop

@st2 f=st00020102
@st2_jump
[碧里]「那好」[z]

@bgm f=bgm08

[おっさん]「喜欢足球吗」[z]

@st2 f=st00020190
@st2_jump
[碧里]「很喜欢！」[z]

@st2 f=st00020141
@st2_jump
[碧里]「……你哪位」[z]

[おっさん]「哈哈哈」[z]

[無]好像被一个很可疑的大叔搭话了。[z]

[おっさん]「我这里有不错的座位哟」[z]

[無]说着大叔朝我微笑着。[z]

[おっさん]「你女朋友真可爱。挺会哄女孩子嘛」[z]

[おっさん]「（小哥。看足球看得起劲了，今晚你也能当前锋Hat Trick（一夜三次郎）哟？）」[z]

[和樹]「……」[z]

[無]有、有问题。[z]

[和樹]「我们走吧，碧里」[z]

@st2 f=st00020270
[碧里]「足球……」[z]

[無]完全被吸引了啊。[z]

[和樹]「大叔，您是」[z]

[無]大叔摘下棒球帽，哈哈哈地笑了出来。[z]

[おっさん]「黄牛罢了」[z]

[和樹]「现在还有黄牛党吗」[z]

@st2 f=st00020211
[碧里]「学长喜欢足球吗」[z]

[和樹]「决赛之类比较有激情的，还是会看的」[z]

@st2 f=st00020260
@st2_jump
[碧里]「那可不行，男孩子生下来就要梦想着有一天能生出翅膀」[z]

[和樹]「你那么感兴趣的话，就去看足球吧」[z]

@st2 f=st00020264
@st2_nod
[碧里]「就是这样，与生俱来的」[z]

@st2 f=st00020220
[碧里]「相传初期设定是有会踢足球这一点的，后来考虑到足球服萌不起来所以就放弃了」[z]

@bgm_stop

[和樹]「什么鬼」[z]

@bgm f=bgm30

[和樹]「嘛，算了……大叔，给我两张」[z]
@st2 f=st00020140
@st2_jump
[碧里]「学、学长？？去看足球吗？？？」[z]

[和樹]「因为你一副那么想去看的样子」[z]

@st2 f=st00020171
[碧里]「约会的时候去看球赛，抱歉了」[z]

[和樹]「没什么。这不是常有的吗，去给球赛当拉拉队」[z]

@st2 f=st00020271
[碧里]「可是，和树你不怎么看球啊……」[z]

[和樹]「那你就让我明白哪里有趣吧」[z]

@st2 f=st00020111
@st2_jump
[碧里]「……知道了。交给我吧！」[z]

;暗転
;＜背景：空＞
@bgm_stop
@bg f=bg900
@bg f=bg400

;◆効果音：うおおおおみたいなスタジアムの歓声をのせつつ
@se0 f=スタジアム歓声

[無]………………[z]

;＜背景：繁華街＞
@se0_stop
@bg f=bg900
@bg f=bg130
@bgm f=bgm30

@st2 f=st00021190
@st2_jump
[碧里]「好期待，够激情的」[z]

[和樹]「对啊！」[z]

[無]仿佛被体育场的热情所带动，碧里的脸上泛起了红潮。[z]

@st2 f=st00020168
[碧里]「唔～～～～～」[z]

[和樹]「怎么啦，碧里」[z]

[無]碧里突然握紧拳头念叨着。[z]

@st2 f=st00020211
[碧里]「我想做了」[z]

[和樹]「嘎」[z]

@st2 f=st00020164
@st2_jump
@wm
@st2_jump
[碧里]「什么“嘎”！脸红个什么劲，你在想什么啊」[z]

[和樹]「哎呀，因为你说想做……也就是」[z]

@st2 f=st00020169
[碧里]「嘎」[z]

@st2 f=st00020131
@st2_jump
[碧里]「才才才才、才不是。大白天的我怎么可能说那种话。你当我什么样的女孩。我指的足球。想去踢足球」[z]

[和樹]「啊啊，足球吗。你一开口就是“想做”什么的」[z]

@st2 f=st00020111
[碧里]「我的运动魂好像冒出来了，拜托了」[z]

[和樹]「我倒是明白的你心情，可你突然说要踢足球什么的也没有……」[z]

@st2 f=st00020211
@st2_jump
[碧里]「看看，那边有足球」[z]

[和樹]「噢噢，真的」[z]

[無]一家杂货店的门口摆满了五花八门的商品，还悬挂这一个有些泛黄的足球。[z]

[和樹]「这个多少钱」[z]

@st2 f=st00020102
[碧里]「３０００块」[z]

[和樹]「虾米」[z]

[和樹]「只是一时兴起想要踢踢足球，这也太贵了吧」[z]

@st2 f=st00021190
@st2_jump
@q
[碧里][font size=60]「买！」[z]

[和樹]「！？」[z]

@bg f=bg900
@bg f=bg130

@st2 f=st00020206
[碧里]「姆呼呼，真买了呢」[z]

[和樹]「你的热情到底哪儿来的」[z]

[無]碧里兴奋地抱着球摸来摸去[z]

@st2 f=st00020213
[碧里]「有了这个，想踢足球的时候就能提。真不错。姆呼呼」[z]

[和樹]「挺不错」[z]

@st2 f=st00020211
[碧里]「球类运动要和朋友一起玩」[z]

@st2 f=st00020111
[碧里]「因此，来踢足球吧！」[z]

[和樹]「不了，两个人玩不起来」[z]

[和樹]「去叫几个游泳社的怎么样」[z]

@st2 f=st00020127
[碧里]「呃呃……难得的假期让她们来踢球有点说不出口」[z]

[和樹]「你到底想干嘛」[z]

@st2 f=st00020103
[碧里]「学长叫人的话，大家肯定愿意来」[z]

[和樹]「大家……」[z]

[無]想到了几个人。[z]

[和樹]「千乃倒会来，其他人可真说不定」[z]

[無]碧里在的话，红大概会来。[z]

@st2 f=st00021111
@st2_jump
[碧里]「没关系，是学长的话」[z]

[和樹]「是我的话！？」[z]

[無]这是在鼓励我还是在给我施压。[z]

[無]估计是在试探我的人望。[z]

;＜背景：桜並木＞
@bgm_stop
@bg f=bg900
@bg f=bg150
@bgm f=bgm03

@laycount layers=7
@st0 f=st04010003 left=-880 index=1011
@st1 f=st05010005 left=-710 index=1002
@st2 f=st01010101 left=-530 index=1001
@st3 f=st00020101 left=-300 index=1040
@st4 f=st11010101 left=-90 index=1005
@layopt visible=true page=fore layer=5
@layopt visible=true page=fore layer=6
@image layer=5 storage=st03010200 top=-300 left=80 index=1006
@image layer=6 storage=st02010108 top=-300 left=260 index=1007

[無]……哦哦。出乎意料，来了一大家子。[z]

[和樹]「谢谢你们」[z]

[無]我的人望还是有回报的。[z]

@st_all_del
@freeimage layer=5 page=fore
@freeimage layer=6 page=fore
@laycount layers=5

@st2 f=st11011152
[恭次郎]「我、我有点想哭了和树。这、难不成是最终幕？　惨了，早知道整理下发型的」[z]

@st2_del
@st3 f=st00020240
@st1 f=st02010163
@st1_jump
@q
[りさ]「园原魂淡，你个后辈竟然叫前辈出来，有什么企图」[z]

[和樹]「嘴上这么说人不还是过来了，口嫌体正直」[z]

@st1 f=st02010061
[りさ]「说什么傻话，后辈发起的挑战，我怎么能不接受，所以才过来了」[z]

@st3 f=st00020205

[和樹]「（果然还是想踢球）」[z]

@st_all_del

@st2 f=st05010006
@st2_jump
[千乃]「足球？好呀好呀，我很期待」[z]

[和樹]「千乃，你偷偷把足球藏起来了吧」[z]

@st2 f=st05011040 top=-600
[千乃]「额额！？在哪在哪」[z]

[和樹]「在这里……」[z]

@st4 f=st00020162 left=600
@st4_move left=200

[無]把手伸向她的胸部伸到一半的时候又缩了回来。[z]

@st2 f=st05010001

[和樹]「失礼了！」[z]

[無]不好，跟平常一副德行了。[z]

@st2 f=st05010052
[千乃]「咦？」[z]

@st4 f=st00020128 left=200

[碧里]「姆……」[z]
@st_all_del

@st2 f=st01011162
@st2_jump
[桜]「那样可不好。刚刚想做什么呢」[z]

@st2 f=st05010002
[千乃]「分队玩吧」[z]

@st2_del
@st1 f=st05010002
@st3 f=st04010003
[紅]「那就由提出来的兄长和碧里依次选队友吧」[z]

@st_all_del
[和樹]「行」[z]

@laycount layers=7
@st0 f=st04010003 left=-880 index=1011
@st1 f=st05010005 left=-710 index=1002
@st2 f=st01010101 left=-530 index=1001
@st3 f=st00020101 left=-300 index=1040
@st4 f=st11010101 left=-90 index=1005
@image layer=5 visible=true page=fore storage=st03010200 top=-300 left=80 index=1006
@image layer=6 visible=true page=fore storage=st02010108 top=-300 left=260 index=1007

[一同]「……」[z]
;■ボイスなしでＯＫ

[無]话说回来，选谁呢？[z]

[無]对以后的发展没有影响，放心吧。[z]

[無]但是也不要忘了保存游戏哦。[z2]

;◆チームメイトを選びます。３人選んだら終わりという感じです。
;＞＞選択肢：１．千乃
;＞＞選択肢：２．りさ
;＞＞選択肢：３．桜
;＞＞選択肢：４．夏芽
;＞＞選択肢：５．恭次郎

*select
@select5_short


;◆千乃を選んだ場合
*chino
@endselect2

@st_all_del
@freeimage layer=5 page=fore
@freeimage layer=6 page=fore

@st2 f=st05011007
@st2_jump
@wm
@st2_jump
[千乃]「好呀好呀。我们俩组成最强中场♪」[z]

@st2_del

@jump_111ks_select


;◆りさを選んだ場合
*risa
@endselect2

@st_all_del
@freeimage layer=5 page=fore
@freeimage layer=6 page=fore

@st2 f=st02011108
[りさ]「OK。我明白了。要上的话就拿全国冠军吧，才不是讲梦话什么的」[z]

[無]太有干劲了。[z]

@st2_del

@jump_111ks_select


;◆桜を選んだ場合
*sakura
@endselect2

@st_all_del
@freeimage layer=5 page=fore
@freeimage layer=6 page=fore


@st2 f=st01011111
[桜]「你会选小千乃的吧？待会儿会选的吧，约好了哟」[z]

@st2_del

@jump_111ks_select


;◆夏芽を選んだ場合
*natume
@endselect2

@st_all_del
@freeimage layer=5 page=fore
@freeimage layer=6 page=fore

@st2 f=st03011102
[夏芽]「我吗？谢谢。我从小学开始就开始踢足球了」[z]

@st2_del

@jump_111ks_select

;◆恭次郎を選んだ場合
*kyoujirou
@endselect2

@st_all_del
@freeimage layer=5 page=fore
@freeimage layer=6 page=fore

@st2 f=st11011131
[恭次郎]「哦哦，虽然挺让我高兴，可为什么是我？有点困扰啊」[z]

@st2_del

@jump_111ks_select

;◆ここに合流します。
*endselect
@endselect2

@eval exp="vf.sakura=2"
@eval exp="vf.risa=3"
@eval exp="vf.natume=1"
@eval exp="vf.kyoujirou=2"

@laycount layers=5

@st2 f=st04010022
[紅]「原来如此，你在做人格诊断吗」[z]

@st2 f=st04010026
[紅]「你……」[z]

@st2 f=st04011003
[紅]「喜欢欧派，有时喜欢臀部的自称已满18岁的男子。身高，有人为长得高的，也有认为长得矮的」[z]

@st2 f=st04011015
@st2_jump
[紅]「怎么样！」[z]

[和樹]「话倒是没说错」[z]

@st2 f=st01010162
[桜]「比起那些，还少了个重要的角色」[z]

[和樹]「重要的角色？」[z]

@st_all_del
@st1 f=st01010162
@st3 f=st03010281

[夏芽]「对，没裁判」[z]

@st_all_del
@st0 f=st01010162
@st2 f=st03010281
@st4 f=st00020101
[碧里]「那，队长当裁判吧」[z]

[無]确实很合适。[z]

@st2 f=st03011160
@st2_jump
[夏芽]「不要」[z]

@st2 f=st03011252
[夏芽]「……」[z]

@st2 f=st03011231
[夏芽]「我想……踢足球」[z]

@st_all_del

;◆効果音：ぴーっという笛の音
@se0 f=笛_ピー

[無]哔——。一声尖锐的哨声。[z]

@st2 f=st07011002
[メグ]「我也来」[z]

[無]老姐……。虽然给她发了邮件，但没想到她真来了。[z]

@st2 f=st07011012
[メグ]「弄虚作假绝不容赦」[z]

@st2 f=st07011006
@st2_jump
@q
[メグ][font size=60]「Play Ball！」[z]

@st_all_del
@st1 f=st07010006
@st3 f=st00020224
@st3_jump
[碧里]「那是棒球」[z]

[和樹]「你会当裁判吗？」[z]

@st1 f=st07010009
@st1_nod
[メグ]「嘻嘻嘻，不好意思」[z]

@bg f=bg400

;◆効果音：ぴーっと笛の音
@se0 f=笛_ピー

[メグ]「开球！」[z]

[無]………………[z]

[無]挥洒的汗水。[z]

[無]绽放的青春。[z]

[無]追逐足球的时间转瞬即逝。[z]

;＜背景：桜並木‐夕＞
@bgm_stop
@bg f=bg151
@bgm f=bgm06

;◆効果音：かーかーと、カラスの鳴き声があれば。
@se0 f=カラス

@st2 f=st00020206
[碧里]「哎呀——，玩得真开心！」[z]

@st_all_del
@st3 f=st00020206
@st1 f=st02010163
@st1_jump
@q
[りさ]「喂！你把我们都喊过来，要干什么」[z]

[和樹]「描写足球也没什么意思，画面感不好表现」[z]

@st1 f=st02010173
[りさ]「选项的意义呢！？」[z]


@st3 f=st00020211
[碧里]「没事没事，寿学姐在比赛里收到了5长红牌，也不用那么失落呀，下次再努力！」[z]

@st1 f=st02010073
@q
[りさ]「到底有什么目的！？」[z]

;＜背景：空‐夜＞
;＜背景：桜並木‐夜＞
@bgm_stop
@bg f=bg402
@bg f=bg152
@bgm f=bgm07

@st2 f=st00020130
[和樹]「今天过得很充实」[z]

@st2 f=st00020230
[碧里]「盯……」[z]

[和樹]「怎么啦，难道还想说燃起足球魂了吗」[z]

@st2 f=st00020271
@st2_jump
[碧里]「不是！已经踢够了」[z]

@st2 f=st00020130
[碧里]「不是那样……」[z]

[和樹]「？」[z]

@st2 f=st00020231
[碧里]「那个、那个……」[z]

@st2 f=st00020232
[碧里]「学长好像有点热的样子」[z]

@bgm_stop
[和樹]「……」[z]

;◆ＢＧＭ変更
@bgm f=bgm11

@se0 f=倒れる_パサッ

@st2 f=st00021240
@st2_jump
@q
[和樹]「碧里」[z]

[無]忍不住把碧里抱了过来。[z]

@st2 f=st00021140
@st2_jump
[碧里]「啊呜」[z]

@st2 f=st00021106
[碧里]「请抚平我的这份……燥热。呀姆，嗯……啾、啾、姆」[z]

[和樹]「啾。嗯、啾」[z]

@st2 f=st00021171

[碧里]「啊、好厉害、热热的东西、从口里流出来了……啾、啾。嗯咕、嗯咕、嗯……！」[z]


[碧里]「和树的唾液好烫，脑袋里空空的。哈嗯，啾……」[z]


[碧里]「学长好烫，要沸腾了。啾，姆。呀姆。啾」[z]

[和樹]「我脑袋也晕乎乎的……乱成团了」[z]


[無]这時[z]

@bgm_stop_notime

@se0 f=足音_パサン

@st2 f=st00021140

[無]……啪嚓。[z]

[無]有动静。[z]

[和樹]「呃？」[z]

;◆この辺で、りさの驚愕している立ち絵をたたせてください。
@bgm f=bgm09

@st0 f=st02010091 left=-800
[無]りさが立っていた。[z]

[和樹]「……」[z]


;@st2 f=st00020100
[碧里]「……」[z]

@st_all_del
@st3 f=st00020140

@st1 f=st02010192
[りさ]「……」[z]

[和樹]「你……还没回去吗……」[z]

[無]刚一起踢完足球，我还以为她肯定回去了。[z]

@st1 f=st02010033
[りさ]「感觉你们间的气氛好像有点奇怪」[z]

@st1 f=st02010031
[りさ]「于是装作回去，然后躲起来观察……没想到是这样……」[z]

;@st2 f=st00020140
@st3_jump
[碧里]「啊哇啊哇啊哇」[z]

[和樹]「你啊……」[z]

@st_all_del
@st4 f=st00020140
@st2 f=st02011091
@st2_jump
@q
[りさ][font size=50]「我也吓了一跳，竟然看到了这种事」[z]

[和樹]「那就不要看，早点回去」[z]

@st2 f=st02011163
[りさ]「我的觉得这样不好，要是发出点声音，马上就会被发现，而且连逃跑都来不及！」[z]

[和樹]「你至少遮住眼啊，别盯着这边看」[z]

@st2 f=st0201110a
[りさ]「老爸和老妈在面前做爱，就算不想看也忍不住去看啊。这也是一样的」[z]

[和樹]「哪里一样」[z]

@st2 f=st02011108
[りさ]「所以，看不下去！也想看，惊我一脸」[z]

@st2 f=st02011090
[りさ]「话说你们俩原来是那种关系。感觉有点让人吃惊，总之吓到我了！」[z]

[和樹]「呐，这件事不要告诉别人」[z]

@st2 f=st02011010
[りさ]「不告诉别人？我绝对不会说的」[z]

@st2 f=st02011011
[りさ]「即使是我也不会说出刚才那种越过底线的H台词」[z]

@st2 f=st02011030
[りさ]「『学长的炙热传到我身上了……』咿——！只是复述一遍就让我浑身发颤」[z]
;■ボイス分割したい

@st4 f=st00020240
@st4_jump
;@q
[碧里]「啊哇哇哇」[z]

@st2 f=st02011031
[りさ]「为了妖物不横行于世，将它们封印起来是我的职责」[z]

@st2 f=st02011090
[りさ]「妖孽，做什么是你们的自由，但你们竟然敢出来瞎人眼」[z]

[和樹]「不是你故意偷看吗……」[z]

@st2 f=st02011091
@st2_jump
@q
[りさ]「咿——像大人那样地接吻，真H！」[z]

@se0 f=足音_屋外_タッタッタッ_フェードアウト

;■適度に調整
@st2_move left=800 time=400
@wm
@st2_del

[無]里沙逃开了。[z]

@bgm_stop

[和樹]「……」[z]

@st4_del
@st2 f=st00020140
[碧里]「……」[z]

[無]留下呆若木鸡的我和碧里。[z]

@st2 f=st00020130
[碧里]「我们俩是笨蛋吗」[z]

[和樹]「嘛……客观上来讲是这样」[z]

@st2 f=st00020230
[碧里]「也对。不过……」[z]

;◆ＢＧＭ変調
@bgm f=bgm11

@st2 f=st00020171
[碧里]「和树你把我当笨蛋」[z]

[和樹]「！？」[z]

[和樹]「碧里……！」[z]

@st2 f=st00021141

[無]我再次抱住了碧里。[z]

[無]然后以扑倒的气势吻上了她的嘴唇。[z]

[和樹]「我也是个彻底的笨蛋」[z]

[和樹]「不正常」[z]

@st2 f=st00021171
[碧里]「我才笨，所以越是害羞越想做这种事」[z]

[和樹]「嗯、啾……。姆、啾、哈姆。啾、嗯、嗯」[z]

@st2 f=st00021172
[碧里]「做这种事，真笨。啊呼，啾、嗯……啾、啾」[z]

[和樹]「一定是我更笨，就算被那么说却还是想做」[z]

@st2 f=st00021171
[碧里]「都怪我，笨到做这种事。你要对我负责」[z]

[和樹]「啾啾」[z]

@st2 f=st00021106
[碧里]「啾啾」[z]

@bgm_stop_notime

;◆効果音：ごそっとかすかに動く効果音
@se0 f=足音_パサン

@st2 f=st00021140
[無]……悉索。[z]

[無]有人。[z]

;◆すごい顔で、恭次郎が立っています。
@st0 f=st11010183 left=-800
@bgm f=bgm09

[和樹]「……」[z]

@st0 f=st11010185 left=-800
[恭次郎]「……」[z]

[和樹]「哟、哟」[z]

@st_all_del
@st2 f=st11011195
@q
[恭次郎][font size=60]「啊啊啊啊啊啊啊」[z]

@st2 f=st11011171
@st2_jump
@q
[恭次郎][font size=60]「妈妈！」[z]

@st2 f=st11011185
@q
[恭次郎][font size=60]「我朋友现充了！」[z]

@st2 f=st11011195
@q
[恭次郎][font size=60]「披着羊皮的现充！」[z]

[和樹]「喂、喂。冷静点」[z]

@st2 f=st11011171
[恭次郎][font size=60]「奶奶！」[z]

[和樹]「呐、恭次郎。这件事不要……」[z]

@st2 f=st11010172
[恭次郎]「怎么可能会说，可以的话我想消除记忆」[z]

@st2 f=st11010195
@st2_jump
@q
[恭次郎]「啊啊啊啊啊啊，朋友和学妹互相叫着对方笨蛋，做着笨蛋的事，啾啾啾。啊啊啊啊啊」[z]

@st2 f=st11010185
@st2_jump
@q
[恭次郎]「爆炸吧！不行的话就爆炸吧，然后开创新的宇宙！」[z]

@st2 f=st11010194
@st2_jump
@q
[恭次郎]「哎呀！哎呀！」[z]
;◆とか言いながら、去っていく演出ができたら。

@se0 f=足音_屋外_タッタッタッ_フェードアウト

@st2_move left=600
@wm

@bgm_stop

[無]…………[z]

@bgm f=bgm07

[和樹]「没，没事吧」[z]

@st2 f=st00021231
[碧里]「……我们是现充」[z]

[和樹]「嘛、嘛……客观上是这样」[z]

@st2 f=st00021140
@st2_jump
@q
[碧里]「要我们『爆炸吧！』是为什么」[z]

[和樹]「我也会这么想，站在客观的角度上」[z]

@st2 f=st00021230
[碧里]「……」[z]

[和樹]「……」[z]

@st2 f=st00021232
[碧里]「回家吧……」[z]

[和樹]「好……」[z]

;◆日付変更
;◆夢です。
;＜背景：暗転＞
;＜背景：繁華街＞
@bgm_stop
@bg f=bg900
@eval exp="f.sepia=1"
@bg f=bg130
@bgm f=bgm11

@st2 f=st00000230
[碧里]「和树」[z]

[和樹]「嗯？」[z]

@st2 f=st00000231
[碧里]「我想接吻」[z]

[和樹]「呃呃！？」[z]

[和樹]「在这种地方？旁边很多人啊」[z]

@bgm f=bgm09

@st2 f=st00000260
@q
[碧里][font size=60]「舰长！前方发现敌情」[z]

[和樹]「哦、噢」[z]

@st2 f=st00000111
[碧里][font size=60]「Target．Scope．Open！」[z]

@st2 f=st00000110
[碧里][font size=60]「波动炮发射准备」[z]

@st2 f=st00000202
[碧里][font size=60]「能量限制解除」[z]

@st2 f=st00000260
[碧里][font size=60]「能量填充开始」[z]

@st2 f=st00000213
[碧里][font size=60]「嘭嘭」[z]

@st2 f=st00000161
[碧里][font size=60]「能量填充１２０％」[z]

@st2 f=st00000111
[碧里][font size=60]「最终保险，解除」[z]

@st2 f=st00001190
@q
[碧里][font size=60]「波动炮，发射」[z]

@st2 f=st00001105
[碧里][font size=60]「波动、啾」[z]

@st2 f=st00001106
[碧里]「嗯」[z]

@q
[和樹][font size=60]「碧里————！！」[z]

;◆夢終わり
@bgm_stop_notime
@st2_del
@eval exp="f.sepia=0"
@bg_notime f=bg033

[和樹]「哈」[z]

@bgm f=bgm08

[無]……梦、吗。[z]

[無]梦到和碧里接吻了。[z]

[無]碧里的性格变得非常奇怪。[z]

[無]唔嗯，实在是败了。[z]

[無]败给碧里……[z]

[和樹]「好像嘴边有点湿润」[z]

[無]都睡得流口水了吗。[z]

[和樹]「……」[z]

[無]应该是想多了……[z]

[無]感觉刚才有人站在床边。[z]

@q
[和樹][font size=60]「鬼片吗」[z]

;＜背景：家廊下‐夜＞
@bgm_stop
@bg f=bg022
@eval exp="f.window=1"

@st2 f=st04031030
[紅]「哈啊、哈啊……」[z]

@st2 f=st04031032
[紅]「明明不该做这种事」[z]

@st2 f=st04031030
[紅]「但，这也没办法……哈啊、哈啊……」[z]

@st2 f=st04031031
[紅]「想和兄长……」[z]

@st2 f=st04031032

[紅]「接吻」[z]

;◆日付変更
;朝
;＜背景：学園廊下＞
@bg f=bg900
@eval exp="f.window=0"
@bg f=bg220
@bgm f=bgm05

@st2 f=st02000011
@st2_jump
[りさ]「噢噢，小哥，上次那件事，怎么样啦」[z]

[和樹]「你没告诉别人吧？」[z]

@st2 f=st02000150
[りさ]「没，说不出口。话说我之后还做了噩梦」[z]

[和樹]「那还真抱歉」[z]

@st2 f=st02000090
[りさ]「呃」[z]

@st2 f=st02001195
@st2_jump
[りさ]「呐呐。搞体育的女人特别注重场合是真的吗」[z]

@st2 f=st02001090
[りさ]「你急的时候要不要我帮忙用杠铃榨精呀。啊？」[z]

[和樹]「听不懂你在说什么」[z]

[無]里沙似乎没告诉别人，那就好。[z]

;＜背景：教室＞
@bg f=bg230

[和樹]「早」[z]

@st2 f=st11000151
[恭次郎]「早、早呀……」[z]

@st2 f=st11000150
[恭次郎]「……」[z]

[和樹]「什、什么意思，盯着我看」[z]

@st2 f=st11000172
@st2_jump
[恭次郎]「咿！没有啊，饶了我吧」[z]

[無]恭次郎吓坏了，好像是目击了前几天的接吻之后受到了创伤……。[z]

@st2 f=st11000171
[恭次郎]「啊啊……笨蛋笨蛋笨蛋。全世界人都是笨蛋」[z]

@se0 f=足音_屋外_タッタッタッ_フェードアウト

@st2_move left=600
@wm

[無]看来是受了内伤。[z]

[無]我能放心了吗……。[z]

;＜背景：暗転＞
;＜背景：教室＞
@bgm_stop
@bg f=bg900
@eval exp="f.window=1"
@bg f=bg230
@bgm f=bgm30

@st2 f=st00000103
@st2_jump
[碧里]「早！红」[z]

@st_all_del
@st1 f=st04000051
@st3 f=st00000103
[紅]「……啊，碧里」[z]

@st1 f=st04000056
@st1_nod
[紅]「呼……」[z]

@st3 f=st00000140
[碧里]「怎、怎么啦。一脸倦容」[z]

@st1 f=st04000055
[紅]「樱花谢了」[z]

@st3 f=st00000241
[碧里]「嗯。嘛，都谢了好久了」[z]

@st1 f=st04000050
[紅]「……」[z]

@st1 f=st04000051
[紅]「园原碧里，你很美」[z]

@st3 f=st00000240
[碧里]「哈？」[z]

@st1 f=st04000055
[紅]「咱……」[z]

@st1 f=st04000056
@st1_nod
[紅]「哈啊」[z]

@st3 f=st00000200
[碧里]「……」[z]


;◆時間経過
;夜
;＜背景：電車内‐夜＞
@bgm_stop
@bg f=bg900
@eval exp="f.window=0"
@bg f=bg122
@bgm f=bgm07

@se0 f=電車内_ガタンガタン

@st2 f=st00000170
[碧里]「红好像有点奇怪，你有头绪吗？」[z]

[和樹]「红？」[z]

@st2 f=st00000271
[碧里]「会叹气，一个人看着远方」[z]

[和樹]「这么一说……她在家最近也是这个样子……」[z]

@st2 f=st00000172
[碧里]「不过，我好像在什么时候看过这样的红」[z]

[和樹]「看过？」[z]

@st2 f=st00000270
[碧里]「红的举动让我有些即视感。就是……」[z]

@st2 f=st00000263
[碧里]「突然心情大好，马上又消沉了，叹着气什么的」[z]

@st2 f=st00000202
@st2_jump
[碧里]「对了！」[z]

[無]碧里拍了下手。[z]

@st2 f=st00001240
[碧里]「一个月前的我！」[z]

[無]一个月前的碧里……？[z]

;◆日付変更
;昼
;＜背景：教室＞
@se0_stop
@bgm_stop
@bg f=bg900
@eval exp="f.window=1"
@eval exp="f.sepia=1"
@bg f=bg230
@bgm f=bgm05

;▼以降しばらくセピア指定だが、回想がかなり長いので通常の方がいいかも

@st1 f=st04000050
@st3 f=st00000100
[紅]「有话跟你说」[z]

@st3 f=st00000206
[碧里]「什么，游泳？红也要进游泳部吗，那我就手把手地教你吧」[z]
@st1 f=st04000064
@st1_jump
[紅]「那还是算了吧！由碧里指导的话，半年后咱的骨髓，脑髓，肌肉都会变得硬邦邦的」[z]

@st3 f=st00000164
@st3_jump
[碧里]「哈啊！？」[z]

@st1 f=st04000050
[紅]「是其它事」[z]

@st3 f=st00000123
[碧里]「到底什么事」[z]

@st1 f=st04000051
[紅]「那个……」[z]

;◆指を立てているのでしょうけど、あえて描写なしで。

@st1 f=st04000055
[紅]「之前的那件……」[z]

@st3 f=st00000141
[碧里]「那件？」[z]

@st1 f=st04000054
[紅]「就是那件事」[z]

@st3 f=st00000232
[碧里]「啊、啊啊……那件事」[z]

@st1 f=st04000051
[紅]「不知道他有没有恋人」[z]

@st3 f=st00000231
@st3_nod
[碧里]「唔、嗯。有吧」[z]

@st1 f=st04000050
[紅]「你是怎么交上的，去告白？还是被告白」[z]

@st3 f=st00000140
@st3_jump
[碧里]「呃呃呃，这么突然」[z]

@st1 f=st04000063
[紅]「咱想知道」[z]

@st3 f=st00000131
@st3_jump
[碧里]「什么嘛，呜呜……这个呀……被、被告白了……才发展成这样的」[z]

@st1 f=st04000056
[紅]「为什么对方会向你告白呢」[z]

@st3 f=st00000140
[碧里]「这这这、这是因为……」[z]

@st3 f=st00000131
[碧里][font size=25]「她喜欢我」[z]
;>>ぼそっとつぶやくように

@st1 f=st04000060
[紅]「喜欢你哪里」[z]

@st3 f=st00000140
@st3_jump
[碧里]「哪里！？呃、呃呃」[z]

@st3 f=st00000131
[碧里]「这……嘛……啊，这话是他说的」[z]

@st1 f=st04000051
[紅]「他说的？」[z]

@st3 f=st00000231
[碧里][font size=25]「『直、直接、而且很努力』」[z]

@st1 f=st04000020
[紅]「……」[z]

@st3 f=st00000233
@st3_jump
[碧里]「你都让我说了些什么！哎呀哎呀」[z]

@st1 f=st04000054
@st1_jump
[紅]「！？」[z]

@st1 f=st04000058
[紅]「恶、恶心」[z]

@st3 f=st00000169
@q
[碧里][font size=60]「什么恶心！不是你让我说的吗」[z]

@st1 f=st04000082
[紅]「抱歉，实在是太恶心了」[z]

@st3 f=st00000165
[碧里]「别再说恶心了」[z]

;◆変調
;■いい曲ないので、このままの曲で

@st3 f=st00000160
@st3_nod
[碧里]「嗯哼，那，那个人呢……」[z]

@st3 f=st00000105
[碧里]「刚开始我憧憬着他……但我认为他一定只是把只我当学妹看」[z]

@st3 f=st00000206
[碧里]「当知道他把我当做女人看的时候，我激动得眼泪都要流出来了」[z]

[無]……[z]

@st3 f=st00000232
[碧里]「真让人害羞」[z]

@st1 f=st04000030
[紅]「是、是吗。要咱先开口呀，不妙，以前太磨蹭了」[z]

@st1 f=st04000031
[紅]「但是有说这种话的机会吗」[z]

@st1 f=st04000065
[紅]「不对，我明白了，碧里也是通过各种努力换来的机会，咱也要加油」[z]

@st3 f=st00000141
[碧里]「哼？」[z]

@st3 f=st00000232
[碧里]「红，难道你谈恋爱了」[z]

@st1 f=st04000031
@st1_jump
[紅]「！？」[z]

@st3 f=st00000125
[碧里]「果然是这样」[z]

@st1 f=st04000030
[紅]「这……」[z]

@st3 f=st00000121
[碧里]「诶——，嚯——。红也恋爱了」[z]

@st1 f=st04000095
[紅]「哎呀哎呀」[z]
@st3 f=st00000140
@st3_jump
[碧里]「！？」[z]

@st3 f=st00000271
[碧里]「恶、恶心……！」[z]

@st1 f=st04000064
@st1_jump
[紅]「别说恶心，不过咱喜欢直白的你！」[z]

@st3 f=st00000240
@st3_jump
[碧里]「！？」[z]

@st3 f=st00000233
[碧里]「哎呀哎呀」[z]

@st1 f=st04000058
@st3 f=st00000250
@st1_jump
@st3_jump
@q
[紅＆碧里][font size=60]「「恶心！」」[z]

@st3 f=st00000160
@st3_jump
[碧里]「我一针见血了，对方是谁」[z]

@st1 f=st04000032
[紅]「呜呜，这个……绝对不能说」[z]

@st3 f=st00000107
[碧里]「（会是谁呢……难道是我认识的）」[z]

@st3 f=st00000141
[碧里]「是我见过的人吗」[z]
@st1 f=st04000050
@st1_nod
[紅]「嗯……很常见的」[z]

@st3 f=st00000125
[碧里]「（不会是我们班的吧？？）」[z]

@st3 f=st00000241
[碧里]「没想过告白什么的吗」[z]

@st1 f=st04000055
[紅]「……」[z]

@st1 f=st04000058
[紅]「害怕」[z]

@st1 f=st04000051
[紅]「难道你愿意就这样放弃你们之间的关系吗」[z]

@st3 f=st00000270
[碧里]「也对……」[z]

@st1 f=st04000060
[紅]「碧里和那个帅气的男朋友，也是从朋友开始做起的吗」[z]

@st3 f=st00000240
@st3_jump
[碧里]「帅气！？这么、突然。为、为什么，你会知道？」[z]

@st1 f=st04000081
[紅]「哎呀，咱不认识，听别人说的，宛如潘安再世……碧里的男朋友」[z]

@st3 f=st00000121
[碧里]「大、大概是有点帅吧。至少、对我来说。诶嘿嘿，我都说了什么」[z]

@st1 f=st04000082
[紅]「……」[z]

@st1 f=st04000081
[紅]「言归正传」[z]

@st3 f=st00000170
@st3_nod
[碧里]「是」[z]

@st1 f=st04000051
[紅]「哎呀、嘛……不知道怎么办，每天都烦得要死」[z]

@st3 f=st00000241
[碧里]「……这个呀」[z]

@st3 f=st00000204
[碧里]「向喜欢的人传达自己的感情是一件非常幸福的事哟」[z]

@st1 f=st04000058
[紅]「非常幸福……」[z]

@st3 f=st00000101
[碧里]「具体情形请自行脑补」[z]

;＜背景：白＞
@st_all_del
@eval exp="f.sepia=0"
@bg_notime f=bg901
@bgm_stop_notime
@bgm f=bgm11

[和樹]「我喜欢你，碧里。喜欢到无法自拔」[z]

;＜背景：教室＞
@eval exp="f.sepia=1"
@bg_notime f=bg230
@bgm_stop_notime
@bgm f=bgm05

@st2 f=st00001291
@st2_jump
[碧里]「哎呀~，我不小心想了一下！啊哈哈！」[z]

@st2_del
@st3 f=st00000291
@st1 f=st04000051
@st1_jump
[紅]「怎、怎么啦」[z]

@st3 f=st00000232
[碧里]「呃？没事！不好意思，没什么。啊哈哈」[z]

@st3 f=st00000270
[碧里]「嗯，红的不安我也不是很懂，我不该不负责任地指指点点的……」[z]

@st3 f=st00000103
[碧里]「但越是不安，丰收的喜悦就越大」[z]

@st1 f=st04000050
[紅]「越是不安？」[z]

@st3 f=st00000102
[碧里]「与喜欢的人情投意合，一定是世界上最幸福的事」[z]

@st3 f=st00000110
[碧里]「但在这之前，必须跨越一些围栏」[z]

@st3 f=st00000111
[碧里]「不努力是不行的……」[z]

@st1 f=st04000001
[紅]「碧里……」[z]

@st1 f=st04000090
[紅]「抱歉，给你添麻烦了」[z]

@st3 f=st00000140
[碧里]「才没这回事！没这回事」[z]

@st3 f=st00000105
[碧里]「多亏了红，我现在才这么幸福……」[z]

@st3 f=st00000103
[碧里]「所以，我希望红也能获得幸福，诶嘿嘿」[z]

@st1 f=st04000000
[紅]「？？？？」[z]

@st1 f=st04000001
[紅]「多亏了咱？获得幸福？」[z]

@st1 f=st04000055
[紅]「（咱做了什么吗）」[z]

;◆回想、紅と碧里がキスをしたシーン（109.ks）
@bgm_stop_notime
@st_all_del
@eval exp="f.sepia=0"
@bg_notime f=bg901

[紅]「啊」[z]

[紅][font size=45]「啊啊！」[z]

@q
[紅][font size=60]「啊啊啊啊——————！」[z]

@eval exp="f.sepia=1"
@bg_notime f=bg230
@bgm f=bgm05

@st3 f=st00000205
@st1 f=st04000054
@st1_jump
[紅]「（哈！？那不成是指那件事！）」[z]

@st1 f=st04000030
[紅]「（碧里不会还沉浸在咱跟她的那个吻里吧！？）」[z]

@st1 f=st04000032
[紅]「（但是帅气的男朋友……假面、恋人？）」[z]

@st1 f=st04000053
@st1_move left=-635
[紅]「那、那就好。咱也觉得和你在一起很幸福」[z]

@st3 f=st00000240
[碧里]「为什么要拉开距离，红」[z]

@st1 f=st04000090 left=-635
@st1_move left=-730
[紅]「啊、啊哈哈。没那回事，。咱们是朋友」[z]

@st3 f=st00000250
@st3_jump
[碧里]「为什么要一边说一边倒退啊！」[z]

;＜背景：暗転＞
;＜背景：リビング‐夜＞
@bgm_stop
@eval exp="f.sepia=0"
@bg f=bg900
@bg f=bg402
@bg f=bg012
@eval exp="f.window=0"
@bgm f=bgm07

@st0 f=st07010011
@st2 f=st08070000
@st4 f=st09010102
[無]晚饭的时候。[z]

[和樹]「咦，红还没回来？」[z]

[無]老爸和老妈，还有很罕见的老姐聚在餐桌旁，可是没有红的身影。[z]

[無]虽说她最近在练游泳，但现在都九点了。[z]

@st2 f=st08070072
[さちこ]「回是回来了，一直闷在房间里，叫她也不下来」[z]

@st4 f=st09010103
[薫]「在搞学习吗，小红真了不起」[z]

@st2 f=st08070014
[さちこ]「升学后学习压力变大了吧」[z]

@st0 f=st07010010
[メグ]「和树君教教她怎么样」[z]

[和樹]「老姐学习成绩比我好吧」[z]

@st0 f=st07010014
[メグ]「我不擅长教人」[z]

[和樹]「嘛……也是」[z]

[和樹]「那我去看看」[z]

;＜背景：廊下‐夜＞
@bgm_stop
@bg f=bg022

@se0 f=足音_屋内_階段フェードイン
@ws
@se0 f=ドアノック
@ws
[和樹]「喂，你不吃晚饭吗」[z]

@se0 f=ドア開

[無]一进红的房间[z]

@bgm f=bgm09

@st2 f=st04011066
@st2_jump
@q
[紅][font size=45]「哇！突突突、突然闯进女士的房间，真无礼！」[z]

[無]书桌旁的红吓得站了起来。[z]

[和樹]「你不也随便出入我的房间拿漫画么」[z]

@st2 f=st04011061
[紅]「那是在兄长睡着的时候进去的」[z]

[和樹]「更恶劣了」[z]

[和樹]「你在慌张什么，在自慰吗」[z]

@st2 f=st04011030
@st2_jump
[紅]「瞎说什么！怎么可能呀」[z]

[和樹]「脸这么红，难道真是……」[z]

@st2 f=st04011032
[紅]「都说了不是，咱在搞学习」[z]

[和樹]「那我教你……」[z]

@st2 f=st04011031
@st2_jump
[紅]「不需要」[z]

@bgm_stop_notime

;◆効果音：バタン
@se0 f=ドア閉

@st2_del
[無]不留余地地关上了门。[z]

[無]余光瞟到的桌子上，好像摆着笔记本之类的东西。[z]

[無]果然是在学习吗。[z]

[無]那问我些问题也没什么呀。[z]

;◆日付変更
;＜背景：電車内‐夜＞
@bgm_stop
@bg f=bg900
@bg f=bg122
@bgm f=bgm30

@se0 f=電車内_ガタンガタン

@st2 f=st00000100
[和樹]「红现在在班上怎么样？」[z]

@st2 f=st00000201
[碧里]「怎么样？」[z]

[和樹]「在家里有点奇怪」[z]

@st2 f=st00000265
[碧里]「……」[z]

[和樹]「你有什么头绪吗？」[z]

@st2 f=st00000271
[碧里]「……你去和她谈谈比较好吧」[z]

@st2 f=st00000106
[碧里]「但我估计她不会说出她的对象，毕竟连我都没告诉呢」[z]

@q
[和樹]「什么，对象。和谁？干什么？碧里！怎么回事」[z]

@st2 f=st00001240
@st2_jump
[碧里]「冷静点」[z]

@st2 f=st00001152
[碧里]「我们慢慢说」[z]

@st2_del

[無]……[z]

;◆効果音：ガーンみたいな音
@se0 f=ガーン_ショック

@st2 f=st00000240
@q
[和樹][font size=60]「红谈恋爱了！？」[z]

[無]不敢相信自己的耳朵。[z]

@st2 f=st00000261
[碧里]「找不到向对方表达自己的情感的契机，现在很踌躇的样子。更不要说表白了」[z]

@st2 f=st00000264
[碧里]「红不怎么适应和男孩子聊天呢」[z]

@st2 f=st00000211
[碧里]「拥有自信是十分重要的」[z]

[和樹]「自信？」[z]

@st2 f=st00000206
[碧里]「红那么可爱，其实很在意自己的措辞不像个女孩子吧」[z]

[和樹]「原来如此」[z]

[和樹]「作为最接近她的男性……哥哥。只要支持她让她拥有属于女性的自信就好了吧」[z]

@st2 f=st00000110
@st2_nod
[碧里]「没错，拜托了」[z]

[和樹]「……」[z]

[無]我恳切地看着碧里，不是作为恋人，而是哥哥。[z]

[和樹]「呐，红的事情，受你照顾了，谢谢」[z]

@st2 f=st00000140
@st2_jump
[碧里]「呃。突、突然这么郑重」[z]

[和樹]「因为是作为哥哥。红是个奇怪的家伙，以前就没什么朋友，能碰到像你这样挚友真是太好了」[z]

@st2 f=st00000126
[碧里]「挚友……。我不知道红怎么想的？？」[z]

@st2 f=st00000273
[碧里]「……我虽然有挺多朋友的，但红对我来说是特别的……」[z]

@st2 f=st00000271
[碧里]「我不想向她隐瞒任何事情」[z]

@st2 f=st00000206
[碧里]「一发生什么事情，总会和她吵吵闹闹地讨论，然后关系就越来越好」[z]

[和樹]「也是啊。作为哥哥，我希望你和红的关系能继续保持下去」[z]

@st2 f=st00000103
@st2_nod
[碧里]「是」[z]

[無]……摸。[z]

@bgm_stop_notime
@q
[和樹][font size=60]「咿！」[z]

@bgm f=bgm08
@st2 f=st00000141
[碧里]「怎、怎么啦。学长」[z]

[和樹]「……为什么」[z]

@st2_del
[無]我战栗着回头望了望。[z]

@st2 f=st00000241
[碧里]「怎么？」[z]

[和樹]「屁股被人摸了」[z]

@st2 f=st00000240
@st2_jump
[碧里]「为、为什么」[z]

[和樹]「所以我也问了为什么啊！」[z]

[無]我慌慌张张地环顾着有些拥挤的电车车厢。[z]

[無]我和碧里站在靠窗的地方，我的屁股对着有座位的那边，是谁在摸我？[z]

[無]看着满脸倦容的乘客们。[z]

[和樹]「我好像被这电车里的某位盯上了……」[z]

@st2 f=st00000167
[碧里]「别说那么吓人的话」[z]

[無]真的很吓人呀。[z]

[和樹]「碧里在电车里被人摸过吗」[z]

[無]有过的话让人有些不爽，但估计还是有的吧。[z]

@st2 f=st00000128
[碧里]「嗯，没有哦，我警惕性比较高」[z]

[和樹]「筋肉硬邦邦的，谁会摸啊」[z]

@st2 f=st00000260
@st2_jump
[碧里]「姆，怎么可以这样说。学长，你不是很清楚的吗……我柔软的部分」[z]

[和樹]「谁知道呢」[z]

@st2 f=st00001131
[碧里]「那……好吧，这怎么样」[z]

[無]碧里抓着我的手伸向了她的胸部。[z]

@q
[和樹][font size=60]「哦哦！」[z]

[無]透过薄薄的衣服布料、那过分柔软胸部的触感从掌心中传来。[z]

@bgm_stop

[無]不知不觉中。我的、手指开始用力揉捏起来。[z]

@st2_del

*m2
@bg_notime f=ev111_00a

@bgm f=bgm20

@q
[碧里]「（噫！）」[z]

[碧里]「只要稍微摸一下就能确认的事情，你怎么开始揉起来了！」[z]

[無]揉……揉……[z]

[碧里]「噫噫。我、我说，你要揉到什么时候啊！」[z]

[和樹]「总觉得，我开始兴奋起来了」[z]

[碧里]「请不要在这种地方开始发情好么！」[z]

@bg_notime f=ev111_00c

[碧里]「等、等一下，和树你」[z]

[無]不引人注意地，我把手伸到裙子里面、把胖次拉到旁边。[z]

@bg_notime f=ev111_00i

[碧里]「……嗯、啊哈……啊、唔唔……」[z]

@bg_notime f=ev111_00e

[碧里][font size=25]「警察先生、这里有变态啊！（翻：备注里有“小声地”，有意思）」[z]
;>>小声で

[和樹]「哦呀哦呀，明明还在电车里面，碧里你的这里已经变得这么湿润了」[z]

[碧里]「这也、没有办法啊。明明是和树你、在做着这样那样的事情，啊 唔唔唔……」[z]

[碧里]「警察先生，这里有大大大变态啊！」（注：故意说错的おさわりさん常见于不方便直呼警察的时候，当事者可能非常危险）[z]

[和樹]「你这样，搞得我更兴奋了，停不下来了！」[z]

[無]我的手轻轻的伸到裙子底下，拨开那包裹着碧里那丰满臀部的已经变得滑溜溜的内裤，开始对屁股上下其手。[z]

@bg_notime f=ev111_00i

[碧里]「嗯、啊……」[z]

@bg_notime f=ev111_00e

[碧里]「感、感觉你鼻息变得粗重起来了。难道对这种情况……感到很兴奋……的样子？」[z]

[和樹]「难道兴奋的不是碧里你吗？在电车里被碰到，还能这么激动？」[z]

@bg_notime f=ev111_00c

[碧里]「说、说什么傻话呢。我怎么可能……」[z]

[和樹]「但是你看……」[z]

[無]一直抚摸着屁股的手，转向了下腹部。内裤上确实已经有一滩水渍。[z]

@bg_notime f=ev111_00o

[碧里]「哈啊啊，这、这是……」[z]

[和樹]「这不是已经很湿了吗？」[z]

@bg_notime f=ev111_00r

[碧里]「可、可这是……」[z]

[無]我已经忍不住了、把手指伸进了碧里的内裤里面。[z]

[無]手指在碧里那又热又粘的蜜处搅动、蜜穴内部变得更加黏滑。[z]

@bg_notime f=ev111_00s

[碧里]「啊、啊……嗯、啊……」[z]

[無]搅动……搅动……。[z]

@bg_notime f=ev111_00o

[碧里]「等、等啊，你要做到什么时候啊。嗯，啊啊。被其他人看到的话该怎么办啊」[z]

[和樹]「好像没人在看我们」[z]

[無]刚才还水泄不通的车厢，可能是经过一个中转大站的缘故、慢慢变得空荡起来。[z]

[無]本来因为众目睽睽之下想着该收手的我[z]

[無]结果每次站台停靠，车上的人都在减少。车厢里和刚才相比，显得格外的空旷[z]

@bg_notime f=ev111_00t

[碧里]「哈啊、哈啊……呀、嗯嗯。不要」[z]

[無]现在仍然呆在车厢里的、只剩下醉倒大睡的上班族，玩着消消乐的OL，和一群正在热烈交谈的女生组合。结果，谁都没有注意到这边的情况。[z]

[無]这样的话，看起来不会暴露的样子。[z]

[無]在AV和本子中，都能看到在电车车厢内做爱的场景[z]

[無]我本来也抱着“骗谁呢怎么可能？”这样的想法。难道说，这是真的有可能发生的情况？[z]

[無]好奇心裹挟着情欲在我心里翻腾。[z]

@bg_notime f=ev111_00o

[碧里]「哈…哈…。明明、明明知道这样的事情是不可以的。为什么，我的脑袋开始变得晕晕的」[z]

[和樹]「哈…哈…。碧里，我、说不定已经忍不住了」[z]

[無]拉下裤链、放出早已挺立起来的老二。[z]

[無]我那硬邦邦的挺立的老二，弹了出来、拍打在碧里那光洁的屁股上。[z]

[碧里]「哈啊、好热。为什么在电车里面、你的那里还能变得这么大」[z]

[和樹]「我们彼此彼此，碧里你那里不也洪水泛……」[z]

[無]一边说着，一边用手指轻轻搅动那充满蜜汁的蜜穴。[z]

@bg_notime f=ev111_00t

[碧里]「啊、哈啊！」[z]

@bg_notime f=ev111_00o

[碧里]「呀！说了不要了。一直欺负这里。啊嗯嗯！」[z]

[無]虽然一边说着不要、碧里的屁股、还是难受似的不停的蹭来蹭去。[z]

[碧里]「好热啊。和树的那个、在这种时候、都能变得这么热。真是个变态……」[z]

[和樹]「碧里你不是也、这里都变得这么湿、不也是个变态」[z]

[碧里]「哈、哈……还不是、学长你一直做这样那样的事情……」[z]

[和樹]「碧里、我想、……插进去、可以吗？」[z]

@bg_notime f=ev111_00r

[碧里]「……呜呜」[z]

[無]她低头思考了一会，不久后……[z]

[無]慢慢点了点头。[z]

@bg_notime f=ev111_00o

[碧里]「真是、随你开心吧」[z]

[和樹]「那我就……」[z]

[和樹]「不要发出太大的声音啊」[z]

@bg_notime f=ev111_00r

[碧里]「我才不管呢。叫出来的时候我就会叫出来。到时候(指挥官，)我会去监狱里给你送饭的，请放心吧」[z]

[和樹]「那我们会一起进去的」[z]

@bg_notime f=ev111_01b

[無]慢慢地……插了……进去[z]

@bg_notime f=ev111_01g

[碧里]「啊、哈啊啊啊啊啊……」[z]

[無]阴茎向肉穴内挺进，没有留给碧里一丝喘息的机会。[z]

[和樹]「唔……」[z]

[無]炽热快感的潮流，奔袭在略有一丝紧张感的身体中，变得更加的鲜明。[z]

[和樹]「唔啊……」[z]

[無]身体止不住的震颤。[z]

[和樹]「那我就、开始动了」[z]

@bg_notime f=ev111_01b

[碧里]「唔啊。来吧。狠狠的操弄我吧」[z]

[無]（抽动声）[z]

@bg_notime f=ev111_01g

[碧里]「啊、唔呼呼。啊……。呀、哈啊……」[z]

@bg_notime f=ev111_01e

[碧里]「感觉，和上次不太一样的。进来的感觉。和樹、你进来了哟」[z]

[碧里]「呀、嗯。啊、这个……和上次、感觉完全不一样，非常的，舒服……」[z]

[和樹]「哈、哈……哈嗯」[z]

[碧里]「不过、啊、啊、啊。这种感觉太强了」[z]

[碧里]「啊、啊、啊。这种的、太厉害了。太厉害了、我好像、要变得奇怪了」[z]

@bg_notime f=ev111_01g

[碧里]「啊、啊、呀哈啊……」[z]

[和樹]「哈、哈。碧里、碧里」[z]

[無]我用尖端，从不同的角度、对碧里的深处、发起冲锋。[z]

@bg_notime f=ev111_01g

[碧里]「嗯、啊。嗯、哈啊。那里、不行。那里被摩擦到的话、嗯嗯。感觉、好像触电了一样」[z]

@bg_notime f=ev111_01e

[碧里]「呀啊。啊、不要。那热热的东西，在各种地方钻来钻去的话！　啊、啊、啊」[z]

@bg_notime f=ev111_01g

[碧里]「嗯。感觉太强烈到都有点喘不过气来了。我有、想要你、更加地、操弄的地方啊」[z]

[和樹]「是哪里？」[z]

@bg_notime f=ev111_01e

[碧里]「最、最里面、想要的不得了」[z]

@bg_notime f=ev111_01g

[碧里]「啊、嗯。啊、啊、啊。再来、再来、求求你、更加深的地方。啊、啊、啊」[z]

[和樹]「我知道了」[z]

[無]向腰部注入力量，更大幅度地晃动着腰。[z]

[碧里]「嗯嗯、哈、啊！　和樹的那里、顶到最深的地方了。一下一下地。啊、啊」[z]

@bg_notime f=ev111_01e

[碧里]「不要。感觉、我的身体、要被你艹的七零八落的样子」[z]

@bg_notime f=ev111_01g

[碧里]「啊、啊、啊。要去了、要去了。我要去了……啊啊」[z]

[無]眼前的车窗，能看到将要通过的对面轨道的电车。[z]

[無]与对面的轨道上行驶的电车擦肩而过的时候、车厢内的噪声达到最大。[z]

[和樹]「现在的话，叫出声来也没关系的样子」[z]

@bg_notime f=ev111_01e

[碧里]「嗯嗯。啊、啊、啊。已经、声音要忍不住了」[z]

;◆効果音：ガタガタガガタと鳴る。
@se0 f=電車外_通過 loop=true

@bg_notime f=ev111_01g

[碧里]「啊嗯、啊、咕、呼啊啊！呀啊啊！」[z]

[碧里]「啊、呀、、服、服要、嗯嗯啊、啊、啊、啊、啊啊啊！」[z]

[碧里]「呀、啊、啊啊啊啊啊啊啊啊啊啊」[z]

@se0_stop

[無]……………[z]

@bg_notime f=ev111_01m

[碧里]「刚才……好像去了……的样子」[z]

[碧里]「哈啊、哈啊……哈啊……哈……」[z]

@bg_notime f=ev111_01i

[碧里]「唔唔唔。我难道变成了变态了吗。竟然在这种地方……」[z]

[和樹]「在这种、地方？」[z]

[碧里]「竟然玷污了那与和树相遇的神圣的电车」[z]

[和樹]「额……」[z]

[無]不由得停下来，窥视着碧里的神情。[z]

[和樹]「没想到，你把电车看的这么重要。早知道这样，我就……」[z]

@bg_notime f=ev111_01j

[碧里]「吓你的」[z]

[無]发出饱含笑意的声音。[z]

[和樹]「原，原来是开玩笑啊。你可是真的吓了我一跳啊」[z]

[無]于是，像是要回礼一般、我突然又开始动腰。[z]

@bg_notime f=ev111_01m

@q
[碧里]「噫呀啊！」[z]

@bg_notime f=ev111_01i

[碧里]「呀、啊。就算我没有这么想、这里毕竟也是公共场合。如果被其他人看见的话……啊、啊」[z]

@bg_notime f=ev111_01o

[碧里]「啊、啊、啊、啊、啊」[z]

@bg_notime f=ev111_01m

[碧里]「明明是、公共场合的说。是违反、生殖器、暴露罪的。あ、あああ」[z]

[碧里]「哈、哈。会被、警察带走的说。嗯嗯！！」[z]

[碧里]「哈、哈。我竟然，在这种地方……又要去了什么的、明明是不行的。在这种地方！　啊、嗯嗯！」[z]

[和樹]「哈、哈……。唔。我好像，也快要去了」[z]

[碧里]「好的。和树也来、让我们舒服到最后把。只有我一个人、舒服起来什么的、才不要」[z]

[和樹]「我…知道了。哈、哈。啊、库」[z]

[和樹]「已经，不行了。啊、啊、啊！　射了。射了」[z]

[碧里]「我也、已经、去、去、去了啊。啊啊啊啊！」[z]

[和樹]「唔……。啊、库库。嗯嗯！」[z]

[無]灼热的感觉从下腹部传来。[z]

[無]非常迅速地、把阴茎拔了出来。向着碧里的肚子、放射了出来。[z]

@bg_notime f=ev111_01o

@q
[碧里]「啊、啊、啊！ 啊啊啊啊啊啊啊啊啊！！」[z]

@white f1=ev111_01o f2=ev111_01w

[無]哔库！哔哔哔库！！！[z]

[碧里]「……啊……啊………啊……」[z]

[無]一下一下地、还在不停震颤的碧里。[z]

@bg_notime f=ev111_01u

[碧里]「好、好热……」[z]

;＜背景：空‐夜＞
@bgm_stop
@bg f=bg900
@jump2 cond="f.SceneReplay==1" storage=special.ks target=*memory
@eval exp="sf.m2=1"
@bg f=bg402
@bgm f=bgm30

[碧里]「……呐」[z]

[無]用手帕细心地处理着肚子附近的碧里，脸色有些忧郁。[z]

[碧里]「结果坐到终点站了」[z]

[和樹]「头疼了」[z]

@q
[碧里]「都怪谁呀」[z]

[和樹]「还有车，等下一趟吧」[z]

[碧里]「不要，现在的和树肯定会在电车上动手动脚」[z]

[和樹]「那怎么办」[z]

[無]は！[z]

[無]……商业街旁都是闪烁着霓虹灯的建筑。[z]

[無]难道就这样……[z]

[碧里]「跑回去吧」[z]

@q
[和樹]「呃呃！？」[z]

[和樹]「有蛮远呢」[z]

[碧里]「我们不是一起慢跑过吗，我很期待」[z]

[和樹]「跑到家还好，但跑到酒井站那得跑多久呀」[z]

[和樹]「而且那之后惨得不行」[z]

[碧里]「也是啊」[z]

[碧里]「我跟和树做了各种各样的事后，第二天心情很不好受」[z]

[和樹]「……」[z]

[和樹]「听不懂你的意思」[z]

[碧里]「就是心疼呀！　其实不疼，我只是想说说」[z]

[和樹]「那句话能用在这里么」[z]

[碧里]「诶嘿嘿，我想说一遍试试」[z]

[碧里]「那开始跑吧」[z]

[和樹]「真跑吗！？」[z]

[和樹]「你知道吗，碧里，有人说射一次精相当于跑一次马拉松哦……」[z]

[碧里]「才不知道，那种事不可能，不要小看马拉松了」[z]

[碧里]「所以，跑吧！」[z]

[和樹]「咿————」[z]

[碧里]「呼哦——，呼哦——。和树，呼哦——」[z]

[和樹]「呼哦——……」[z]

[碧里]「呼哦——！」[z]

[無]不知为何碧里很高兴。[z]

;暗転
;＜背景：リビング‐夜＞
@bgm_stop
@bg f=bg900
@bg f=bg012
@bgm f=bgm07

@se0 f=ドア開閉

[和樹]「我回来了」[z]

@st2 f=st08070001
[さちこ]「啊，总算回来了，我们已经吃完了」[z]

[和樹]「抱歉抱歉，我马上就吃」[z]

@st_all_del
@st1 f=st04010092
@st3 f=st08070001
[紅]「姆咕姆咕，母上，今天的菜炖的真好」[z]

@st3 f=st08070003
[さちこ]「诶呵呵，谢谢」[z]

@st_all_del
@st2 f=st04011092
[和樹]「……盯」[z]


@st2 f=st04011090
[紅]「姆咕姆咕」[z]

[無]这不像是个陷入恋爱的烦恼中的样子呀。[z]

[無]总而言之，我必须给她打点气。[z]

[無]作为兄长！[z]

@st2 f=st04011020
[紅]「嗯？　什、什么事、兄长。一直盯着咱」[z]

[和樹]「红，你……」[z]

@st2 f=st04011001
[紅]「是？」[z]

[和樹]「是红、吗？」[z]

@st2 f=st04011052
[紅]「怎、怎么啦。当然是咱啦」[z]

[和樹]「……是吗」[z]

[和樹]「我以为我看到女神了，没想到是红」[z]

[無]……[z]

@st2 f=st04011031
[紅]「哈……？」[z]

[和樹]「耀眼」[z]

[和樹]「太过耀眼了，请不要看着我」[z]

@st2 f=st04011021
[紅]「咱没秃顶吧」[z]

[和樹]「不是那个意思」[z]

[和樹]「浑身散发着美女的气质」[z]


@st2 f=st04010058

[紅]「……」[z]
;>>少し、引き気味の紅。

[無]这样就有自信了吧。[z]

[無]加油、红！[z]

;暗転
;＜背景：家廊下‐夜＞
@bgm_stop
@bg f=bg900
@bg f=bg022
@eval exp="f.window=1"

[無]……………………[z]

@st2 f=st04011032
[紅]「被……」[z]

@st2 f=st04011031
@st2_jump
@q
[紅][font size=60]「被说是女神了哎！」[z]

@eval exp="f.window=0"

@jump2 storage=112.ks
