;夏芽ルート14.txt

;◆背景（暗転）
;◆背景（夏芽部屋－夜）
;夏芽視点
@bgm_stop
@bg f=bg900
@bg f=bg062
@bgm f=bgm07
@eval exp="f.window=1"

@st2 f=st03030251
@st2_nod
[夏芽]「…………哈啊」[z]

[無]与和树君在网咖约会后回来。[z]

[無]虽然跳过晚饭立即洗了个澡……但是夏芽的双颊上依旧滚烫火热。[z]

@st2 f=st03030233
[夏芽]「…………」[z]

[無]用指尖，轻轻地触碰自己的嘴唇。[z]

[無]方才亲吻的触感又鲜明的在夏芽脑海中浮现出来。[z]

[無]要是太High过头进一步深入就不妙了，因为了解这样的默认共识，像舌吻之类的激烈行为完全没有做。[z]

[無]即使这样，动作的每个细节都可以栩栩如生的回忆起来。[z]

@st2 f=st03030131
[夏芽]「嗯……」[z]

[無]脑袋轻飘飘的，胸膛略微赶到压抑，还有难以形容的幸福感……。[z]

[無]恋爱是（和自己）无缘之物――夏芽，一直以来都是这么想的。[z]

[無]当然，缠绵的热吻和在那之前的行为什么的都是和自己毫无关系的。[z]

[無]并不是对普通的爱好完全没有兴趣，只是没有机会機会罢了，之类的事情从来没有考虑过。[z]

[無]上课学习，社团活动，像是巡之类的朋友和家族的交流迎合……这样度过的每一天的生活已经足够快乐了。[z]

[無]所以特地加入『和男友的交际』这种新的要素，并不觉得有什么必要性。[z]

@st2 f=st03030151
[夏芽]「（但是……）」[z]

[無]开始与和树交往，一起约会，与他拥抱，被他亲吻，抚摸秀发……。[z]

[無]夏芽的感情，产生了巨大的变化。[z]

@st2 f=st03030253
[夏芽]「（哈啊……我可真是……）」[z]

[無]――势利的家伙。[z]

[無]这之前的的枪战射击游戏也是，明明没有那么大的兴趣……先来『开始』安装吧。[z]

[無]听到低年级的女孩子在社团活动是叽叽喳喳兴高采烈的讨论着恋爱的话题，也觉得和自身毫无关系所以置若罔闻转身离开――。[z]

@st2 f=st03030251
[夏芽]「呜呜……」[z]

@st2 f=st03030153
[夏芽]「（之前要是……那种场合多混进去听几次就好了……）」[z]

[無]『悔不该当初』[z]

[無]前人流传下的言语，果然很伟大。[z]

@st2 f=st03030151
[夏芽]「…………」[z]

@st2 f=st03030153
[夏芽]「哈呼…………」[z]

;◆効果音（どさっとベッドへ倒れこむ音）
@se0 f=倒れる_パサッ

@st_all_del
@q
[無]随意的躺在床上，心不在焉地眺望着天窗……紧紧地抱住自己的身体。[z]

[無]……好怀念和树的温度。[z]

[無]好希望再一次，被他抱住。[z]

[無]好想用自己的皮肤感受他的温暖与重量。[z]

[無]亲吻也是……其实也期待，来一个像那个电影里一样，更加浓厚激烈的热吻。[z]

[無]简单而言，超想要更加亲亲热热激烈缠绵啦――！[z]

@st2 f=st03030141
@st2_jump
[夏芽]「（……我，都在想些什么啊……真是……）」[z]

[無]虽然心里害臊得不行，但是夏芽的欲望根本镇压不下来，反而渐渐膨胀高升。[z]

@st2 f=st03030160
[夏芽]「（不行，不行啦……这种小心思，要是被和树君知道了搞不好就糟糕啦……）」[z]

@st2 f=st03030253
[夏芽]「……哈啊…………」[z]

@st2 f=st03030230
[夏芽]「（和树君那边，明明一点一点营造那样的气氛也不错呢……）」[z]

@st2 f=st03030253
[夏芽]「（哎呀，真是任性呢……呜ー喵……）」[z]

@st_all_del
[無]带着迷糊纠缠的心思――夏芽闭上了眼睛。[z]

;◆背景（暗転）
@eval exp="f.window=0"
@bgm_stop
@bg f=bg900

[無]…………[z]

[無]…………………………[z]

;日付変更
;主人公視点
;◆背景（繁華街）
@bg f=bg130
@bgm f=bgm33

@st2 f=st03000102
[無]网咖约会的翌日。[z]

[無]拜难得一遇的水泳部活动暂停所赐，得以和学姐在回家的途中于繁华街上来一次悠闲漫步的制服约会。[z]

[和樹]「啊，之后平安的送到了呢」[z]

@st2 f=st03000200
[夏芽]「嗯……你看，这个」[z]

[無]之前在约会的时候订购的物品，看样子平安到手了。[z]

@st2 f=st03000105
[夏芽]「仔细想想的话，算得上是跟和树君头一次约会得到的第一个礼物呢、这个……我会珍惜着使用的」[z]

[和樹]「诶呀这个，不觉得很奇怪吗！？学姐，这个可是你自己掏腰包买的！」[z]

@st2 f=st03000151
[夏芽]「虽然是这样没错……但是总觉得这个，应该算是情感上的纪念品？」[z]

[和樹]「……早知道，就应该先买个更加与众不同的东西才对……」[z]

[和樹]「不对！现在也来得及，让我们去买些什么吧！」[z]

[和樹]「不要管那些日常用品，选个更加有礼物感觉的东西！用我的钱来买！」[z]

@st2 f=st03000140
@st2_jump
[夏芽]「哎……啊，莫非我的话有些抱怨的意味吗！？」[z]

@st2 f=st03000251
[夏芽]「但是根本没有这样的打算哟，实际上！」[z]

[和樹]「我明白的。要硬说的话，是我的一时兴起」[z]

[和樹]「那么，想买些什么？」[z]

@st2 f=st03000131
[夏芽]「欸……哎，那个……」[z]

@st2 f=st03000281
[夏芽]「当真……什么都行……？」[z]

[和樹]「当然！……嘛只要在零花钱的范围内（就行），过于昂贵的东西我买不起啦」[z]

@st2 f=st03000231
[夏芽]「…………」[z]

@st2 f=st03000131
[夏芽]「那……一起牵着手也，可以？」[z]

[和樹]「欸？」[z]

[無]迄今――是有着当众不要引人注目，这样的共同约定的。[z]

[無]诸如『公然亲热』这样的行为本应该是要拒绝的。[z]

[無]学姐，是发生什么心境上的变化了吗？[z]

@st2 f=st03000153
[夏芽]「不，不可以呐……果然」[z]

[和樹]「不」[z]

@st2 f=st03001181
[無]立刻飞快地，握住了学姐的手。[z]

;ほわぁ、と満たされてる感
@st2 f=st03001104
[夏芽]「…………」[z]

[和樹]「但是礼物归礼物，果然还是必须要……」[z]

@st2 f=st03001131
[夏芽]「……那么，（我要）新的发卡」[z]

[和樹]「小的明白――！」[z]

;◆背景（暗転）
;短めの時間経過
;◆背景（繁華街）
@bg f=bg900
@bg f=bg130

@st2 f=st03000100
@st2_nod
[夏芽]「……如何？适合吗……？」[z]

[無]我买来了作为礼物的心发卡，学姐转了一圈回头看向我这边。[z]

[和樹]「是的！非常及其的很合适！简直美如画！」[z]

[無]……唔嗯，尽管我挑了个款式相同，简直可以说是毫无区别的发卡！[z]

;ほっと嬉しそう
@st2 f=st03000105
[夏芽]「嘿，太好了」[z]

[無]嘛，无所谓啦。因为学姐看起来很高兴的样子。[z]

[無]然后，这份欢欣因我而起，这样就已经完全满足了。[z]

[無]女朋友真是贴心，就是好啊……！[z]

[無]其存在给我带来幸福――有恋人的每一天都很快乐！[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]…………[z]

[無]…………………………[z]

;夏芽視点
;◆背景（夏芽部屋－夕方）
@bg f=bg061
@eval exp="f.window=1"
@bgm f=bgm06

@st2 f=st03000151
[夏芽]「…………」[z]

@st2 f=st03000253
[夏芽]「哈啊啊啊啊…………」[z]

[無]与和树的放学约会结束，回到自己的房间……立刻长长地吐出一声叹息。[z]

@st2 f=st03000261
[夏芽]「……已经……我，到底…………」[z]

[無]欲求深不见底……夏芽没精力为这问题苦恼。[z]

[無]和树牵住手的瞬间，就不由得非常开心，极其满足。[z]

[無]分别的时候，轻轻地给予离别之吻。[z]

[無]但是――不，说不定正是因此才会适得其反――。[z]

@st2 f=st03000153
[夏芽]「还想……再来更多……」[z]

[無]夏芽的欲望与其说有所消退倒不如说是单方面的增强了。[z]

@st2 f=st03000160
@st2_jump
[夏芽]「（怎么会，又不是到了发春期的猫……）」[z]

[無]其实自己，也并非不明白缘何如是。[z]

[無]但是要是跟着脑袋所想的随性而为，根本无法判断到底会变成什么样子。[z]

@st2 f=st03000231
[夏芽]「（……要告诉，和树君，试试吗……？）」[z]

[無]更多的，各种各样的事情――稍稍带点H的事情也是，好想尝试一下，呢。[z]

;◆効果音：クッションを壁に投げつけるどかっという音
@se0 f=倒れる_ドカ

@st2 f=st03001141
@st2_jump
@q
[夏芽]「…………呀，不可能说得出口的吧ー！？」[z]

[無]察觉到了仿佛会使全身的血液翻滚沸腾的羞意，夏芽抓起无辜的垫子向着墙上狠狠扔了出去。[z]

[無]从隔壁的房间中，似乎传来了恭次郎小小的『噫！？』的惊叫声――总之先无视好了。[z]

@st2 f=st03000153
[夏芽]「哈啊……」[z]

[無]直接的，通过语言传达的方法……对于夏芽而言，存在相当程度的抵触。[z]

[無]要女生这边提出这样的要求真是太下流了，这样的感觉无论如何也无法释怀。[z]

@st2 f=st03000251
[夏芽]「（嘛……想到这些东西的时候，虽说就已经粗鄙得彻底了……）」[z]

[無]――自顾自的想些下流东西这点暂且不提，（首先）不希望和树会这样看待自己。[z]

@st2 f=st03000253
[夏芽]「呜呜呜…………」[z]

[無]理所当然的烦恼得厉害，但是问题一点都没有解决。[z]

[無]就这样（胸怀）闷闷不乐（的情绪），夏芽在床上不住的辗转反侧――。[z]


;◆背景（暗転）
@bgm_stop
@eval exp="f.window=0"
@bg f=bg900

[無]…………[z]

[無]…………………………[z]

;日付変更
;主人公視点
;◆背景（空）
@bg f=bg400
@bgm f=bgm33

[無]与夏芽学姐的，隐秘而令人愉悦的交往关系，已经过了一个多星期。[z]

[無]对于拥有女友的生活已经非常的适应了。[z]

[無]差不多向周围人公布了也没关系吧、这样的念头我也不是没有考虑过。[z]

[無]嘛，但是这个呢，在学姐她做出『脱单身宣言』前还是耐心等候比较适合吧。[z]

[無]到底什么时候才算是个头呢？这样考虑一下……果然还是在初尝禁果之后，吧？[z]

[無]欸呀，学姐自己到底是怎么想的呢，不好好确认一下看看可就糟糕了。[z]

;◆背景（夏芽部屋）
@bg f=bg060

[無]――正在想着些乱七八糟的想法时，正巧夏芽学姐说『今天社团活动取消了……』将我带到房间里招待啦！[z]

@st2 f=st03000101
[夏芽]「房间零乱还请见谅」[z]

[和樹]「客气客气……完全没有很整齐啦！」[z]

[無]要是这个叫做凌乱不堪没有整理的话，那世界上大半的房间可能都沉浸在垃圾之海中了。[z]

@st2 f=st03000281
[夏芽]「茶……我去冲茶」[z]

@st2 f=st03000200
[夏芽]「请随便找个地方坐着吧」[z]

[和樹]「啊，好的」[z]

;夏芽部屋を出ていく
@st2_move time=500 left=-1200
@wm
@st2_del

[無]要说进入这个房间，当然已经不是第一次了……但是，紧张的层次完全不能相提并论！[z]

[無]因为，这是夏芽学姐遵循自己的意志将作为男友的我招待进入的……。[z]

[無]理所当然的，那个……期待一下惯例的亲热之后的事情也是可以的吧？[z]

[無]我也终于等到了要登上成为大人的台阶的时间了么……！[z]

[和樹]「…………」[z]

[無]……欸呀我是纯洁的好孩子，不可以不懂装懂。[z]

[無]学姐她，说不定只是单纯的把自己家选作一个约会的场所而已。[z]

[無]虽说觉得自己真是个大笨蛋，但是不由自主的满怀绮丽幻想可是男人的天性……。[z]

[和樹]「……不行不行」[z]

[無]要小心谨慎，一不留神暴走了可不行。[z]

[無]否则被夏芽学姐所厌恶什么的话……恐怕除了习惯了的恭次郎，真就要变得万念俱灰活不下去了。[z]

;◆背景（暗転）
;短めの時間経過
;◆背景（夏芽部屋）
@bgm_stop
@bg f=bg900
@bg f=bg060
@bgm f=bgm11

[無]一边喝着学姐端来的茶饮，一边吃着回来的时候买的小点心……和谐愉快的聊天说笑，这样度过了过了三十多分钟。[z]

@st2 f=st03001131
[夏芽]「…………」[z]

[無]渐渐地，和夏芽学姐之间的距离缩小了。[z]

[無]也就是说学姐她，一点儿一点儿的向着我这边靠近了过来。[z]

@st2 f=st03001153
[夏芽]「…………欸嘿（我贴）」[z]

[無]将头靠在我的肩膀上，学姐连忙闭上了眼睛。[z]

[無]……最近，常常会做出这种的甜死人的动作。[z]

[無]实际上眼前这人，是什么可爱到没边的（奇异）生物吧……。[z]

[和樹]「学姐……」[z]


[無]渐渐模糊娇颜的距离――一鼓作气吻了下去。[z]

@st2 f=st03001232
[夏芽]「嗯……啾，嗯，啊……」[z]

[無]仍旧紧紧地闭着眼睛，学姐接受了我的爱吻。[z]

[和樹]「……呼啊…………」[z]

[無]学姐的樱唇，果然最棒了……这份触感，真想永远的品尝下去。[z]

[無]要是有戏的话，真想就这样顺势下去，体验这之后的行为……！[z]

[和樹]「…………」[z]

[無]好想抚摸胸，胸部呀，可是……！[z]

[無]……现在的情况是否已经好到这样子也OK了呢，说实话根本不知道！[z]

@st2 f=st03001231
[夏芽]「呜……哈…………嗯…………」[z]

@st2 f=st03001131
[夏芽]「啾……」[z]

[無]冷不丁的，软软滑滑的，夏芽学姐伸出精致的舌头舔了舔我的软又长。[z]

[和樹]「――――！」[z]

[無]……糟了。刚才的感觉太糟糕了。[z]

[無]下半身简直是身临其境深有感触……！[z]

[無]大概，在惊喜之下我的那个好像稍稍有了一点反应。[z]

[無]虽然学姐好像还没有察觉到……。[z]

;夏芽視点
@bg_notime f=bg900
@eval exp="f.window=1"

@st2 f=st03001233
[夏芽]「…………」[z]

@st2 f=st03001231
[夏芽]「（这，这样也没用吗……？）」[z]

[無]『用舌头舔舐和树的嘴唇』的行为，是夏芽自己拼尽全力的诱惑计划了。[z]

[無]为了营造足够的气氛，需要更多更H的行动，什么的。[z]

@st2 f=st03001131
[夏芽]「（为什么对和树君好像没有效果呢……）」[z]

@st2 f=st03001231
[夏芽]「（还是说，只有这种程度的话，还是不会起『真是H呐』的念头吗……？）」[z]

@st2 f=st03001233
[夏芽]「（……对了，可能是……！听说这个年纪的男孩子都特别的性致勃勃……！）」[z]

@st2 f=st03001141
[夏芽]「（但是，要做再进一步H的事情对于我来说就……到底要怎么办才好啊ー！？）」[z]

@st2 f=st03001233
[夏芽]「（口头上直接说『人家想要』之类的，实在是太过于丢人了）」[z]

@st2 f=st03001231
[夏芽]「（要是惊吓到和树君了，我怕，气氛就真的回升不了了……）」[z]

@st2 f=st03001232
[夏芽]「嗯，呜呜……」[z]

;◆背景（夏芽部屋）
;主人公視点
@bg_notime f=bg060
@eval exp="f.window=0"

@st2 f=st03001131
[夏芽]「哈……」[z]

[無]总觉得，学姐似乎冷静不下来的样子扭啊扭地动个不停。[z]

[無]……不，要不行了。[z]

[無]不管怎样努力维持理性，在眼前这压倒性的存在面前都根本不堪一击……不行没戏我撑不住不干啦！[z]

[和樹]「前，学姐……！」[z]

[無]无法压抑忍耐，就要伸手纵欲一探乐园深浅之时――突然。[z]

;◆効果音（がちゃっと玄関ドアがやや遠くで開く音）
@bgm_stop_notime

@se0 f=ドア開_篭り

[恭次郎]「我回来啦ー」[z]

@bgm f=bgm09

@st2 f=st03000141
@st2_jump
@q
[和樹＆夏芽][font size=60]「「――――！」」[z]

[無]我和学姐，不约而同仿佛要跳起来一样将身体分离开来。[z]

[無]天杀的，恭次郎……！你丫的，为什么非要偏偏在这个最糟糕的时间点上回来呀！[z]

@st2 f=st03000231
[夏芽]「…………」[z]

[和樹]「哈，哈啊……恭次郎，碰巧回来了，呢……」[z]

@st2 f=st03000233
[夏芽]「……呜，嗯……」[z]
@st_all_del

[無]可恨啊……明明近在眼前只有一步之遥了！却给搅黄了！[z]

[無]真的就差一点点，说不定就可以，摸到夏芽学姐魄力十足的胸部啦！[z]

[無]这份仇恨，我一辈子都记住的……！[z]

[無]…………不过，稍微冷静一点考虑一下，要是就这么下去『正做的开心（奸情热恋）』的时候让他回来撞破好事就更糟糕了。[z]

[無]被发现的话，那才是真的不知道他会怎么开口了。[z]

[恭次郎]「呼啊啊……饿死了。什么吃的都没有啊……」[z]

[恭次郎]「我记着，上次姐姐买的零食，应该还有剩的啊」[z]

[無]嗯……？这货，好像还没有发现我的存在啊。[z]

[無]不止如此，好像连夏芽学姐已经归宅这一点好像也是毫无察觉啊……？[z]

[無]大概是因为在进门的时候，夏芽学姐把鞋子端端正正的收拾进鞋柜的原因吧。[z]

[無]（她的）认真劲儿真是令我绝处逢生啊……这就是养成好习惯的好处啊。[z]

[和樹]「……恭次郎一回到自己的屋子里，我，就悄悄地回去」[z]

@st2 f=st03000140
@st2_jump
[夏芽]「欸嗯……」[z]

[無]再怎么说……在恭次郎就在旁边的房间里的状态下，去做些这样那样的H的事情什么的，实在是提不起兴致啊。[z]

[無]本来学姐就已经带我进入自己的房间做了些亲亲热热的事情，要是万一被那小子发现了就会惹上大麻烦了。[z]

@bgm_stop

@st2 f=st03000131
[夏芽]「…………」[z]

@bgm f=bgm11

;涙ぐむ
@st2 f=st03000231
[夏芽]「……呜喵…………」[z]

[和樹]「学姐……！？」[z]

[無]为什么会这样，简直难以相信，无法置信……我这是在做梦么？[z]

[無]夏芽学姐的眼睛里，摇曳着淡淡的泪光……！[z]

[和樹]「你这是怎么了？我，有说什么过分的东西吗？」[z]

[無]我拉近怀里的身体凝视着她的面庞，轻柔地喃喃低语。[z]

;和樹がベッドへ仰向けに押したおされているイメージです
;◆効果音（静かめにベッドへ倒れこむ音）
@se0 f=倒れる_パサ

@q
@st2 f=st03001131
@st2_jump
[夏芽]「呜……唔唔嗯，抱歉呐，并不是和树君的……问题……」[z]

[無]学姐用手使劲儿地擦着眼角（的泪水）――扑倒在我的胸口上。[z]

[和樹]「…………！」[z]

[無]这，这这这这到底是怎么一回事……！？[z]

;ウィスパーで
@st2 f=st03001130
[夏芽]「……回去，不要」[z]

@st2 f=st03001131
[夏芽]「留在这儿……留在我身边，和树君……」[z]

[無]仿佛要抱住我一样，夏芽学姐紧紧地抓住我的T恤。[z]

[和樹]「好，好的……」[z]

[無]胸口的鼓动，一口气冲入到了红色区域（redzone）。[z]

[無]在脑袋里咚咚咚咚的鸣叫回响，吵的不行。[z]

;もう自分から言いだそう、と思い直すための間
@st2 f=st03001130
[夏芽]「…………」[z]

@st2 f=st03001131
[夏芽]「那……那个呢，和树君……」[z]

[和樹]「……怎么了？」[z]

@st2 f=st03001231
[夏芽]「让你……很扫兴，也许……说不定但是……」[z]

@st2 f=st03001233
[夏芽]「唔，窝……我呢……哎个，那个，就是，怎么说呢……」[z]

[和樹]「…………」[z]

;本人の気持ち的にはせいいっぱいうりゃーという勢いだけど、実際には小声
@st2 f=st03001130
[夏芽]「与和树君一起……还想要再做更多，更H的事情……！」[z]

[和樹]「……………………！」[z]

[無]刚，刚才那个……不是幻听吧……？[z]

@st2 f=st03001131
[夏芽]「呜……唔，和树君，果然了你的兴致？有吗？」[z]

;小声で内心頭抱えてる感じ
@st2 f=st03001232
[夏芽]「啊啊啊啊啊……」[z]

[和樹]「回答当然是毫无疑问的不可能不是吗……！」[z]

@st2 f=st03001141
@st2_jump
@q
[夏芽]「哎……」[z]

[無]我――用手臂环住夏芽学姐的身体，强而有力的拥抱着她。[z]

[和樹]「倒不如说，这么的开心没问题吗」[z]

[和樹]「真的是……给我了一个超乎想象的冲击，（不信）你听……」[z]

[無]学姐为了让耳朵可以贴到我的胸口，稍微将身体移动了一些。[z]

@st2 f=st03001131
[夏芽]「啊……真的……非常的，响亮的跳动的声音……」[z]

[和樹]「……我也希望和学姐一起……尝试各种各样H的事情」[z]

[和樹]「但是，一想到太过得寸进尺被学姐所讨厌，就畏缩不前」[z]

@st2 f=st03001231
[夏芽]「我，我也是……！」[z]

@st2 f=st03001233
[夏芽]「那种事情，要我来……对女孩子来说实在是太下流，了……」[z]

@st2 f=st03001130
[夏芽]「实在是太羞人了……但是，果然还是想要试一试……不知如何是好……」[z]

[和樹]「……学姐」[z]

[無]我紧紧的，更加用力地抱住夏芽学姐的身体。[z]

[無]学姐拥有在女孩子中相当高挑的身段，平时又进行着游泳锻炼，使得身体相当紧致。[z]

[無]但是――和身为男性的我想比较而言，果然还是纤细奢华，而又柔软娇嫩的生物啊。[z]

[和樹]「就连学姐也――不，不对」[z]

[和樹]「我，也是非常想做的……现在就在这里，我们来偷尝初次的禁果吧」[z]

;かぁっと顔が赤くなる感じ。嬉しさ半分恥ずかしさ半分くらい
@st2 f=st03001104
[夏芽]「！！！！」[z]

;はっと我に返る
@st2 f=st03001131
[夏芽]「但，可是……恭次郎还……」[z]

[和樹]「关于这个嘛――现在，我想到个非常棒的注意！」[z]

@st2 f=st03001141
[夏芽]「欸？」[z]

[無]我拿出手机，伸向妙目圆睁的学姐。[z]

;◆背景（暗転）
;◆夏芽イベント絵Ｈ01～03
;◆服装：制服
;◆背景：夏芽部屋
;◆時間帯：夕方
;※ここからＨシーン１（使用ＣＧ３枚）
;◆イベント絵（夏芽イベント絵Ｈ01‐愛撫）※参照：参考1.png
;ベッドに寝かせて、上下愛撫（制服・下着差分）
;差分：ベース状態
@bgm_stop
@bg f=bg900
@bg f=ev414_00a
@bgm f=bgm20

[無]咕噜，像是转了半圈一样――我压倒了夏芽学姐的上面。[z]

;どきどきしてる感じ
[夏芽]「…………」[z]

[恭次郎]「呜噢噢哦，赶紧麻利的……要是售罄没买回来就要倒大霉啦！」[z]

;◆効果音：ドタバタと恭次郎が家を出ていく音。最後にドアが閉まる
@se0 f=足音_屋内_タッタッタッ
@ws
@se0 f=ドア開閉_篭り
@ws

[和樹]「……非常顺利的完成啦」[z]

[夏芽]「唔嗯……和树君，很聪明呢」[z]

[和樹]「嘛这种方法不过是顺手拈来的雕虫小技而已……虽然在成绩上没什么自信就是了」[z]

[無]到底，要说发生了什么的话――其实很简单。[z]

[無]夏芽学姐，给恭次郎发了一封邮件。[z]

[無]「坐电车过五站有个小镇，那里一个有名的面点师的店铺中提供的限定蛋糕，买回来」，邮件写着这样的内容。[z]

[和樹]「那个店，非常的有人气总是排着长长的队伍……而且还要从车站大概要走上二十分钟左右才到」[z]

[和樹]「嘛不管（恭次郎他）有多快，等他回来至少也要一个半小时哟」[z]

[和樹]「……虽然不算是个好主意呢」[z]

[夏芽]「啊哈，这点，搞不好跟巡稍稍有点神似呢」[z]

[和樹]「嘿……！」[z]

[無]认真说的话……搞不还还真是……。[z]

[和樹]「总之，这下就排干扰啦」[z]

[夏芽]「……嗯」[z]

*m5
@bg_notime f=ev414_00a

@bgm cond="f.SceneReplay==1" f=bgm20

[和樹]「当真……可以吗，学姐」[z]

;恥じらいつつも迷いなく
[夏芽]「嗯。我想，与和树君做」[z]

[和樹]「…………嘿！」[z]

[無]糟糕，我现在为我的活着感到高兴……！[z]

[夏芽]「……都是第一次，对吧？我是和树君也一样」[z]

[和樹]「抱歉，正如所言」[z]

@q
[夏芽]「为什么要道歉！？」[z]

[和樹]「这个……应该说是不由自主顺势而为还是什么呢」[z]

[無]到底为什么呢，只不过是被确认为童贞男了，就变得如坐针毡无法自如了。[z]

[無]但是……我今天终于就要从那个称号上毕业啦。[z]

[和樹]「再怎么说也是经验为零，大概是会各种各样那个的吧」[z]

[無]作为健康但不健全年龄的男性而言，这中的知识和欲求当然是堆积得如山一样。[z]

[無]实践……（相比于）实践活动呀，其实完全不是一回事这一点，通过到目前的交往经历我深有感触。[z]

[無]但就kiss来说，想象和实际大相径庭。[z]

[夏芽]「这点我也是……」[z]

[夏芽]「一点一点的……两人一起，习惯了的话……我认为一定会很棒的」[z]

[和樹]「……好的！就这样……！」[z]

[無]好开心。[z]

[無]学姐的话语，真的让人好开心。[z]

[夏芽]「首先……从kiss开始么？」[z]

@bg_notime f=ev414_00b

[和樹]「…………嗯」[z]

[無]替代用话语回答――我的吻压在夏芽学姐的嘴唇上。[z]

[夏芽]「嗯…嗯嗯……唔、嗯……」[z]

[夏芽]「嗯、唔、嗯……啾……嗯唔嗯……」[z]

[夏芽]「啊哈……嗯、嗯……啾、唔啾、啾嗯……」[z]

[無]一点一点地、学姐也在自己向上伸着头想和我亲吻[z]

[無]那么――。[z]

[夏芽]「嗯、嘞咯……噗啾唔…嗯啾…」[z]

[無]似乎比起让我来领导、夏芽学姐更加积极地想要自己进攻[z]

[和樹]「…………！」[z]

[無]快感爆炸一般放射开来，深入脑髓，传遍全身[z]

[無]明明一直以来的吻都是我来领导、原来学姐有那么积极吗……而且连舌头都伸了过来。[z]

[夏芽]「啾咯、嗯……库呼、嗯啾、啾唔、啾咯……」[z]

[夏芽]「哔啾唔……嘞咯嘞咯、嗯、库啾、啾唔……」[z]

[無]学姐温暖滑嫩的香舌、在我的口腔内部伸展着爬来爬去[z]

[無]不要说理性、感觉整个身子都要融化了……！[z]

[夏芽]「哈嗯……嗯啾、哈……啾啾唔啾……」[z]

[夏芽]「啊、嗯……啾唔、嘞咯、啾咯、啾唔嗯嗯嗯……！」[z]

[無]舌头交缠、夏芽学姐对着我的嘴用力吮吸[z]

[無]两条舌头搅拌着唾液和空气、透出无法回避的淫靡气氛[z]

[夏芽]「呼嗯嗯、嗯唔……嗯……」[z]

[無]学姐不经意间的吐息，轻轻拂过我的脸颊周围[z]

[無]虽然也有点难为情，但更多的是感到更加兴奋[z]

[無]没想到被那个夏芽学姐强迫进行了这么浓厚的吻――这样的真实感冲击着大脑[z]

[和樹]「学姐……っ！」[z]

[無]但是话虽如此，但是就这样去和学姐撒娇的话，感觉也不是太合适[z]

[無]因为两个人都是第一次的关系――怎么说呢，可以的话想要两个人一起去创造初体验的美好[z]

[夏芽]「啊嗯嗯、啊、唔嗯……！」[z]

[無]于是我用自己的舌头裹缠住学姐的舌头、像是要推回去一样的开始动起来[z]

[夏芽]「哈……嗯、唔啾、嗯、嗯啊……！」[z]

[無]本来从性别与姿势上面、我应该是处于优势的位置。[z]

[夏芽]「啊、嗯嗯……！哈啾、嗯……啾唔……嘞咯……」[z]

[無]把自己的舌头伸进夏芽学姐的嘴里搅动、让唾液顺势流过去[z]

[無]用舌尖轻舔学姐的牙床、感受学姐脸颊内侧的柔软……贪婪又激烈的舌吻持续着[z]

[無]我想即使在那部电影里、也没有出现这么浓厚的舌吻[z]

[夏芽]「呼嗯嗯嗯……！哈啊啊啊……！」[z]

[無]沉迷于接吻几十秒后、应该是氧气不足了――我和夏芽学姐、虽然不止哪一方先但确实离开了彼此的嘴[z]

[夏芽]「哈啊…………哈啊…………」[z]z

[無]我们嘴巴周围，黏糊糊的[z]

[無]嘴唇的周围唾液画出细细的线来、妖艳又下流[z]

@bg_notime f=ev414_00c

[夏芽]「和树的吻……总感觉、你很熟练啊？」[z]

[夏芽]「我却、只顾上接吻却完全忘了呼吸都快昏过去了……」[z]

[和樹]「我感觉学姐你才是……！」[z]

[無]但是说老实话、如果就这样继续下去的话、就接吻来说我确实会多多少少有点自信了[z]

[無]但是确实非常的舒服……果然这种深吻也是一种明确的性行为、我想[z]

[無]从某种程度上来说，简直像是舌头和舌头在做爱一样[z]

[夏芽]「……不、不过……今天的『主要目的』也不是接吻吧、呐」[z]

[和樹]「是啊」[z]

[夏芽]「接下来……怎么办……？」[z]

[和樹]「…………」[z]

[和樹]「我想……看看、学姐的胸」[z]

[夏芽]「…………！」[z]

@q
[夏芽]「你要看！？」[z]

[和樹]「欸、难、难道不行吗？」[z]

[無]我、难道说了什么难以置信的话？[z]

[夏芽]「…………」[z]

[夏芽]「啊、啊哈哈哈……当然不是不行。也是啊、这不是肯定的嘛。明明都是裸着做的」[z]

[和樹]「……学姐？」[z]

[夏芽]「这个……听我说、我、确实预想到会被你抚摸了、但知道为啥没想过会被你看到的情况……」[z]

[和樹]「啊、确实我也不是没想去摸」[z]

[無]……欸怎么了？[z]

[無]难道说、被摸没关系、被看见更加害羞……？[z]

[無]果然女生的感性，到现在我也无法理解[z]

[夏芽]「……嗯。我明白了」[z]

[無]学姐在那里悉悉索索地，好像要自己把衣服脱掉。[z]

[和樹]「啊！稍、稍微等一下……！」[z]

[夏芽]「纳尼？」[z]

[和樹]「那个……可以的话还是想由我来脱掉、不行吗」[z]

@q
[夏芽]「欸欸！？」[z]

[夏芽]「和树来……！？那、那样再怎么说也太羞人了……！」[z]

[和樹]「这是男人的梦想！」[z]

[夏芽]「…………」[z]

[無]……糟糕了。下意识之下太过激动了，是不是吓到学姐了……。[z]

[夏芽]「唔、嗯……我知道了」[z]

[無]脸变得更红的学姐，慢慢把手从衣服扣子上离开[z]

[無]……啊太好了！[z]

[和樹]「…………咕」[z]

[無]我不由得咽了一口唾沫[z]

[無]自己也能感到手是在颤抖的——我向着夏芽学姐的衣服伸出了手[z]

@bg_notime f=ev414_00d

[夏芽]「哈……」[z]

[無]慢慢被脱掉衣服，原本就很兴奋的夏芽学姐更是变得脸如火烧[z]

[無]甚至，连耳朵都变得红扑扑的[z]

[夏芽]「感、感觉比我想象中，还要让人害羞啊……！」[z]

[和樹]「那个……也就是，直接被我看到内衣和身体，这样的情况吗？」[z]

[夏芽]「虽然、也有这个原因……啦」[z]

[夏芽]「被别人帮着脱衣服、怎么说呢……好像宝宝一样被人照顾，不由得这么想」[z]

[和樹]「啊、可以理解」[z]

[無]是那种吧[z]

[無]就是那种，好像在医院里，被护士帮着换衣服的感觉那样吧？[z]

[和樹]「……但是、总感觉很抱歉」[z]

[夏芽]「欸？」[z]

[和樹]「看着、学姐现在这种『非常害羞的脸』啊、感觉已经忍不住了、各种各样的东西都出来了……！」[z]

[無]是吧、这种……衣着凌乱脸红心跳的场面、这谁顶得住啊。[z]

[無]比起直接看到内衣，更像是从衬衫和裙子缝隙里『偷瞄』『偷窥』的感觉……！[z]

[無]甚至现在连衣服上的褶皱、都能让我无可救药的兴奋不已。[z]

[夏芽]「――――」[z]

;さらに恥ずかしくなる
[夏芽]「欸、忍不了了你有话直……嗯嗯嗯！」[z]

[無]用吻堵上学姐的嘴、把手指放到胸罩上。[z]

@bg_notime f=ev414_00e

[夏芽]「嗯、呼啊……哈啊……！」[z]

[夏芽]「…………嗯！」[z]

[無]一个很短的吻，抬头看向学姐、紧紧地盯着学姐露出来的胸部……紧紧地。[z]

[無]伊呀、谁被谁迷住、可不好说啊。[z]

[無]虽然我的确是遵循自己的意志去看的、但是总有一种是被学姐胸部的魅力吸引过去的错觉。[z]

[夏芽]「别、凝别这样一直盯着看啊……唔……」[z]

[和樹]「那可做不到」[z]

[無]夏芽学姐的胸真是极品――形状优美、却有非常柔软的乳房、还有点缀在前端的淡淡的樱色乳头[z]

[無]这绝景深深地抓住我的视线、让人根本无法转头[z]

[夏芽]「不……不要啊…………」[z]

[無]看来、被盯到无法忍受了、夏芽学姐打算用手遮住胸。[z]

[和樹]「……不会让你得逞的！」[z]

[無]连忙抓住学姐的胳膊阻止她……让这等绝景消失什么的、是男人之耻！[z]

[夏芽]「呜呜呜…………」[z]

[無]结果、学姐只能像逃开一样移开视线。[z]

[無]你不停下来视线的话、那我只能自己……好像这样说。[z]

[和樹]「…………」[z]

[無]抱歉啊学姐、我不是故意想要欺负你的――一边这样在心里道歉、一边紧紧地盯着学姐的胸。不如说是必须要看。[z]

[無]……很厉害。[z]

[無]真的、又大、又漂亮。[z]

[無]老实说、这可能是我出生以来最感动的时候……！[z]

[夏芽]「哈…………哈…………」[z]

[無]大概、因为兴奋让身体变得燥热起来了。[z]

[無]学姐的呼吸、也慢慢变得粗重起来。[z]

[無]理所当然地――那胸部的起伏、也变得更加剧烈了……！[z]

[夏芽]「嗯、唔嗯嗯……嗯嗯…………」[z]

[無]洁白丰满的乳房、随着呼吸缓缓的摇晃着[z]

[無]凑近看的话就会明白……真是娇嫩、又美丽。[z]

[無]虽然平时隔着衣服也能猜到会多么厉害、但是直接见到还是深深震撼了我……！[z]

[夏芽]「就、就这么……喜欢、胸吗……？」[z]

@q
[和樹]「当然喜欢！」[z]

@q
[夏芽]「不假思索的回答！？」[z]

[和樹]「这是非常自然的感想！」[z]

;ちょっとほだされて観念する
[夏芽]「…………」[z]

[夏芽]「……不准备、摸摸看？」[z]

[和樹]「当、当然要――！」[z]

[無]难得的时候、只上一只手也太可惜了……这样想着、伸出双手展现敬意一般触摸夏芽学姐的胸口。[z]

@bg_notime f=ev414_00f

[夏芽]「哈啊……！」[z]

[無]指尖碰到肌肤的一瞬间、学姐的身体突然一个激凌。[z]

[無]在手掌之中、摇晃着的、是那丰满的乳房。[z]

[夏芽]「哈啊……嗯、哈唔……」[z]

[夏芽]「感觉、心里突然一惊……嗯嗯……」[z]

[和樹]「学姐……唔……！」[z]

[夏芽]「啊、嗯唔……哈、嗯……」[z]

[無]一点点的……在手上施力。[z]

[無]慢慢地、指尖没入乳肉中的感觉真是绝妙……糟糕、感觉脑髓都快融化了。[z]

[無]虽然乳房非常的柔弱、但是也有推回我的手指一般的弹力。[z]

[無]为什么女孩子的身体、是那么完美的神造？[z]

[和樹]「……没有、让你感到疼痛吧？」[z]

[無]已经、想要对着这个极品的胸、倾泻大力揉搓的欲望了。[z]

[無]……但是、这样做的话她只是单纯的感觉疼痛而已，这样的话也曾经听说过。[z]

@bg_notime f=ev414_00e

[夏芽]「嗯……我想应该、没关系的……」[z]

[夏芽]「当然太过用力的话、应该还是会痛的」[z]

[和樹]「……我会注意不要这样的」[z]

[無]得到她的点头许可后、我重新开始对胸部的爱抚[z]

@bg_notime f=ev414_00f

[夏芽]「啊哈……嗯嗯……」[z]

[無]不只是单单在乳房上揉搓、还从下方向上抓揉。[z]

[無]……从手掌之中感到的充实、让人再一次的体会到夏芽学姐的胸有多厉害。[z]

[無]秒杀全场……！[z]

@bg_notime f=ev414_00e

[夏芽]「哈、哈……和树、感觉……你的手法、很下流……」[z]

[和樹]「我们就在做下流的事情，那不是当然的嘛」[z]

[無]要让我在这种情况下、压制自己的激动心情慢慢来……不可能做不到想太多了[z]

[和樹]「学姐不也是、已经H的舒服的不得了……不是吗？」[z]

[無]一般窥视着学姐的反应、轻轻地、一边用两只手指捏住乳头。[z]

@bg_notime f=ev414_00f

[夏芽]「噫噫！？」[z]

[和樹]「感觉，和刚才比起来乳头变得更突出了」[z]

@bg_notime f=ev414_00e

[夏芽]「嗯、嗯……感觉、麻麻的……」[z]

[和樹]「……这样来的话吗，感觉很不错？」[z]

[無]用像是划着小小的『〇』字一样的感觉，抚摸一般刺激着乳头的周围[z]

@bg_notime f=ev414_00f

[夏芽]「…………唔！」[z]

[夏芽]「唔、唔……好厉害的、要……来了！」[z]

[夏芽]「舒服、极了……！」[z]

[和樹]「…………！」[z]

[無]我说学姐、你用这样的表情说舒服的话……！[z]

[無]自己能够，让喜欢的人舒服起来的……！[z]

[無]很高兴。非常的有成就感，真的。[z]

[夏芽]「能感觉到、抚弄乳头……内心深处，像是揪紧了一样」[z]

[和樹]「……」[z]

[無]我尝试用双手揉捏、同时用手指间夹着乳头、轻轻地拉了拉。[z]

[夏芽]「哈啊啊……！」[z]

[夏芽]「嗯……哈啊……嗯嗯……！」[z]

[夏芽]「感觉、脑子、都麻了…………嗯唔……！」[z]

[無]忍耐不住的夏芽学姐开始轻轻地扭动[z]

[和樹]「啊……」[z]

[無]难道说，学姐……[z]

[和樹]「……已经湿了，对吧……？」[z]

@bg_notime f=ev414_00e

[夏芽]「…………欸！」[z]

[夏芽]「也、也许吧……不过这种体验从没有过，到底怎么样了我也不太清楚……」[z]

[和樹]「…………」[z]

[和樹]「……我、学姐的这里……能不能、让我看看」[z]

[無]我把―揉着胸的一只手慢慢滑到学姐的股间、同时窥探着学姐的反应。[z]

[夏芽]「唔唔唔…………！」[z]

[無]再怎么样被说了『我想看看你的股间』也不会一点抵抗都没有。[z]

[無]夏芽学姐也是一副，害羞地什么都说不出来的神情。[z]

[夏芽]「…………嗯」[z]

[無]不过尽管如此――学姐依然、微微地、但却非常坚定地点了点头[z]

[無]然后，自己稍微让腰靠过来一点。[z]

[無]……大概让我脱起衣服来更方便一点，是有这样的考虑的吧。[z]

[無]总觉得、这一切的一切……让夏芽学姐在我的眼里看来、越发的可爱起来……！[z]

[和樹]「总之……各种方面谢谢了！」[z]

[無]总觉得这种时候道谢有点怪怪的？我是这样想的。[z]

[無]但是――怎么说、我就是想要把自己最真切的感情传达出来。[z]

[無]至于接受不接受什么的，那是学姐自己的事情[z]

@bg_notime f=ev414_00g

[夏芽]「……哈啊…………」[z]

[無]内衣被渐渐地脱下来露出股间――学姐的视线、也暂时在空中徘徊着。[z]

[夏芽]「不、不要一直盯着不停……虽然我想这样说……不过、大概你做不到吧……？」[z]

[和樹]「嗯，做不到」[z]

[無]学姐也渐渐地、理解了男人这种生物是怎么样的[z]

[無]……不如说是被我做了这么多被迫了解的比较好。[z]

[和樹]「…………」[z]

[無]我看的出神不禁咽了口唾沫……亲眼看到女孩子的这里、当然是人生中头一回的体验。[z]

[無]也许是兴奋到大脑有点短路了，从表面来看的话我反倒变得平静下来了。[z]

[和樹]「学姐的这里……非常漂亮」[z]

[夏芽]「是、是吗？」[z]

[夏芽]「虽然我自己从来没思考过怎么看待这里……」[z]

[和樹]「是这样的吗？」[z]

[夏芽]「……你看啊、感觉……有点内个不是吗？」[z]

[夏芽]「虽然是自己的身体、但是看起来感觉并不怎么样……」[z]

[和樹]「啊、嘛啊……也不是不能理解」[z]

[無]就算是我们男生、看着自己的那话儿感觉也是有点奇怪。[z]

[夏芽]「虽然有时候也『弄过』这里、来的……」[z]

[和樹]「……啊、是啊。你是游泳部来着」[z]

[夏芽]「以防万一，算是」(翻：应该是不处理耻丘的毛的话，穿竞速泳衣可能会藏不住)[z]

[無]女孩子、有时候也是很辛苦的来着……。[z]

@bg_notime f=ev414_00h

[夏芽]「啊……嗯……」[z]

[無]用指尖轻轻地描划着裂缝，夏芽学姐就无法忍耐地吐出娇声[z]

[無]和怕痒一般，类似的感觉。[z]

@bg_notime f=ev414_00g

[夏芽]「有、有点痒痒地……嗯」[z]

[和樹]「但是不是感觉不舒服吧……？」[z]

[夏芽]「没……没错……」[z]

[夏芽]「如果被和树你以外的人碰到的话、大概感觉会很不爽……」[z]

[夏芽]「但是不可思议地……被和树你的手指弄的话、感觉躁动不安、心动不已」[z]

[夏芽]「虽然有点害羞、但确实很舒服……很高兴……感觉气氛好奇怪啊哈哈……」[z]

[和樹]「……啊」[z]

[無]不经意间――从手指尖端、传来湿热的感觉。[z]

[無]从缝隙内部开始渗出爱液。[z]

[和樹]「嗯……」[z]

@bg_notime f=ev414_00h

[夏芽]「呀……！唔、啊……！」[z]

[無]为了挖掘出更多的爱液，我让手指稍微进入了一点。[z]

[夏芽]「哈啊、唔、嗯……咕唔……」[z]

[無]……在那湿润的感觉深处，更多的是温暖。[z]

[和樹]「学姐的里面，好厉害……」[z]

[無]于是顺势，让手指更加深入其中，在里面不断翻搅着――。[z]

@bg_notime f=ev414_00g

[夏芽]「噫！等、等一下，和树……！」[z]

[無]突然――夏芽学姐伸手，抓住我的大臂阻止我。[z]

[和樹]「啊、对不起！弄疼你了吗？」[z]

[無]确实，这里算是比较敏感的部位。[z]

[無]姑且我也是剪好磨圆了指甲，注意着不要太粗暴的对待了。[z]

[無]不过即使这样对学姐来说刺激也可能太强了。[z]

[夏芽]「呃、不不不、不是这个意思」[z]

[夏芽]「被这样弄，确实非常舒服，不过你……」[z]

[無]夏芽学姐的视线――是冲着我的股间去的。[z]

[夏芽]「……从刚才开始，这里，我就一直在意的不得了」[z]

[和樹]「啊……」[z]

[無]算是不可抗力，那里清晰地显现出我勃起的那话……不如说从现在的情景看这样也是正常的。[z]

[夏芽]「和树你动手动脚地，让我在这里瞪眼看着，感觉不公平啊？」[z]

[和樹]「你是这个意思！？」[z]

[夏芽]「嗯」[z]

[夏芽]「我也是，想看看，和树你那重要的地方……！」[z]

[和樹]「是、是吗……不过看看也没什么关系」[z]

[夏芽]「……而且」[z]

[夏芽]「我也有……想要试一下的事情……！」[z]

[和樹]「欸欸！？」[z]

;乱れた制服のまま、フェラ（ラストは口内射精）
@bg_notime f=ev414_01a

[夏芽]「嗯嗯唔……！」[z]

[夏芽]「啊呣、嗯……哈唔、嗯嗯……」[z]

[無]学姐突然一下含住了――我那已经硬的不得了的老二。[z]

[和樹]「等……等下、学ji……？唔啊啊……！」[z]

[無]第一次尝试，就直接开始口交……！？[z]

[無]是的、作为一个大老爷们儿我是很憧憬这种、男孩子『要求』女孩子做的事情不过――！[z]

;最初に軽く口を離した感じ
[夏芽]「嗯唔……男孩子这样做、都会感觉很舒服的吧……？」[z]

[夏芽]「前段时间，从巡那里听说的……」[z]

[夏芽]「男孩子大都敢想不敢说，我们要主动引导，什么的……」[z]

;咥えなおし
[夏芽]「啊唔、嗯……啾、唔嗯……」[z]

[和樹]「…………！」[z]

[無]老、老姐啊！[z]

[無]不知道是不是应该夸你助攻助的好了……！[z]

[夏芽]「嘞咯……嗯、咕啾……啾啪……」[z]

[和樹]「唔啊！确、确实舒服的不得了啊、嗯……！」[z]

[無]学姐的舌头，在我的那话上滑溜溜地爬来爬去。[z]

[無]小心翼翼……好像就是这种感觉似的、动作有点放不开，但我还是有不得了的快感。[z]

[和樹]「唔、哈啊……！」[z]

[無]虽然我感觉、有点难为情……但还是受不了这种刺激、禁不住发出声音。[z]

;最後で一度口を離した感じ
[夏芽]「嗯、嗯、嗯……嘞咯、啾……唔唔…………哈」[z]

[夏芽]「感觉怎么样……？」[z]

[夏芽]「有什么、想让我去接着弄的地方，不要忍着不说啊」[z]

;最後でキス
[夏芽]「毕竟，我确实不知道哪里让你更舒服……唔……」[z]

;咥えなおし
[夏芽]「哈唔、嗯……嗯嗯嗯、哈……嗯啾……」[z]

[和樹]「唔啊……咕……！」[z]

[夏芽]「嘞咯嘞咯……嗯……唔、啾、啾啪、噗唔」[z]

[無]学姐好像――很在意我的感觉如何。[z]

[無]想要确认我的表情似的，不时抬眼向上看我。[z]

[無]不过这种……向上的视线，只会让我更加兴奋。[z]

[和樹]「……那、那么……也用一下手、来弄弄看好吧……！」[z]

[無]已经……在意不了多余的事情了。[z]

[無]眼里只有接受夏芽学姐的好意这一件事。[z]

[夏芽]「嗯……嗯……」[z]

[無]知道了……但是、怎么做？学姐含着我的东西望向我，好像诉说着这样的意思。[z]

[和樹]「握住这里、慢慢地撸动着来的话，我会感觉很舒服的」[z]

[和樹]「如果可以的话也慢慢地前后摇头……」[z]

[夏芽]「……嗯」[z]

[無]我到底追求着什么样的情景，学姐好像一下子就明白了。[z]

[無]用眼神示意知道了、握住我那里的手指略微加大力度、一下、一下地……撸动着。[z]

[和樹]「对对对！啊啊、感觉太舒服了……」[z]

[和樹]「然后……舌头、能舔舔前端和里筋，就好了……」[z]

[夏芽]「唔啾、啾咯咯……唔、嗯啾、啾……」[z]

[夏芽]「啾、嗯啾……嗯、唔……噗……嗯嗯嗯嗯……！」[z]

[無]慢慢地掌握要领的学姐，口交的技术力不断地上涨。[z]

[無]于是我感觉到的快感也迅速地变大。[z]

[夏芽]「唔啾、啾……唔噗、嗯啾、啾啪」[z]

[夏芽]「嘞咯……嘞咯、啾、啾啪……嗯……」[z]

[和樹]「咕……！唔啊、哈……！」[z]

[無]不、不行了……这感觉已经有点忍不了了！[z]

[無]我也是第一次被这么弄、根本不可能忍耐这么长时间……！[z]

[夏芽]「啾噗、嗯、噗啾、咕啾、啾破、啾咯咯……！」[z]

[夏芽]「嗯……哈唔、嗯噗、啾咯、啾破、嗯嗯嗯……っ！」[z]

[無]估计、有想要处理一下积蓄了这么长时间的唾液的意思。[z]

[無]夏芽学姐，喉咙里传来了咽东西的声音，也感觉到吸取的压力。[z]

[和樹]「…………唔！」[z]

[無]不妙。这当真不妙。[z]

[無]感觉全身麻痹一般强烈的快感、让我无法忍耐。[z]

[夏芽]「嗯啾、啊呣……嘞咯、嘞咯……啾噗！」[z]

[夏芽]「哈、啊嗯……啾、嗯噗……啾唔、嘞咯……嗯嗯！」[z]

[和樹]「学、学姐……我、已经……忍不住……了啊啊啊！」[z]

[無]从下半身膨胀开来的欲望，理所当然地寻求释放般向肉竿冲来。[z]

[夏芽]「嗯嗯……啾、嗯！」[z]

[無]夏芽学姐、表情也变得更紧张了。[z]

[無]男的更舒服的话会怎样，估计她也不会不知道。[z]

[無]虽然这样――。[z]

[夏芽]「嗯、啊呣、啾唔、嘞咯、嗯噗、啾啪……！」[z]

[無]学姐不仅没有放开手……岂止这样、还加速起来。[z]

[無]像是在催促我射出来。[z]

[夏芽]「哈唔、嗯、嗯嗯……！啾、啾、啾咯咯……！」[z]

[夏芽]「啾……嘞咯嘞咯、嗯噗、哈唔……嗯、噗啾……！」[z]

[無]夏芽学姐――一点也没有要放开我那里的意思。[z]

[無]这样下去的话、我，就会在学姐的嘴里射出来了……没关系吗？[z]

[無]明明是第一次，就做这样的事没关系吗……！？[z]

[和樹]「啊啊、学姐、学姐……啊、出来了……唔！」[z]

[無]……已经没有多余的精力考虑这些了。[z]

[無]真的要出来了……！[z]

[夏芽]「嗯啾、啾、啾咯咯咯……！」[z]

[無]学姐，用力吮吸前端的那一刻――。[z]

[和樹]「唔啊、唔……哈啊啊啊！」[z]

@white f1=ev414_01a f2=ev414_01b

[夏芽]「呜呜咕咕咕咕――――！」[z]

[無]我在……夏芽学姐的嘴里，尽情的释放了欲望。[z]

[夏芽]「嗯唔！嗯、唔唔……嗯咕…………！」[z]

[無]再怎么说也会被惊到，学姐的表情稍稍变化。[z]

[無]不过――。[z]

[夏芽]「嗯……哈、嗯唔……唔唔…………」[z]

[無]夏芽学姐、并没有把我的东西从嘴里吐出来。[z]

[無]我那颤动的肉棒被更加深地含着、后半部被手指慢慢抚弄着。[z]

[和樹]「唔啊…………啊、哈…………」[z]

[無]在正戏之前、先享受了……口交。[z]

[無]而且还、在夏芽学姐的嘴里……[z]

[無]不过确实舒服的魂都快飞了[z]

[夏芽]「哈唔、嗯嗯……嘞咯、嘞咯……」[z]

[無]几秒钟之后、射精结束之后，夏芽学姐再度用舌头舔了起来。[z]

[無]精液从嘴边溢出，洒落的样子，有着言语无法表达的色情。[z]

[無]快感的余韵、又开始慢慢地波动着。[z]

@bg_notime f=ev414_01c

;最後でちょっと口離してる感じ
[夏芽]「……嗯、唔唔…咕咕咕……」[z]

[無]咕咕、喉咙慢慢地动着咽下去、夏芽学姐又开始看着我。[z]

[和樹]「学、学姐……你不会、把、我的精液、喝下去了……？」[z]

[夏芽]「嗯……嗯……」[z]

[夏芽]「有什么、问题吗……？」[z]

[和樹]「不、不会……我当然不会有什么抱怨」[z]

[無]学姐如果不会感觉『难吃』的话……。[z]

[夏芽]「嗯……感觉好好不可思议啊、精液……嗯、啾唔……」[z]

[和樹]「……唔咕……！」[z]

[無]学姐突然亲了我的肉棒前端。[z]

[無]在刚刚射精不久还很敏感的地方这样刺激的话，感觉又要忍不住了。[z]

[無]我的那里……也很快的、重新硬了起来。[z]

[無]倒不如说，可能比起刚才来说还要更加的硬――。[z]

[和樹]「学姐……」[z]

[無]把手放到夏芽学姐的肩膀上、看着她的脸。[z]

[夏芽]「……嗯」[z]

[無]看来不用明说……我心里在想什么、已经传达给她了。[z]

@bg_notime f=ev414_02a

[夏芽]「噫啊……」[z]

[無]向着再次看到仰面躺下的夏芽学姐的股间，贴上我的那个东西。[z]

[無]口交的时候可能学姐自己也变得更兴奋了吗……比起刚才爱抚的时候更湿润了。[z]

[無]不如说、比起湿润来说、更像是泥泞不堪了。[z]

[和樹]「哈啊 ……」[z]

[夏芽]「噫啊、啊嗯……！」[z]

[無]并没有一下子插进去，而是先沿着小穴的缝隙蹭了几次。[z]

[無]混合着唾液和爱液，粘稠还滑溜溜的。[z]

[夏芽]「哈啊………哈啊…………！」[z]

[無]可能是紧张与兴奋的心情使然。[z]

[無]夏芽学姐的吐息，变得急促危险。[z]

[和樹]「……学姐没问题吧？」[z]

;深呼吸
[夏芽]「…………呼…………哈…………」（深呼吸）[z]

[夏芽]「没、没事……抱歉…………已经、平静下来了…………」[z]

[夏芽]「一想到，到了这一步……感觉有点晕晕的」[z]

[和樹]「……我也是、从刚才开始就亢奋的不得了」[z]

[無]苍木夏芽学姐。[z]

[無]她是姐姐的朋友，而且还是朋友的姐姐这样奇妙关系的人。[z]

[無]没想到能和她――交往，甚至马上就要做色色的事情。[z]

[無]潜藏在内心深处的，恐怕还有一点无法相信的实感。[z]

[無]估计这一点、夏芽学姐也或多或少有点体会。[z]

[無]虽然并不是近亲相奸、NTR……之类的，那种禁忌感和背德感。[z]

[無]不如说就算我和学姐交往，按照社会上的一般看法来说，也完全没有问题。[z]

[無]虽然没有问题，不过却有一点内疚……或者说，尴尬的感觉。[z]

[無]应该说我们心中不由自主地，就会浮现起共同友人或亲人的身影。[z]

[無]不够即使这样――。[z]

[夏芽]「……那、来吧……和树」[z]

[無]看起来已经做好觉悟了，被夏芽学姐这样的表情注视着，现在的我是不可能在这里停下来了。[z]

@bg_notime f=ev414_02b

@q
[夏芽]「嗯嗯，啊哈啊啊啊…………！」[z]

[和樹]「咕……！」[z]

[無]肉棒的前端没入小穴的里面，慢慢地前进着。[z]

[無]虽然已经是相当湿润的状态……但前进，仍然不是一帆风顺的。[z]

[夏芽]「唔啊、啊啊……嗯嗯嗯……！」[z]

[夏芽]「哈啊……唔、咕啊……！」[z]

[和樹]「呃嗯……！」[z]

[無]但还是渐渐推开温暖的肉壁、向着学姐更深的地方前进着。[z]

[夏芽]「啊啊……嗯啊、哈嗯……啊……！」[z]

[無]学姐的身体突然紧绷――然后过了一会儿，终于慢慢放松了。[z]

[無]我想，她是有意识地不让自己变得太过僵硬。[z]

[和樹]「学姐……っ！」[z]

[無]……太好了、总算全都进去了……！[z]

[夏芽]「呼啊……！哈啊…………」[z]

@bg_notime f=ev414_02c

[夏芽]「进，来了……？」[z]

[無]学姐紧张地看着我的脸庞，小声地嘟囔着。[z]

[和樹]「……是的」[z]

[夏芽]「嘿嘿……」[z]

[無]看到我点头以后、学姐的表情柔和了。[z]

[夏芽]「终于……结合了、我们」[z]

[和樹]「嗯、现在我们……完全连在一起」[z]

[無]我们不由得、一起向结合着的部位看过去――。[z]

@bg_notime f=ev414_02d

[夏芽]「呃……！」[z]

[和樹]「啊哈哈…………！」[z]

[無]然后又突然害羞起来、变回互相凝视的状态。[z]

[夏芽]「这、这比我想象中、还要更加有感觉、说不定……」[z]

[和樹]「同感……」[z]

[無]我那勃起变硬的东西、深入到学姐那湿热的秘穴――。[z]

[無]虽然用语言描述起来只是这样的情景，不过。[z]

[無]看起来就是这么的淫靡……让人心情亢奋。[z]

[和樹]「……很痛吗？没关系吧？」[z]

[夏芽]「说是疼、不如说痒痒的……感觉稍微有点不适？这样形容更贴切」[z]

[夏芽]「不过、没关系。不是什么完全忍受不了的东西」[z]

[和樹]「是吗……那太好了」[z]

[無]虽然确实没什么太大的问题，但是我对学姐的身体造成了伤害确实是事实。[z]

[無]我想、还是让她尽可能地舒服起来不去在意。[z]

[夏芽]「和……和树你才是，没有问题吧？」[z]

[和樹]「啊？」[z]

[夏芽]「这、这个……东西……」[z]

[夏芽]「是男孩子最敏感的部分、没错吧……？」[z]

[夏芽]「会不会……我的里面太紧会感到疼痛……」[z]

[和樹]「…………」[z]

[無]明明是第一次。[z]

[無]自己这里还很痛。[z]

[無]在这种情况下、还在关系我的感受。[z]

[無]夏芽学姐、夏芽学姐她……简直是上天派来的天使啊！？[z]

[和樹]「我完全没问题的。不用担心我」[z]

[和樹]「确实这里是非常敏感……但不是那种易碎品，没关系」[z]

[和樹]「不过被踢一下的话、还是会疼老半天就是了」[z]

[夏芽]「是吗……」[z]

[和樹]「不如说……学姐了里面又温暖、又柔软……」[z]

[和樹]「简直是、舒服的不得了」[z]

[夏芽]「我就……感觉稍微有点、不协调的感觉……就是了……」[z]

[無]……是啊、这也是当然的。[z]

[無]毕竟是外物、强硬的进来。[z]

[夏芽]「不过……不知怎么的、感觉很满足，心里有点痒痒地……」[z]

[夏芽]「真的与和树你……做爱了，紧紧相连了、有点……不可思议的感觉」[z]

[和樹]「……那种感觉、我也是一样」[z]

[無]那种――真的和夏芽学姐成为了亲密关系的感觉。[z]

[無]没想到这么短时间、我本来还在为了能不能找到女朋友而烦恼不已的。[z]

[和樹]「那个……我感觉现在动起来的话也没关系了吧？」[z]

[無]不过其实是，如果还这样一动不动的话，我可能就不战自降了。[z]

[無]学姐里面的感觉就是这么的舒服。[z]

[夏芽]「嗯……也是、啊……」[z]

[夏芽]「摩擦起来的话才会舒服，男孩子的话」[z]

[和樹]「虽然没错。不过学姐要是还很疼的话、也不用勉强」[z]

[夏芽]「……没关系。我，可没有这么柔弱。而且……」[z]

[無]说着、学姐目光柔和的笑了。[z]

[和樹]「而且什么？」[z]

[夏芽]「刚才、用嘴给和树你做的时候……」[z]

[夏芽]「我虽然……有点害怕、但是也是很高兴的」[z]

[夏芽]「胸口紧紧的感觉、这么说？……感觉很甜蜜」[z]

[夏芽]「那种感觉、还是第一次有」[z]

[和樹]「学姐……」[z]

[夏芽]「前段时间、和巡聊天时候被问到了『拿我弟弟当过晚上的配菜吗？』」[z]

[和樹]「――哈！？」[z]

[無]老、老姐和夏芽学姐、都在聊些什么啊！？[z]

;ちょいあわていいわけ
[夏芽]「啊、就、就是对话中自然转向这里了、不如说是开玩笑一般的说……」[z]

[和樹]「是吗……」[z]

[夏芽]「不过……那时候、我、回答她的是怎么可能」[z]

[和樹]「也是、能够理解了」[z]

[無]就像爷们之间『这个人绝对好撸』那样的对话原来女生也会说啊……。[z]

[無]有点能够想象的这样的场景了。[z]

;ちょっと恥ずかしそう
[夏芽]「不过刚才……我肯定是、用和树你、让自己兴奋了」[z]

[和樹]「…………！」[z]

[夏芽]「不如说、现在也是……」[z]

[無]用着温柔的声音引诱着我――同时学姐还凝视着我的眼睛。[z]

[無]稍微、秘穴收缩了一下、勒紧了我的老二。[z]

[和樹]「……唔、啊……っ！」[z]

[無]这、突然袭击……！[z]

[夏芽]「和树你看起来很舒服、很兴奋的样子」[z]

[夏芽]「所以说、虽然你顾虑着我让我也很高兴……不过我还是想让和树你舒服起来」[z]

[和樹]「那……好的！」[z]

[無]轻轻点头、我终于开始缓慢活动起来。[z]

@bg_notime f=ev414_02e

[夏芽]「嗯啊、啊…………唔啊…………！」[z]

[無]我慢慢的……把我的东西从秘穴里拔出来。[z]

[無]秘穴内壁的褶仿佛不舍一般挽留、缠绕着肉竿，吸附着。[z]

[和樹]「嗯、哈啊……！」[z]

[夏芽]「哈啊……哈、嗯…………唔哈啊！」[z]

[無]就在快要全部拔出来之前，我又停下来反插进去。[z]

[無]比拔出来更快的、啪的、重重地向着里面突入。[z]

[夏芽]「噫嗯……！嗯、啊嗯呃……！」[z]

[夏芽]「啊、啊唔……！感觉、好、厉害……啊啊嗯……！」[z]

[夏芽]「和树的……那个、在里面……嗯、唔啊、啊啊啊……！」[z]

[和樹]「啊、啊啊……！学姐……里面、好舒服……唔……！」[z]

[無]夏芽学姐的身体、对刺激非常敏感。[z]

[無]面对着我的进攻，秘穴内壁的褶皱不规则的蠕动着、整个秘穴仿佛活物一般。[z]

[夏芽]「呀、哈啊……！啊嗯、和、树……嗯！」[z]

[夏芽]「这、这个地方、感觉……很好……嗯嗯嗯……！」[z]

[無]看来、前端偶然碰到的、是学姐非常有感觉的地方。[z]

[無]学姐的反应明显比刚才更大。[z]

[和樹]「是这个、地方吧……？」[z]

[無]于是缩短冲刺的间隔，用前端重点刺激刚才学姐感觉舒服的地方。[z]

[無]是腹部那边、稍微有点的浅的地方。[z]

[無]用雁首的地方、轻轻地刮蹭着――。[z]

[夏芽]「嗯！啊、嗯唔、是、没错……！」[z]

[和樹]「唔、啊……！」[z]

[無]学姐里面、突然变得更紧了。[z]

[無]像是岩浆喷发一般的射精的冲动、在体内快控制不住了。[z]

[無]虽然已经、射过一次了……但还是已经忍不住了。[z]

[和樹]「学姐、学姐……唔啊啊……！」[z]

[無]腰部的动作自然地加快了[z]

[夏芽]「嗯啊、啊、太舒服了……！和树……！」[z]

[夏芽]「好厉害……！太有感觉了、嗯嗯……！」[z]

[夏芽]「哈啊、哈啊……啊嗯、啊啊啊……！」[z]

[無]……啊、真的已经。[z]

[無]听到夏芽学姐、这可爱又诱惑的声音、已经没办法忍耐了……！[z]

[夏芽]「和、和树……！我、已经……唔、啊啊……！」[z]

[夏芽]「感觉、十分、不得了……哈、唔、嗯嗯……！」[z]

[和樹]「我也……也已经、忍不住了……！」[z]

[無]理性的堤坝、已经被快感的洪流所冲垮。[z]

[無]赤裸的欲望洪流――毫无保留地冲击着学姐。[z]

[夏芽]「啊、嗯、呀啊、啊、啊啊……！」[z]

[夏芽]「不……不要、我……已、已经……哈啊、啊啊啊！」[z]

[和樹]「唔……！学姐……出来了……！」[z]

[無]意识到这已经是最后挣扎之后、我任凭欲望驱使地疯狂动起腰来。[z]

[夏芽]「嗯嗯……！来吧、射出来……！」[z]

@bg_notime f=ev414_02b

[夏芽]「啊、啊、嗯啊、啊……啊啊啊啊啊啊……！」[z]

[無]学姐了秘穴、突然紧紧地收缩颤动起来――。[z]

[和樹]「唔――――！」[z]

@white f1=ev414_02b f2=ev414_02f

[夏芽]「啊啊啊啊啊啊啊啊啊――――！！」[z]

[和樹]「唔唔唔啊啊！」[z]

[無]学姐的身体开始一跳一跳地大幅度颤抖着、几乎同时……我在里面也倾注出全部的欲望。[z]

@bg_notime f=ev414_02g

[夏芽]「噫啊、啊、啊嗯…………！」[z]

[夏芽]「啊、嗯……热热的…………哈啊…………」[z]

[無]从肉棒前端射出来的精液、一下一下地把学姐的身体染白了。[z]

[夏芽]「嗯……！好、厉害…………啊、哈啊…………」[z]

[夏芽]「哈啊…………嗯、哈啊啊…………」[z]

[和樹]「哈啊……哈啊……！」[z]

[無]对着学姐的身体、尽情地射出来了……。[z]

[無]那是一种满足感和背德感交织的、无法形容的奇怪感觉。[z]

[夏芽]「……真的、出来了好多啊…………」[z]

[無]终于平静下来的学姐、向着我微微笑着。[z]

[和樹]「我也是感觉很厉害……明明都是第二次了」[z]

[無]精液是那种、想要多少就有多少的东西吗……感觉我的身体、有点厉害啊……。[z]

[夏芽]「……真的……一直舒服到最后了吗……？」[z]

[和樹]「嗯……不过、怎么说呢、学姐啊」[z]

[夏芽]「…什么？」[z]

[和樹]「我只要看着学姐、就感觉很舒服了……！」[z]

[和樹]「即使现在也是这样……！」[z]

[夏芽]「你要这样说、那我也一样」[z]

[夏芽]「呐、和树……最后能在听我的、一个请求吗？」[z]

[和樹]「当然可以。你想要怎样？」[z]

[夏芽]「我想让你再、紧紧地抱着我……来亲吧」[z]

[和樹]「……当然」[z]

[無]不再言语、我只是抱住学姐的身体、重合双唇。[z]

@bgm_stop
@bg f=bg900
@jump2 cond="f.SceneReplay==1" storage=special.ks target=*memory
@eval exp="sf.m5=1"
@jump2 storage=415.ks
