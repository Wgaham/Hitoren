;フラグ2-2.txt

;＞＞合流
;◆背景（暗転）
;◆背景（プール）
@bgm_stop
@bg f=bg900
@bg f=bg253
@bgm f=bgm05

[無]不安分的泳池清扫也终于要结束了。[z]

[無]大家都已经打扫完毕，边聊着天边等待结束的命令。[z]

@st2 f=st11000102
@st2_jump
[恭次郎]「嘿、嘿！……呼，怎么样，和树，我擦过的地板格外光鲜亮丽吧」[z]

[無]只有恭次郎还在快要结束的时候拼命地刷着。[z]

[無]失心疯般地刷着已经变干净了的地板。[z]

[無]看他这精力集中的样子，估计是想要逃避一些痛苦的回忆。[z]

[和樹]「恭次郎……差不多该结束了」[z]

@st2 f=st11000111

[恭次郎]「说什么呢。我要做到自己满意为止……我今天可是特意为打扫泳池而来的」[z]

[和樹]「是、是吗」[z]

[無]还是先不要管他吧……。[z]

;◆背景（暗転）
;◆背景（プール）
@bgm_stop
@bg f=bg900
@bg f=bg253
@bgm f=bgm30

@st2 f=st04040056

[紅]「呜呜呜，兄长……腰、腰痛得走不动了」[z]

[和樹]「你还是那么娇气啊」[z]

[無]估计是干少了打扫泳池这种体力活的原因，红已经累得腰都站不直了。[z]

@st2_del
@st1 f=st04040056
@st3 f=st00040204
[碧里]「我帮你按摩吧。好的，给我看看你疼的地方」[z]

@st1 f=st04040051

[紅]「呜……不胜感激」[z]

@st3 f=st00041213 index=2001
[碧里][font size=60]「用力了哦……噢噢噢！！！」[z]

;◆効果音（折れる音：ゴキッ！）
@se0 f=折れる_ゴキッ

@st1 f=st04041059 index=2002
@st1_jump
@q
[紅][font size=60]「咿——————！！？」[z]

@st_all_del
@st1 f=st04040059
@st3 f=st00040204
[碧里]「啊哈哈哈。这是痛痛飞走了的证明哦」[z]

@st2_del
@st3 f=st00040204
@st1 f=st04040066

[紅]「不要在别人悲鸣的时候笑得这么开心！坏心眼的家伙」[z]

@st3 f=st00040206
[碧里]「知道了知道了。我温柔点儿」[z]

@st1 f=st04040061

[紅]「真、真的……？」[z]

@st3 f=st00041213 index=2001
[碧里][font size=60]「用力了哦……哈啊啊啊～～～」[z]

@st1 f=st04041054 index=2002
@st1_jump
[紅]「等一下！？你那运气的声音是怎么回事！？」[z]

@se0 f=ゴロピシャ_雷

@st_all_del
@st2 f=st00041250
@st2_jump
[碧里][font size=60]「去！！」[z]

@st2 f=st04041066
@st2_jump
[紅][font size=60]「咿————！！？」[z]

@st2 f=st03040160
@st2_jump
[夏芽]「喂，那边的！肃静！！」[z]

@st2_del
@st3 f=st00040272
@st1 f=st04040055
@st3_jump
[碧里]「啊、是！！对不起！」[z]

[無]苍木学姐的怒斥阻止了园原。[z]

@st2_del
@st3 f=st00040272
@st1 f=st04040059
@st1_nod
[紅]「得、得救了……」[z]

@st_all_del
@st2 f=st03040101

[夏芽]「唉唉，泳池变干净了呢，差不多了～」[z]

@st2_del
@st3 f=st03040140
@st1 f=st07041008

@bgm_stop
@q
[メグ][font size=60]「等一下！！！」[z]

@bgm f=bgm08

[無]苍木学姐正要宣布泳池清扫结束的时候，坐在泳池边上的老姐制止了她。[z]

@st1 f=st07040005
@st3 f=st03040281

[夏芽]「怎么，有事吗？」[z]

@st2_del
@st3 f=st03040281
@st1 f=st07040014

[メグ]「你没有忘记约定吧，夏芽同学？」[z]

[無]老姐开心地笑着。手中握着橡胶制水管。[z]

@st_all_del
@st3 f=st00040241
@st1 f=st04040000
[碧里]「什么约定？」[z]

@st2_del
@st3 f=st00040241
@st1 f=st04040021

[紅]「鬼知道？」[z]

[和樹]「…………」[z]

[無]我当然懂老姐刚刚没有说完的话。[z]

@st_all_del
@st2 f=st11000100
@st2_nod
[恭次郎]「…………呼姆」[z]

[無]恭次郎也志在必得，宛如苦行结束的释迦摩尼一样，用温柔的目光将在场的女性尽收眼底。[z]

@bgm_stop
@st2 f=st07041007

[メグ][font size=60]「来了ーー！！！」[z]

@bgm_stop

@st2 f=st03040241
@q
[夏芽][font size=60]「呀——！！？？！」[z]

;◆イベント絵（プールで放水）
@st2_del
@bg_notime f=ev007_00
@bgm f=bgm09

[無]老姐不顾泳池中还有其它人，用水管对着泳池放水。[z]

[無]而且还用手指调整角度将整个泳池先洒了一遍。[z]

[無]湿得淋漓尽致的当然是苍木学姐，园原，还有红这些女孩子。[z]

[メグ]「打扫完泳池之后，没有这个怎么能行！！」[z]

[紅]「不、不要，姐上！！」[z]

[メグ][font size=60]「啊哈哈哈！！」[z]

[無]透过女孩子们湿透的体操服可以看到内衣。[z]

@q
[碧里][font size=60]「咿呀ーーー！！！」[z]

[メグ][font size=60]「啊哈哈哈哈哈哈！！！」[z]

[無]女生们悲鸣与老姐的笑声在泳池里回荡[z]

[恭次郎]「和树，你的青春是在什么时候……第一次捡到工口书的时候吗？还是第一次偷看妹妹换衣服的时候？还是现在？」[z]

[恭次郎]「我……我是现在！！」[z]

[無]恭次郎用沉默表示对我的赞同。[z]

;◆背景（暗転）
;◆背景（電車－夕）
@bgm_stop
@bg f=bg900
@bg f=bg121
@bgm f=bgm06

[無]我们正走在回家的路上。[z]

[無]火一般的夕阳引燃了半边天空。[z]

[無]与家在反方向的恭次郎和苍木学姐告别后，我和老姐，红，还有园原一起登上了电车。[z]

[和樹]「（什么什么……演艺圈执牛耳的熟女们的夜之周末……18岁原偶像的禁断裸体写真……拥有强烈功效的新药发现……）」[z]

[無]实在是太累了，我无意识中读着吊环上的广告。[z]

@st2 f=st00000241
[碧里]「怎么了，三枝学长，一直发着呆？」[z]

[和樹]「我在考虑政治问题」[z]

@st2_del
@st3 f=st00000241
@st1 f=st07000012

[メグ]「唉，什么内容？」[z]

[和樹]「我在想，为了培育健全的青少年，真的有必要从不是青少年的时候就开始规制吗」[z]

@st3 f=st00000141
[碧里]「呜哇，好像非常难懂呢」[z]

@st1 f=st07000013

[メグ]「大致上就是关于工口……」[z]

[和樹]「不不不，要是能够拥有表现的自由」[z]


@st1 f=st07000007

[メグ]「嘛，倒也是呢。比如说……」[z]

@st1_del
@st2 f=st07001014
@st2_jump
[メグ]「将天真无邪的一年级女生弄得浑身湿透的自由」[z]

@st_all_del
@st4 f=st00000203
@st2 f=st07000014
@st0 f=st04000064
@st0_jump
[紅]「怎么可能有那种自由！」[z]

@st2 f=st07000012

[メグ]「唉唉～……透过内衣的曲线才是艺术啊」[z]

[無]那之后明明被狠狠地批了一顿，老姐却没有一丝悔改的样子。[z]

@st2 f=st07000007

[メグ]「啊，说起来今天还真高兴呢」[z]

@st2 f=st07001014

[メグ]「一定觉得能来真是太好了吧，和树君」[z]

[無]把话题扔给了我。[z]

@st2 f=st07000014

[和樹]「…………」[z]

[無]反正不管说什么都会受到斥责，所以我偏要装死，[z]

@se0 f=ドカ
;◆効果音（蹴られる音：バキッ！）
;◆画面揺れ
@q
@st2 f=st07000014
@st0 f=st04000065
@st0_jump
[紅]「…………哼！」[z]

[無]红踢了我的小腿。[z]

@st2 f=st07000005


[無]看着我忍痛的样子，老姐呵呵地笑个不停。[z]


[無]园原看着三枝家亲密的互动，[z]

@st4 f=st00000101
@st4_nod
[碧里]「今天真是谢谢了」[z]

[無]深深地弯下了腰道谢。[z]

[和樹]「怎么了，这么突然」[z]

@st4 f=st00000206
[碧里]「大家不是社员却为打扫泳池鼎力相助……」[z]

@st4 f=st00000211
[碧里]「我代表游泳社，再次向你们道谢」[z]

@st2 f=st07000007

[メグ]「啊哈哈，还真是严格呢」[z]

@st0 f=st04000062

[紅]「并没有什么好感谢的」[z]

@st4 f=st00000206
[碧里]「是吗？不过，还是谢谢了」[z]

[無]红害羞地别过了头，园原微笑着看着她。[z]

[無]虽然经常吵架，但关系好的那一面今天也展现在了我面前。[z]

@st0 f=st04000001

[紅]「话说回来，泳池要什么时候才能用呢？」[z]


@st4 f=st00000204
[碧里]「将空泳池放满水还要几天，这之后还有水质检查什么的，想要游泳还需要一段时间」[z]

[和樹]「是吗，不过还真是令人期待啊」[z]

@st4 f=st00000103
@st4_jump
[碧里]「是」[z]

@st2 f=st07000011

[メグ]「我觉得到时候可没有这种余韵」[z]

[和樹]「哈？为什么？」[z]

@st2 f=st07001014

[メグ]「马上就要期中考试了♪」[z]

[和樹]「呜咕……」[z]

@st2 f=st07000014
@st4 f=st00000220
[碧里]「呜……已经这个时候了吗」[z]

@st2 f=st07000007

[メグ]「你们还真惨啊」[z]

[和樹]「老姐你也要考前复习吧」[z]

@st2 f=st07000014

[メグ]「我？哈哈，我打从娘胎里出来就没有做过考前复习这种事。光听听课就足够了」[z]

[和樹]「可恶，一副得心应手的样子……」[z]

[無]虽然老姐看上去吊儿郎当的，但不知为何读书却很在行。[z]

[無]在聊着这些事的时候，回过神来已经到了园原要下车的站了。[z]

@st_all_del
@st2 f=st00000101
@st2_nod
[碧里]「那各位，我先失陪了」[z]

[和樹]「嗯。再见」[z]

@st2 f=st00000241
[碧里]「啊…………」[z]

[和樹]「怎么了？」[z]

@st2 f=st00000231
[碧里]「不是，只是……」[z]

[無]园原有些害羞的样子，从下面仰望着我。[z]

@st2 f=st00001103
[碧里]「今天真是充实的一天呢。要是下次……还能有机会和三枝学长一起的话，我会很高兴的……」[z]

[無]这个星期的第二次，来自女性的邀请。[z]

[無]第一次由于我过分的妄想而吃了闷亏。[z]

[無]这一次，肯定也是只是单单想要我帮忙才这么说的[z]

[和樹]「啊啊，下次也邀请我吧。不管什么时候都乐意奉陪」[z]

@st2 f=st00001206
@st2_nod
[碧里]「谢……谢谢」[z]

[無]回过神来时自己已经废话连篇地答应了人家。[z]

[無]没办法，谁叫我是男孩子。[z]

[無]只能这样子生存下去啊。[z]

@st2 f=st04001023

[紅]「这样下去的话可是会被女人当猴耍的哦」[z]

[和樹]「吵死啦」[z]

@st2 f=st00000101
@st2_nod
[碧里]「那就，再见了」[z]

@st2_move time=500 left=700
@wm
@st2_del
[無]用体育系风范告辞了的园原走下了电车。[z]

[無]『下次』，吗……。[z]

[無]要怎么才能从好意的那边出发解释这个词语呢？[z]

@st2 f=st07001012

[メグ]「和树君你，果然是中意那种活泼的运动型少女吗？」[z]

[和樹]「哈？为什么突然这样问？」[z]

@st2 f=st07001009

[メグ]「哎呀，和树君也很在意园原的事情啊」[z]

@st2_del
@st1 f=st07000009
@st3 f=st04000021

[紅]「『也』很在意园原的事情？『也』是怎么回事，兄长？」[z]

@st1 f=st07000012

[メグ]「那个嘛，你要是知道了和树君为什么要特意去参加泳池清扫的话……」[z]

@q
[和樹]「老姐！那、那个！？」[z]

@st3_del
@st2 f=st04001003

[紅]「哦哦！这么一说，还真不知道呢。兄长参加泳池清扫的真正的原因」[z]

[和樹]「呜咕……那、那是因为……」[z]

[無]之后，我陷入了红无休止的追问之中。[z]

@jump2 storage=008.ks
