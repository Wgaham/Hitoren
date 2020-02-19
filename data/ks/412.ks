;夏芽ルート12.txt

;日付変更
;◆背景（暗転）
;◆背景（教室）
@bgm_stop
@bg f=bg900
@bg f=bg230
@bgm f=bgm03

[無]――次日的午休时间。[z]

[和樹]「……好」[z]

[無]姐姐应该已经将夏芽学姐带过去了。出发吧。[z]

@st2 f=st11000101
[恭次郎]「啊咧？和树，去哪儿？」[z]

[和樹]「哦，稍微，有点事情（去处理一下）」[z]

@st2 f=st11000110
[恭次郎]「午饭呢？」[z]

[和樹]「今天估计不能陪你了」[z]

@st2 f=st11000101
[恭次郎]「嗯，明ー白」[z]

[和樹]「抱歉。走了」[z]
@st_all_del

[無]向着恭次郎轻轻挥了挥手，我离开了教室。[z]

;◆背景（学園廊下）
@se0 f=ドア開_教室
@bg f=bg220

[無]在预先和姐姐商量的位置――三年级的走廊，我等待着夏芽学姐。[z]

@bg f=bg900
@bg f=bg220
@eval exp="f.window=1"

@st1 f=st07000000 left=-200
@st3 f=st03000151
[夏芽]「呐……打算去哪里啊？」[z]

;手を引っぱってずんずん歩く
@st1 f=st07000007 left=-200
[メグ]「没事没事好地方啦～」[z]

;手を引っぱられて、わわ、という感じ
@st3 f=st03000140
@st3_jump
[夏芽]「等，等一下……！」[z]

@bg f=bg900
@bg f=bg220
@eval exp="f.window=0"

@st1 f=st07000007 left=-200
@st3 f=st03000140
[無]好的……来了！[z]

[和樹]「啊，夏芽学姐！」[z]

[無]假装成非常偶然的相遇，试着搭话……其实，已经太过于做作了吗。[z]

@st3 f=st03000141
@st3_jump
@q
[夏芽]「――――噫！？和，和树君！？」[z]

@st1 f=st07000014 left=-200
[メグ]「哦呀哦呀～！在这种地方碰上还真是偶然呢，和树君！」[z]

[無]……嗯，姐姐貌似已经不打算遮遮掩掩了。[z]

[和樹]「不好意思，学姐。难得碰一次面，稍微说点话――」[z]

@st3 f=st03000253
[夏芽]「抱，抱歉，突然觉得有点发烧的感觉（告辞了）！」[z]

[和樹]「又来这种剧情吗！？」[z]

[無]难道，连一点点机会都不肯给我吗！？[z]

@st3 f=st03000201
[夏芽]「啊，要是病情恶化就糟糕了，我，这就要回家了！」[z]

[和樹]「这会儿才到午休而已！下午的课呢！？社团活动怎么办！？」[z]

[無]要是真的身体不舒服的话，答案自然是毫无疑问的不加考虑（回家去）。[z]

[無]不过学姐身上，完全看不到一点点状态不好的迹象……。[z]

@st3 f=st03000231
@st3_jump
[夏芽]「欸！啊，那个……啊，啊呜ー」[z]

[無]当真，是什么都没想（就顺口开河）的样子。[z]

[無]也就是说这是被反射性的拒绝了么，我……哦哦哦，这样的话我也不管那么多了！[z]

[和樹]「姐姐！」[z]

@st1 f=st07000000 left=-200
@st1_nod left=-200
[メグ]「我在哟」[z]

@st1 f=st07000000
@st3 f=st03001240
@q
[和樹]「不好意思，把夏芽学姐稍微借走一会儿！」[z]

[無]稍显无理，我从姐姐手里将夏芽学姐的手臂抢了过来。[z]

@st1 f=st07000007
[メグ]「请用请用ー。午休结束前随你怎么折腾都OK哟～」[z]

@st3 f=st03001140
[夏芽]「…………！怎， 怎么可以……！」[z]

@st3 f=st03001262
@st3_jump
[夏芽]「你居然欺骗我，巡……！」[z]

;にやにや
@st1 f=st07000012
[メグ]「你在说什么～？在下，脑子转的慢，完全不明白呀～」[z]

[無]……就算是被夏芽学姐怒目而视（姐姐）也是泰然自若。[z]

[無]果然，姐姐可不是什么省油的灯。[z]

[和樹]「总之……请稍微陪我一会儿！」[z]

@st3 f=st03001141
@st3_jump
@q
[夏芽]「……哎，啊，慢，和树君――！？」[z]

[無]不等学姐回话我就走了起来。[z]

;◆背景（暗転）
;◆背景（学園廊下）
@bgm_stop
@bg f=bg900
@bg f=bg220
@bgm f=bgm33

@st2 f=st03001160
[夏芽]「……你，要拉我去哪里哟！？」[z]

[和樹]「那ー个……」[z]

[無]话说我，到底要去哪里？[z]

[和樹]「其实并没有考虑过！」[z]

@st2 f=st03001140
@st2_jump
[夏芽]「这么胡来而且还毫无计划吗！？」[z]

[和樹]「下午的学习和社团活动都不考虑，就反射性的要躲开我的邀请的学姐没资格说我毫无计划！」[z]

@st2 f=st03001253
[夏芽]「呜咕……那，那个是……」[z]

[和樹]「总而言之，要个这种地方」[z]

[和樹]「要不能有外人介入打搅，还能好好两个人说话的地方」[z]

[和樹]「还是说……根本不可以？讨厌和我共处吗？」[z]

@st2 f=st03001231
[夏芽]「……那，那个当然不，不会……」[z]

;一応ここで観念した感じ
@st2 f=st03001250
[夏芽]「…………」[z]

[無]学姐，露出在思考的表情。[z]

@st2 f=st03001181
[夏芽]「呐，和树君，你还没有吃午饭吧？」[z]

[和樹]「……又想偏离话题吗？」[z]

@st2 f=st03001160
[夏芽]「不是啦」[z]

@st2 f=st03001131
[夏芽]「已经不想躲避了……可以放手了」[z]

[和樹]「…………」[z]

@st2 f=st03000131
[無]稍稍小心提防着，我慢慢的松开了手。[z]

[無]似乎是真的――不打算躲避了的样子。[z]

@st2 f=st03000181
[夏芽]「那么，回答呢？午饭，还没吃吧？根据时间而言」[z]

[和樹]「嗯是的」[z]

@st2 f=st03000251
[夏芽]「那么……本来打算和巡一起吃午饭所以带来了便当」[z]

@st2 f=st03000231
[夏芽]「不介意的话……………………和树君，要吃吗……？」[z]

[和樹]「嗯」[z]

[無]话说起来夏芽学姐，没有被我拉着的那只手里，拎着一个稍微有点大的包裹。[z]

[無]正觉得就算是便当个头也有点太大了……原来是两人份的呀。[z]

@st2 f=st03000233
[夏芽]「哈……果然啊，感觉稍微有点不对劲……」[z]

[無]满面通红的低下脑袋，夏芽学姐声若蚊蝇的嘟哝着。[z]

@st2 f=st03000250
[夏芽]「昨晚，突然接到了巡的电话……」[z]

@st2 f=st03000261
[夏芽]「突然间很想要吃我做的便当了，所以请带上两人份的，被这么吩咐了」[z]

[和樹]「…………」[z]

[無]呜哦哦，不愧是策士啊！[z]

[無]姐姐，真是不可小觑啊……超nice！[z]

@st2 f=st03000151
[夏芽]「反正巡现在已经，去买午饭了吧」[z]

@st2 f=st03000131
[夏芽]「要是浪费掉，那就太可惜了……当然也没打算勉强你」[z]

@q
[和樹][font size=45]「怎么可能，完全没有一丝半毫的勉强！」[z]

@q
[和樹][font size=60]「绝对要收下！不管谁说什么！」[z]

@st2 f=st03000281
[夏芽]「是，是么……那么……去哪里吃？」[z]

[和樹]「嗯……去哪里呢……」[z]

[無]想要一遍吃饭一边聊天，果然不能有太多人……找个不太吵闹的地方比较好吧。[z]

;◆背景（空）
@bg_notime f=bg400

@st2_del
[無]这么想着――突然，户外的天空透过窗户映入眼帘。[z]

[和樹]「啊，中庭那里如何？而且天气也很适合」[z]

;@st2 f=st03000100
[夏芽]「……嗯，可以啊」[z]

[無]学姐向我微微点了点头（示意）――我们向着中庭出发。[z]

;◆背景（暗転）
@bg f=bg900
@bg f=ev412_00a

[夏芽]「……请用」[z]

[和樹]「啊，多谢」[z]

[無]学姐制作的这个便当――非同一般的豪华。[z]

[無]只是，这个……太过于一点突破型了呢，还是怎么说呢。[z]

[和樹]「那，那个……炸肉，汉堡肉，熏肉，香肠，生姜烤肉，肉松还有烤牛肉……？」[z]

[無]完完全全的纯肉菜啊。[z]

[無]老实说，便当盒子是茶色的，非常醇厚的茶色。[z]

[無]不，是不论是哪一个，看起来都非常美味的样子。[z]

[夏芽]「因为是打算做给巡吃的所以就……」[z]

[和樹]「啊，哈哈……我家的姐姐，非常的喜欢吃肉那」[z]

[夏芽]「莫非说，和树君，不怎么喜欢吃肉吗……？」[z]

[和樹]「没，完全没有。倒不如说是很喜欢」[z]

[無]嘛成长期的男性会讨厌吃肉的，这种家伙我觉得应该是不存在的吧。[z]

[無]可是……像这样光有肉的，果然还是稍稍有点吃不消啊。[z]

[和樹]「我要开动ー了！」[z]

[無]先从炸肉开始尝尝看。[z]

[無]……好吃到一塌糊涂啊！[z]

[無]明明已经凉了却非常多汁，油脂的感觉也非常棒。[z]

[無]面衣也炸得酥脆无比很有水准。[z]

[無]汉堡肉也很香。[z]

[無]在做好的同时，也附上了面包的风味，多么优雅的味道。[z]

[無]熏肉和香肠烤的恰到好处……简单朴素的撒了少许胡椒和盐，鲜明的衬托出食材的滋味。[z]

[無]而生姜烤肉，在腌过一遍的基础上，烤制后又涂了一次其它的酱料的感觉。味道深度十足。[z]

[無]肉松……这不是鸡肉肉松而是牛肉的！这满满登登的美味感，真是让人受不了。[z]

[無]烤牛肉口感非常美妙。添加的佐酱汁的味道也妙至毫巅。[z]

[無]嗯，每一个都是完美之作。[z]

[無]不愧是夏芽学姐的亲手之作。[z]

[夏芽]「……如何？」[z]

[和樹]「超级棒！」[z]

[夏芽]「真的么……？」[z]

[和樹]「毫不奉承的说是，拿去做生意 也没问题！的好吃」[z]

[和樹]「……不由自主产生可以的话希望能每天换着花样吃这种念头」[z]

[夏芽]「…………」[z]

@bg_notime f=ev412_00b

[夏芽]「嘿……也是呢，一般而言」[z]

[夏芽]「像这样尽是荤腥有些无法下咽呢」[z]

[夏芽]「我、好像只要一旦开始这么考虑了就会做得太过极端了的样子……」[z]

[和樹]「还好啦，姐姐就算是每天吃这个也会觉得从容淡定的」[z]

[和樹]「我觉的学姐的认识完全没有问题」[z]

@bg_notime f=ev412_00a

[夏芽]「……和树君，是不是和红一样有什么讨厌的食物呢？」[z]

[和樹]「…………！」[z]

[無]哦……这个莫非是，夏芽学姐想对我有所了解么！？[z]

[和樹]「基本上没有」[z]

[和樹]「硬要说的话就是没有特色的菜，我对于那种东西毫无兴趣」[z]

[夏芽]「这样啊……那么，喜欢的呢！我是说食物？」[z]

[無]……肯定没错。这个毫无疑问是调查啦！[z]

[無]这究竟代表什么呢？[z]

[無]今后，学姐还会再次为我做料理的意思吗？[z]

[和樹]「喜欢的东西多如牛毛，特别是这个！可以的话……」[z]

[夏芽]「的话？」[z]

[和樹]「请加入青椒（piment）是也」[z]

[夏芽]「欸……青椒」[z]

[和樹]「最近有红泡椒或者螺旋辣，各种各样种类繁多」[z]

[和樹]「我一般喜欢吃绿色辣椒。不过可以的话，皮很厚的那种还是饶了我吧」[z]

@bg_notime f=ev412_00b

[夏芽]「稍微有点儿意思呢。明明讨厌辣椒的人也很多呢」[z]

[和樹]「呜ー嗯，被问到底喜欢辣椒哪一点时，其实自己也不是很清楚」[z]

[和樹]「大概是中意那种独特的苦涩吧……？」[z]

[夏芽]「嘛兴趣爱好因人而异呢」[z]

@bg_notime f=ev412_00a

[夏芽]「……顺便问下，今天的菜味道如何？」[z]

[和樹]「我的评价是绝妙。每一个都风味十足，真的是非常美味」[z]

[和樹]「只不过……」[z]

[夏芽]「……只不过？」[z]

[無]难得夏芽学姐有心思对我进一步了解。[z]

[無]趁着这个机会，坦率的将想法传达给她吧！[z]

[和樹]「稍微控制一下味道，味道再清淡一点，就更好了」[z]

[和樹]「啊，虽然如此，但总体真的非常好吃，至少我是这么觉得的」[z]

[夏芽]「啊啊……确实，被这么说确实没错」[z]

[夏芽]「口味确实有些放的太重了，我自己也有点这么觉着」[z]

[夏芽]「巡似乎是喜欢稍重一点的口味我就……」[z]

[和樹]「是呢。姐姐对咸味和辣味非常有爱」[z]

[和樹]「都是些开胃的味道吧？」[z]

[夏芽]「嗯」[z]

[和樹]「虽然我也认为这个味道不错，但是吃多了会稍微有点腻味的感觉」[z]

[和樹]「因为，我比较嗜好清淡的口味」[z]

[夏芽]「原来如此……嗯，我记下了，你大概的口味」[z]

[和樹]「……话说回来呢，学姐」[z]

[夏芽]「什么事？」[z]

[和樹]「要是自己也吃的话，就算不做成这种专门针对姐姐的口味也可以的不是吗？」[z]

[和樹]「自已吃的那份，就普普通通做个便当不就好了吗……这样加上给姐姐准备的盒饭刚好两人份」[z]

[夏芽]「…………」[z]

@bg_notime f=ev412_00b

[夏芽]「嘿，还真是……为什么当时就没有注意到呢」[z]

[和樹]「学姐你，很努力去准备，结果在奇怪的地方有些疏忽大意了呢」[z]

@bg_notime f=ev412_00a

[夏芽]「……打一开始，我，就从来算不上意志坚定的人哟」[z]

[夏芽]「只不过是周围人自作主张这么设想的而已――」[z]

;◆背景（空）
@bg f=bg400

[無]――这样闲聊着，过了一会儿我和学姐欣赏着碧蓝的天空，静静地开始享受午餐。[z]

[無]值得一提的是，我没有对学姐说带有盘问性质的话语。[z]

[無]完全不想做出会破坏这难得的柔和气氛的行为。[z]

[無]但是，果然还是……。[z]

;◆背景（学園廊下）
@bgm_stop
@bg f=bg220
@bgm f=bgm11

@st2 f=st03000151
[夏芽]「……那么，差不多该回去了」[z]

@se0 f=受止_パシ

@st2 f=st03001141
@st2_jump
@q
[夏芽]「哎……慢，慢着，和树君……？」[z]

[無]抬脚准备返回自己教室的夏芽学姐的手――被我反射性的一把抓住。[z]

[無]……怎么了，这种感觉。[z]

[無]对于学姐要离开这件事，觉得寂寞――突然之间就变成了这样的节奏。[z]

[無]当然，我明白从理性而言这份欲望不现实的。[z]

[無]我和学姐的学级不同，理所当然的不会坐在同一个班级里，要接受的课程也大相径庭。[z]

[無]自然不可能将这只手牢牢地抓住，直到永远。[z]

[無]但即便如此――。[z]

[和樹]「――学姐」[z]

@st2 f=st03001131
@st2_jump
[夏芽]「哈，是！？」[z]

[和樹]「便当，真的非常的美味。非常感谢」[z]

@st2 f=st03001100
[夏芽]「啊，唔……你喜欢吃真是太好了」[z]

[和樹]「我……和学姐共度的时间，真的是非常的快乐」[z]

[和樹]「所以――」[z]

[無]想要更多，想和学姐在一起。[z]

[無]然后……想要更多更深入的了解学姐的事情，也想要学姐知道我的一切。[z]

[無]也就是，我想和学姐――。[z]

;これはもしや告白される流れ！？的に感じ、ちょっと焦っている
@st2 f=st03001141
[夏芽]「――――噫！」[z]

@st2 f=st03000241
@st2_jump
[夏芽]「差，差不多要走了，马上就要打铃了！」[z]

[無]为了挣脱我的手，学姐快速的迈步走开。[z]

[無]……变成一副要逃跑似的样子，拼命地挣扎着。[z]

[和樹]「学姐……夏芽学姐！」[z]

[無]（我）对着（学姐）正在离去的背影呼喊着。[z]

@st2 f=st03000231
[夏芽]「…………」[z]

[無]夏芽学姐她――立刻停下了脚步。[z]

[無]唰的一下，稍有回顾的意向将视线投向这边。[z]

@st2 f=st03000153
[夏芽]「什么事？还没完吗？」[z]

[和樹]「放学后，可不可以为我，腾出一点时间」[z]

@st2 f=st03000151
[夏芽]「…………做什么？」[z]

[和樹]「就像刚才说的那样，想和你说说话。谈些比较，正经的话题」[z]

@st2 f=st03000153
[夏芽]「…………」[z]

@st2 f=st03000250
[夏芽]「还有，社团活动的」[z]

[和樹]「我会等待的，直到（活动）结束」[z]

[和樹]「就像是以前的做恋爱咨询那个时候一样」[z]

@st2 f=st03000253
[夏芽]「……今天，练习结束后要开个会，比起那时还要更晚一些……说不定会拖到夜里哟？」[z]

[和樹]「我不介意」[z]

@st2 f=st03000230
[夏芽]「……………………」[z]

@st2 f=st03000151
[夏芽]「……知道了」[z]

;◆背景（空‐夕）
;◆背景（空‐夜）
;できれば音楽で綺麗な雰囲気を作っておきたい
;@bgm_stop
@bg f=bg401
@bg f=bg402
;@bgm f=bgm11

[無]在空荡荡的教室中悠闲自在的等待的时候，收到了学姐发送的邮件。[z]

[無]『会议总算结束了，社员全部回去了，来泳池』――这么写着。[z]

;◆背景（暗転）
@bg f=bg900

[無]……………………[z]

;◆背景（水泳場‐夜）
@bg f=bg252

@st2 f=st03000151
[夏芽]「……抱歉，真的是非常晚了」[z]

[無]到了泳池那里，夏芽学姐没有逃走，堂堂正正地出来迎接了我。[z]

[和樹]「没事。就如之前所说的一样，对于本人，等待并不是什么痛苦的事情」[z]

[和樹]「完全不是问题」[z]

[無]而且还利用等待的时间，充分地演练了一下到底要向学姐传达些什么！[z]

[和樹]「夜晚的泳池旁边，相当的有意思呢」[z]

[和樹]「真是不可思议的气氛……」[z]

[和樹]「虽然学姐你们来说也许觉得这算不上什么难得一见的场景，但于我而言很是非同寻常的感觉」[z]

;くすっと
@st2 f=st03000200
[夏芽]「就算是我们，也不会经常看到这个哟」[z]

@st2 f=st03000151
[夏芽]「少有拖到这么晚了的情况」[z]

[和樹]「哦，那就是说，现在的我，和夏芽学姐一起拥有了极为罕见的体验了么」[z]

[和樹]「好开心呀」[z]

;かぁっと意識して赤くなる感じ
@st2 f=st03000131
[夏芽]「…………」[z]

[無]哦，貌似气氛不错。[z]

[無]嗯……果然，要好好的传达（给她）。[z]

[無]接下来希望能够更多，更多的积攒和学姐共度的氛围与时间――请您和我交往。[z]

[和樹]「欸，话说起来呢……」[z]

;ぴくん、と小さく反応
@st2 f=st03000141
@st2_jump
[夏芽]「…………！」[z]

[無]夏芽学姐的肩膀，微微的震动了。[z]

[無]大概，是因为学姐也隐隐约约的有所预见了吧。[z]

[無]接下来我将会说些什么东西。[z]

[和樹]「我，对于学姐――」[z]

;ちょっと強めで
@st2 f=st03000241
@st2_jump
[夏芽]「等，等一下！拜托了！」[z]

[無]突然――带着非常勉强的音调，夏芽学姐低声叫着。[z]

[和樹]「啊……好的。我会耐心等待的，不论多久都会一直等下去的」[z]

@st2 f=st03000253
[夏芽]「……嘶呜……哈啊……嘶呜……哈啊……」[z]

[無]用手制止我的行动，深深吐息着的的夏芽学姐……是在做心理准备，吗？[z]

@st2 f=st03000151
[夏芽]「在听和，和树君的话之前，我这边有些话想说……！」[z]

[和樹]「欸……」[z]

[無]神马？[z]

[無]虽然不想做太过糟糕的想象，但是这抢先要『非常抱歉』的节奏……！？[z]

@st2 f=st03000251
[夏芽]「我……我，呢……」[z]

@st2 f=st03000253
[夏芽]「那个，这个……其实…………」[z]

[無]尽管满面飞红，语无伦次，但学姐仍旧拼命地动口说着。[z]

[無]为了告诉我而组织着措辞。[z]

[無]这个样子，非常的倔强，极其的惹人怜爱――。[z]

[無]无论学姐会说出什么样的话语，都要尊重（她的意见）然后受下来……这样率直地想着。[z]

@st2 f=st03000151
[夏芽]「最近，一直各种各样地……试着做真实的自己……」[z]

@st2 f=st03000153
[夏芽]「但是，果然还是不能清楚了解，脑袋里乱成一团浆糊……」[z]

;@st2 f=st03000131
[夏芽]「所以…………」[z]

[和樹]「…………」[z]

[無]（我）一声不响，等待夏芽学姐继续说下去。[z]

[無]说不定某个帅哥混蛋，会在这时猛地出现抱住（学姐）。[z]

[無]但是我，实在是对这种发展毫无期待啊。[z]

[無]学姐她――直到现在，总是从这样的状况中逃走，那个胆小的夏芽学姐，拼命地给自己打气。[z]

[無]向那份勇气泼凉水的妨碍行为……做不出来。[z]

[無]对于学姐的感觉希望表示敬意。[z]

@st2 f=st03000251
[夏芽]「其实……现在，脑袋里面，还是一片迷茫」[z]

;@st2 f=st03000253
[夏芽]「没办法好好的，给予干净利落的回应……说实话，连自己都觉得有些过意不去」[z]

@st2 f=st03000253
[夏芽]「但是……但是呢……」[z]

@st2 f=st03000153
[夏芽]「无论如何，做不到的事情就是做不到的心理，也……」[z]

@st2 f=st03000150
[無]夏芽学姐又一次，在这里中断了话语……直直地凝视着我的眼睛。[z]

[無]学姐的眼睛仿佛宝石一般,充盈着深沉的神秘色泽，其间少许微润的动摇即使在淡淡的阴影中也看的一清二楚。[z]

@st2 f=st03000153
[夏芽]「所以，那个……这个，虽然要我说很是自私」[z]

@st2 f=st03000131
[夏芽]「对于和树君，也许会觉得这些话会给自己添麻烦……但是」[z]

;@st2 f=st03000100
[夏芽]「要是说都不说就一刀两断的话，我觉得绝对不行……！」[z]

[和樹]「…………！」[z]

@st2 f=st03001131
[無]冷不丁的――夏芽学姐，紧紧地抓住了我的手。[z]

;手のぬくもりに、ちょっと感じ入っている
@st2 f=st03001131
[夏芽]「…………」[z]

@st2 f=st03001153
[夏芽]「……唔嗯…………果然，呢」[z]

@st2 f=st03001131
[夏芽]「我，对于和树君……当做一个男人，好像喜欢上了……」[z]

[和樹]「前……学姐……！」[z]

[無]这个――可真是了不得，再怎么被误解也毫不过分。[z]

[無]夏芽学姐向我告白啦……！[z]

;最大のハードルを自分でクリアしたので、ちょっとほっとしてる
@st2 f=st03001100
[夏芽]「……我想说的，就是这些」[z]

;でも完全に緊張が消えたわけではない
@st2 f=st03001151
[夏芽]「和树君，到你了」[z]

[和樹]「…………」[z]

[和樹]「这个，老实说……我想说的，其实和学姐一模一样呐」[z]

;予想はしてたけど、嬉しい
@st2 f=st03001130
[夏芽]「…………！」[z]

[和樹]「但是，要是说还有一点额外的区别的话――」[z]

@st2 f=st03001130
[無]悄悄的回握住学姐的双手，一点点的拉近彼此的（脸的）距离。[z]

[和樹]「所以……请答应和我交往，这点」[z]

@st2 f=st03001131
[夏芽]「啊……」[z]

;◆背景（夏芽イベント絵‐キス）
@st2_del
@bg_notime f=ev412_01

[無]飞快地，等学姐闭上眼睛的一瞬――我亲了上去。[z]

[夏芽]「嗯……呜呜…………」[z]

[夏芽]「哈啊，啊……嗯……」[z]

[無]只是嘴唇轻轻的相互碰触――像是小孩子做游戏那样的接吻。[z]

[無]但是，非常的让人心动不已。[z]

[無]娇嫩的嘴唇的触感，学姐湿润的吐息，从发梢上飘来的略微甘甜的香气……然后还有紧握着的手掌传来的温度。[z]

[無]全部的要素都集合成为一体，震撼着我的理性。[z]

[和樹]「……我喜欢你，夏芽学姐」[z]

[無]像是要在耳边低语一样――我静静地紧紧地抱住学姐的身体。[z]

@jump2 storage=413.ks
