;夏芽ルート13.txt

;日付変更
;◆背景（暗転）
;◆背景（空）
@bgm_stop
@bg f=bg900
@bg f=bg400
@bgm f=bgm03

[無]――于是乎，我和夏芽学姐就开始交往了。[z]

[無]但是是瞒着周围人的，完完全全的『两人之间』的关系。[z]

[無]说道为什么要保密这个问题……这个嘛，首先因为学姐觉得很不好意思，这个是最大的理由。[z]

[無]当然还存在其他的理由。[z]

[無]总之希望把这一段时间当做『试运行期间』――。[z]

[無]夏芽学姐，自己亲口这么说了。[z]

[無]也就是说……因为学姐在恋爱方面是带有超级初心者标记的人，会弄出什么『大麻烦』的可能性很高。[z]

[無]果然，不能再交往下去了，搞不好会变成这样的情况。[z]

[無]所以设定了『观望』的时间，要是可行的话就开始正式的交往，之类的。[z]

[無]老实说，就我自己而言，就算不特意这么做也……不是没有考虑过。[z]

[無]我觉得根本没有一丝可能性，改变我对学姐的感情。[z]

[無]完全没有那个意念。[z]

[無]不过嘛……学姐对此有所担心的心态，完全可以理解。[z]

[無]没有同居过的夫妇刚开始一起过日子就产生矛盾，这样的事情也有所耳闻。[z]

[無]再怎么说也是需要一定程度的过渡期间的吧。[z]

[無]在这个过程中，逐步的确认（彼此的）感情，逐走不安的心绪――这是不可或缺的。[z]

;◆背景（三枝家居間）
@bg f=bg010

[無]那么，首先干脆爽利的继续逛街约会吧（上次学姐中途回去了）。[z]

[無]今天要和学姐在外面碰头……双方都『非常明确的意识到』的首次约会。[z]

[無]理所当然的，精神非常昂扬。大概，学姐也是这个样子吧。[z]

;ちょいにやにや
@st2 f=st07010012
[メグ]「啊咧？和树君，要出去么？」[z]

[和樹]「嗯，稍微去买点东西」[z]

[無]这可不是谎言，真的不是哦。[z]

@st2 f=st07010001
[メグ]「诶ー嘿」[z]

[和樹]「姐姐呢？」[z]

@st2 f=st07010002
[メグ]「我会老老实实宅在家里打滚哟～」[z]

@st2 f=st07010011
[メグ]「本来是想邀请夏芽同学一起去哪儿瞎转转呢，结果说是有事情被拒绝了」[z]

[和樹]「是，是么……」[z]

@st_all_del
@st1 f=st07010011
@st3 f=st04010001
[紅]「呼啊……怎么回事，难得的假日居然起来的这么早，兄长」[z]

@st1 f=st07010002
[メグ]「他今天要去外出采购呢～」[z]

@st3 f=st04010050
[紅]「哦呵。不过作为兄长的预定节目还真是般配呢……呼哈」[z]

@st_all_del
[無]遮掩着一个小哈欠，红把电视遥控拿到手里。[z]

;◆効果音（テレビのスイッチオン）
@se0 f=スイッチ_ピッ

;女性音声想定
[テレビ]「――那么，到了今天的Happy.Go.Lucky！的时间啦」[z]

[テレビ]「AB血型的您的运气……」[z]

@st1 f=st07010001
@st3 f=st04010001
[メグ]「真火呢，这种占卜节目」[z]

@st1 f=st07010000
[メグ]「主打综艺梗没问题吗，明明大体上算是新闻频道呢」[z]

;占好き＝うらずき
@st3 f=st04010000
[紅]「日本人从很久以前开始就热衷于占卜啦」[z]

@st3 f=st04010056
[紅]「像是平安时期贵族就会每天早上『哪边--是今天的好运方向呢……』这样占卜一下的」[z]

@st1 f=st07010000
[メグ]「说起来，Happy.Go.Lucky是要『听天由命』的意思么？」[z]

@st1 f=st07010007
[メグ]「还真是随意那，啊哈哈～」[z]

@st3 f=st04010001
[紅]「反正就算叨叨个没完最后也不会担任何责任的」[z]

;@st3 f=st04000000
[紅]「懒懒散散做事稀松，说的就是这种家伙」[z]

[和樹]「…………」[z]

@st_all_del
[無]嘛确实如姐姐和红所言，占卜这东西，我也觉得相当的似是而非根本靠不住。[z]

[無]考虑到人类的多样性的话，光凭血型分就有四种，可以说是相当的不靠谱。[z]

[無]……虽然是这么考虑的。但是。[z]

[テレビ]「恋爱方面的幸运物就是这个！连体式border shirts！」[z]

[テレビ]「毫无疑问会让你与所在意的那个人的关系更进一步！」[z]

[無]明明毫无依据，却毫不负责的用爽快的口气下了断言！[z]

@st1 f=st07010000
@st3 f=st04010001
[紅]「姆？何事兄长，放弃外出采购了么？」[z]

[和樹]「不，没有……想起来房间里稍微拉下了些东西，要回去取一趟」[z]

;わかりやすいやつ、という忍び笑い
@st1 f=st07010009
[メグ]「噗噗噗……」[z]

[和樹]「…………」[z]

[無]才，才不是因为自己相信了占卜所说的东西呢？[z]

[無]因为也相当喜欢背心所以找出来T恤，图个安心所以穿上了也不觉得难受，只，只是稍微有一点点这么觉得来着！？[z]

;◆背景（暗転）
;◆背景（繁華街）
@bgm_stop
@bg f=bg900
@bg f=bg130
@bgm f=bgm04

[和樹]「啊」[z]

;夏芽の立ち絵は非表示
[夏芽]「欸」[z]

[無]到了约见地点，和夏芽学姐汇合的我我――哑口无言。[z]

[無]学姐那边也是如此，目瞪口呆。[z]

@bgm_stop

[無]……毕竟，理应如此。[z]

@bgm f=bgm05

@bg_notime f=ev413_00

[無]学姐和我身上，穿着一模一样的背心。[z]

[夏芽]「和，和树君，穿成那样……」[z]

[和樹]「学姐才是……难道说」[z]

[夏芽]「早上看了……那个……？」[z]

[和樹]「啊，果然学姐也看了呢……」[z]

[無]怎么说呢……。[z]

[無]学姐也收看了那个电视占卜节目，然后选择穿背心，的样子。[z]

[夏芽]「啊，额ー……」[z]

[夏芽]「并……并没有哦？并不是真的相信那个占卜节目的说法哟？」[z]

[夏芽]「只不过，觉得偶尔穿下T恤的确不错而已」[z]

[和樹]「就，就是说呢。我大体上也是那么觉得的……」[z]

[夏芽]「…………」[z]

[和樹]「…………」[z]

[無]呜呜，因为许愿的缘故气氛反倒变得更加尴尬了。[z]

[無]完全没效果啊，早上的占卜！[z]

;二十代くらいの女性想定。ひそひそで
[通行人Ａ]「呐，看那两个孩子，穿着一模一样的衣服呢，真可爱ー！」[z]

;やはり二十代くらいの女性想定。ひそひそで
;最後ぷーくすくす笑い
[通行人Ｂ]「哇哦！真哒！好厉ー害，这就是现下的『情侣装』么……」[z]

;可哀想と言いつつ笑いながら
[通行人Ａ]「喂，别笑出来啊，太可怜啦」[z]

[通行人Ｂ]「年轻真是好呢～」[z]

[通行人Ｂ]「比起羞耻心什么的更在乎自己的真心的样子呢～」[z]

[通行人Ａ]「肯定进入两人世界了……这样的感觉不是吗？」[z]

[通行人Ｂ]「就是就是，肯定是甜甜蜜蜜火热火热的世界呢～」[z]

[夏芽]「……………………」[z]

[和樹]「……………………」[z]

[無]没进去，我有听得清清楚楚！[z]

[無]虽然你们自己觉得说的很小声，但是从头到尾都可以听得见啊！[z]

[無]但是说起来……现在就脱掉也不是个办法，怎么办呢……。[z]

;小さな女の子想定
[通行人Ｃ]「媽媽～！那边的大哥哥和大姐姐，两个人穿着一模一样的衣服耶～！」[z]

;三十代くらいの母親想定
[通行人Ｄ]「不可以，千酱。不能用手指认」[z]

[通行人Ｃ]「可是～！千酱也想看媽媽和爸爸穿成那样子～！」[z]

[無]……坏了，总觉得貌似渐渐地将周围人的注意力吸引过来了。[z]

[夏芽]「……总，总而言之先离开这里如何」[z]

[和樹]「赞成」[z]

[夏芽]「可以的话……那个、尽量去不会被人注意的地方……」[z]

[和樹]「不会被人围观的地方，吗………啊！有了」[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900
@bg f=ev413_01a
@bgm f=bgm04

[和樹]「……如何？这里的话就不必担心了吧？」[z]

[夏芽]「嗯……是呢」[z]

[無]结果，我带着学姐来到了成为网咖的地方。[z]

[無]这里因为被隔板分开了，所以不用担心被人看见或者太冷之类的问题。[z]

[無]嘛虽然说卡拉OK的厢房其实也可以生人，但是我觉得这边有不会太过吵闹，可以聊天的优势。[z]

[無]对于夏芽学姐的歌声，确实是有些兴趣……不过，还有机会以后再说。[z]

[夏芽]「…………」[z]

[無]学姐一副好奇宝宝的样子，在隔间内东张西望。[z]

[無]在只有一台电脑，稍显狭窄的房间中……学姐每动一下，手腕啊肩膀呀还有头发大腿之类的就会微妙的触碰到我的身体。[z]

[無]并不是有意去这么做的――其实只是单纯的挑选了一个单价最便宜的房间而已，然后竟然获得了以外惊喜！[z]

[無]除去抱住学姐接吻那个时候之外，如此近距离的靠近学姐还是头一回。[z]

[夏芽]「这个电脑……可以随意使用吗？」[z]

[和樹]「可以。在租借时间内可以自由使用」[z]

[和樹]「当然，猥亵异性是禁止的」[z]

[夏芽]「呼嗯……有意思的服务呐」[z]

[和樹]「这种店，还是头一次进来吗？」[z]

[夏芽]「嗯。因为一直都没有进来的必要性……里面究竟是什么样子的呢，一直都不知道」[z]

[和樹]「嘛，说来也是」[z]

[無]基本上，都是比较有闲时间的人为了消耗时间才来的地方……。[z]

[無]和夏芽学姐的人生根本没有半点缘分，这么说才是最为合适的表达。[z]

[和樹]「……嘛，反正都已经来了，就在网上买买东西如何」[z]

[無]本来是真的想要来一次逛街约会的，、可惜刚开始就栽了个大跟头。[z]

[無]结果不得不紧急避难……真是太可惜了。[z]

[夏芽]「我，其实无所谓的，这样就好」[z]

[和樹]「真的吗？」[z]

[夏芽]「以前没在网上买过东西，怎么操作？」[z]

[和樹]「看你想要的是什么……想看些什么东西？」[z]

[夏芽]「睫毛夹坏掉了，想买个新的」[z]

[和樹]「……睫毛夹是什么东西」[z]

[夏芽]「把睫毛，弄卷的道具」[z]

[和樹]「啊，知道了……也就是说，是化妆用品呢」[z]

[和樹]「那么……」[z]

[無]我操作着鼠标，打开了某个有名网店的“美妆&健康”专栏。[z]

[夏芽]「啊，有好多呢」[z]

[和樹]「在这些中，请选择你喜欢的那款」[z]

[夏芽]「那个……选同款好了……这个吧」[z]

[無]学姐伸出手指着画面的一角。[z]

[和樹]「这个呢」[z]

[無]……嗯，真的没问题吗，这个姿势。[z]

[無]因为要两个人共享一个画面，就自然而然的把脸凑到一起身体也接近了。[z]

[無]话说，两臂上传来了柔软的触感……毫无疑问这个肯定是学姐的欧派……！[z]

[夏芽]「对对没错。就是这个」[z]

[和樹]「价格，店也是这样子的吗？」[z]

[夏芽]「嗯。差不多一样的」[z]

[和樹]「那么，就这样买下咯？」[z]

[夏芽]「哎……这样就买下了？付款怎么处理……」[z]

[和樹]「选择的是货到付款，等货物送达的时候再付费就OK啦」[z]

[夏芽]「嘿，是这样子啊」[z]

[和樹]「我已经有了这个网站的账号了，接下来来下订单吧」[z]

[和樹]「在送货目的地的地方，请填上学姐的住址」[z]

[夏芽]「嗯」[z]

[無]……但是那，那个啊。[z]

[無]这里的隔室并不是密室，上方是开放着的。[z]

[無]但是，周围的空间被封住，和学姐接触到了……果然，刺激得心脏噗噗直跳。[z]

[和樹]「……然后，点一下这个按钮确定下单后就算是完成了」[z]

[夏芽]「已经结束了吗？」[z]

[和樹]「对。下来就是等着快递上门，收货了」[z]

[和樹]「送货预计……在一天以内，所以明天肯定就会送到」[z]

[夏芽]「……总觉得，太过于便利了以至于有些吓人了呢」[z]

[和樹]「是呢。开心的享受购物，一不留神买得太多的家伙，似乎也是大有人在呢」[z]

[夏芽]「像是恭次郎一流使用就会非常危险呢……」[z]

[和樹]「确实……话说回来，学姐」[z]

[夏芽]「什么？」[z]

[和樹]「从刚刚开始咱们就一直紧紧靠在一起了……察觉到了吧？」[z]

;ちょい恥ずかしそう。わかっててくっついてた（それが目的ではないけど）という照れ
[夏芽]「……嗯」[z]

[和樹]「和我靠在一起，不会觉得讨厌吗？」[z]

[夏芽]「嗯……一点也不」[z]

@bgm_stop

[和樹]「那么――」[z]

@bgm f=bgm11

@bg_notime f=ev413_01b

[無]我痛快地，将夏芽学姐的肩膀紧紧揽入怀中。[z]

[和樹]「……这样做，也没问题的吧」[z]

;主人公に体をあずけて、ほわっと嬉しそう
[夏芽]「…………完全，没问题」[z]

[無]学姐用平静的声音喏喏说道，同样也用手臂环抱着我的身体。[z]

[和樹]「…………」[z]

[夏芽]「…………」[z]

[無]没用其他动作，只是一动不动的相互拥抱着。[z]

[無]仿佛是在确认彼此的气息与温度。[z]

[無]……怎么说呢，有点不妙。[z]

[無]说真的，为什么女孩子，会如此柔软而又带着甘甜的气味呢，不好……！[z]

[無]心跳越发强烈是当然的吧，在这种情况下！[z]

[和樹]「学姐……我！」[z]

[無]手臂上稍稍用力了一些，进一步紧紧抱住学姐。[z]

[夏芽]「啊……」[z]

[無]学姐发出稍显色气的声音。[z]

[無]学姐丰满的欧派紧紧的压迫在我的胸膛上，可以非常清晰彻底的感受到。[z]

[無]可惜的话真想把全部的神经都集中在这里，将这触感一丝不漏的铭刻在记忆中！[z]

[無]……还真是妄想了些不着边际的玩意儿。[z]

[夏芽]「嗯……和树君真是的……」[z]

[無]稍稍有些羞涩地浅浅微笑着，学姐柔柔地将脸颊蹭来蹭去。[z]

[無]喔哦哦……好光滑水润的肌肤，舒服得要起鸡皮疙瘩啦……！[z]

[夏芽]「……好温暖呢，这样子」[z]

[和樹]「那个，要是嫌太闷热了的话，请不要客气立刻告诉我」[z]

[和樹]「我好歹也是个爷们儿，这……虽然也常常会想对女孩子做这样那样的事情的」[z]

[和樹]「不顾学姐的感情强行乱来，这种事情是不会发生的，我保证」[z]

[夏芽]「嗯……谢谢」[z]

[夏芽]「总之，现在完全不觉得（太热）」[z]

[夏芽]「不如说……这个样子，我也很中意……」[z]

[無]感觉像是幼猫在撒娇一样，夏芽学姐又开始蹭蹭蹭了。[z]

[夏芽]「……可以，答应我一个事情吗？」[z]

[和樹]「当然！别说一个，来多少都没问题！」[z]

[夏芽]「这，那个呢……再……」[z]

[夏芽]「接吻，我想再来一次……」[z]

[無]好像非常害羞的低语着，学姐稍稍别开了脸。[z]

[夏芽]「上一次那……那个不是第一次么所以……给愣住了」[z]

[夏芽]「感觉就像是陷入梦境中一样，注意到的时候却又转瞬即逝了」[z]

[夏芽]「没有，非常欲求不满，我。所以」[z]

[和樹]「来做吧！不要说是一次，多少次都无所谓！」[z]

[和樹]「我也一样，那时脑袋里完完全全的乱成了一团浆糊」[z]

[和樹]「想要好好冷静下来――细细的品味一番，所以」[z]

[夏芽]「……嗯，我也是。但是……」[z]

[無]“刷”，苍木学姐将视线投向正前方的包厢。[z]

[夏芽]「那个有规定的，不是吗……？」[z]
;ああ、に傍点ルビ

[無]随着学姐的视线看过去……那个是。[z]

[無]『在店内谢绝性行为』[z]

[無]写着这样字样的纸贴在那里……。[z]

[和樹]「……的确，有写着（警告）但是」[z]

[夏芽]「但是只是接吻这种程度的话……算是safe，吧？」[z]

[和樹]「不要像是上次的电影里演的一样，最后干柴烈火一发不可收拾的话……大概」[z]

;映画のラブシーンを思い返して赤くなる感じ
[夏芽]「…………」[z]

[夏芽]「到，到那种激烈程度，我，觉得还是不可能的……」[z]

[和樹]「……就是呢。我们，还不过是初心者阶段而已」[z]

[無]老实说，要是亲吻太过于刺激热烈了，总觉着大概会变成一柱擎天无法平息的状况吧。[z]

[無]搞不好的话，甚至有没忍住然后出手的可能……。[z]

[無]无论如何都要避免这种情况。[z]

[和樹]「没关系不是么，总之，就这么紧紧相依靠在一起」[z]

[和樹]「时不时，还可以啾一下……对于我，已经幸福的有些过头了」[z]

[無]掬一缕学姐的秀发于手心――我轻轻的亲吻她的发梢。[z]

@bg_notime f=ev413_01c

[夏芽]「…………！」[z]

[夏芽]「刚，刚才……的！」[z]

[和樹]「……被触摸头发，不喜欢吗？」[z]

[夏芽]「嗯嗯！不是的，反而……」[z]

[夏芽]「怎么说呢，非常的……我一口气缓过来了，再来一次……！」[z]

[和樹]「……嗯」[z]

[無]才刚说完，就吻了学姐的头发。[z]

[夏芽]「…………噫！」[z]

[無]学姐她――就像是头发上也有感觉一样，轻叫一声，身体微微颤抖了一下。[z]

[和樹]「这个……可以吗？」[z]

[夏芽]「嗯，嗯嗯……就，就是这样」[z]

[夏芽]「就连我自己，都稍微吓到了……」[z]

[夏芽]「……迄今……没有任何人，亲吻过我的头发所以……」[z]

[和樹]「…………」[z]

[無]嘛，理应如此啦。[z]

[夏芽]「不可思议……就是这样子的吧」[z]

[和樹]「……天知道。人类的感觉这东西，立面充满着秘密呢」[z]

[和樹]「就像是吃东西一样――因为喜欢所以追求，不就可以了吗」[z]

[和樹]「不要太过于追根问底」[z]

[夏芽]「嗯……没错呢」[z]

[和樹]「……学姐的秀发，稍稍有一点甜甜的香味」[z]

[和樹]「而且，摸上去非常的舒服呢」[z]

[夏芽]「真的？」[z]

[和樹]「就是」[z]

[夏芽]「我的头发，喜欢吗？」[z]

[和樹]「很中意……不，应该是超级喜欢！」[z]

[無]仿佛在手心上流动一样，沙拉沙拉的摩擦……手感好的一塌糊涂。[z]

;ほっとした感じの微笑み
[夏芽]「……真是太好了」[z]

[夏芽]「游泳的时候，总是很容易因为氯气受到伤害……为此很是花了一番心思呢」[z]

[和樹]「啊啊，原来是这样。坚持留着长发，很辛苦呢」[z]

[夏芽]「唔嗯。清洗工作非常的麻烦」[z]

[夏芽]「时不时就会冒出，干脆痛痛快快的一刀下去剪短如何，的念头」[z]

[和樹]「留短发的学姐吗……」[z]

[夏芽]「……觉得不合适吗？」[z]

[和樹]「没有没有，我只是在想这个非常的合适不是吗而已」[z]

[無]人美，留个什么发型都很适合。[z]

[和樹]「但是……总归而言，还是希望学姐就保持着现在的样子」[z]

[和樹]「可能是因为习惯了迄今为止的形象的原因吧」[z]

[夏芽]「……和树君这么说的话，我会努力保持下去的」[z]

[和樹]「呜哦……！」[z]

[夏芽]「……和树君？」[z]

[和樹]「没……抱歉，刚才学姐说的话，实在太让人感动了」[z]

;顔赤くなる感じで照れる
[夏芽]「…………」[z]

[夏芽]「和，和树君，淡定地说了相当羞人的东西呢……」[z]

[和樹]「……其实连我自己也觉得非常的不好意思」[z]

[和樹]「应该说是看见学姐，就忍不住顺嘴说出去了么……」[z]

;ちょい拗ねむくれ
[夏芽]「怎么是我的原因啊？」[z]

[和樹]「因为事实如此啊」[z]

;むくれ笑い的な
[夏芽]「真是的……笨蛋」[z]

[無]咚的，轻轻的锤了锤我的胸膛，学姐和我缓缓地亲吻了起来――。[z]

@jump2 storage=414.ks
