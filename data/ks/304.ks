;りさルート04.txt
;りさ小イベント3.txt

;◆背景（暗転）
;◆背景（空）
;◆効果音（雀音：チュンチュン）
@eval exp="f.window=1"
@bgm_stop
@bg f=bg900
@bg f=bg400
@se0 f=雀

[無]……………[z]

;◆背景（和樹部屋）
@bg f=bg000
@bg f=bg030
@bgm f=bgm08

[無]……………………[z]

[りさ]「嗯…………」[z]

[りさ]「呼…………嗯……」[z]

@st2 f=st02061072

[りさ]「………呼——………嗯嗯，困………」[z]

;＞＞↑寝起き
;＞＞りさ裸

@st2 f=st02061140

[りさ]「嗯……？这是、哪………？」[z]

@st2 f=st02061052

[りさ]「咦？我昨天好像………………嗯？」[z]

@st2_del

[無]看向旁边。[z]

[無]在那里的是………[z]

[和樹]「嘶——……嘶——………ｚｚｚ」[z]

@st2 f=st02061041
@q
[りさ][font size=60]「………什！？」[z]

@st2_del

[無]柔软的床上[z]

[無]依偎在我身边的[z]

[無]三枝。[z]

@st2 f=st02061091
@st2_jump
[りさ]「呃！而且我没穿衣服！！」[z]

@st2 f=st02061052

[りさ]「这、这到底……昨晚发生了什么……姐姐呢？咦？搞不明白……」[z]

@st2 f=st02061053

[りさ]「快回忆，快回忆……我昨天」[z]

@st2 f=st02061050

[りさ]「为了阻止三枝侵犯姐姐，强行乱入三枝家……然后」[z]

@st2 f=st02061105

[りさ]「大叔们喝得很欢乐，所以我也蹭了一点迷之饮料……」[z]

@st2 f=st02061161

[りさ]「接着………意识就远去了……」[z]

@st2 f=st02061053

[りさ]「我还有姐姐照顾我的印象……」[z]

@st2 f=st02061041

[りさ]「难道姐姐就这样把我扔在这里……自己一个人回去了……？」[z]

@st2_del

[和樹]「………嗯、嗯嗯…………！」[z]

@st2 f=st02061091
@st2_jump
@q
[りさ][font size=60]「咿……！？」[z]

[無]男女公事一床……而且，我还是果体……！[z]

@st2 f=st02061170

[りさ]「也就是说………怎么会………！」[z]

[無]偷鸡不成蚀把米？！[z]

@st2 f=st02061073
@st2_jump
@q
[りさ][font size=60]「我被侵犯了吗！？」[z]

;◆効果音（チーン）
@se0 f=チーン_オチ

@st2_del

@eval exp="f.sepia=1"
@eval exp="f.window=0"

@bg_notime f=bg030
@st2 f=st02061073
[無]※勘違いです。[z]

@eval exp="f.sepia=0"
@eval exp="f.window=1"

@st_all_del
@bg_notime f=bg030

@st2 f=st02061164
[りさ]「三枝这魂淡，没分寸……！因为我长得又可爱又漂亮就！」[z]

@st2 f=st02061052

[りさ]「干不到姐姐就拿我顶，下半身动物吗」[z]

@st2 f=st02061170

[りさ]「可恶～难道我被……！」[z]

[和樹]「咕唔～、咕呜～……ｚｚｚ」[z]

@st2 f=st02061162

[りさ]「……………………」[z]

@st2 f=st02061073
@st2_jump
[りさ]「不要、不要……我，的第一次………！」[z]

@st2 f=st02061171

[りさ]「第一次……本应该是在第五次交往时进爱情旅馆……明明小时候就这样决定了……！！」[z]

@st2 f=st02061071
@st2_nod
[りさ]「呜…………呜咕………肚子好疼………这就是丧失处女的感觉………！」[z]

;◆効果音（チーン）
@se0 f=チーン_オチ

@st2_del

@eval exp="f.sepia=1"
@eval exp="f.window=0"

@bg_notime f=bg030

@st2 f=st02061071
[無]※误会加重。[z]

@eval exp="f.sepia=0"
@eval exp="f.window=1"

@st2_del
@bg_notime f=bg030

[和樹]「咕嘎～……嘶——……呜喵呜喵……真爽……ｚｚｚ」[z]

@st2 f=st02061052

[りさ]「咕……这……在梦里还在回味干我的事吗……狗日的」[z]

@st2 f=st02061053

[りさ]「竟敢玩弄没有意识的我……」[z]

@st2 f=st02061163
@st2_jump
[りさ]「尝尝我一天没换的袜子吧……！」[z]

[和樹]「唔、唔唔唔唔唔………挺美味的………ｚｚｚ」[z]

@st2 f=st02061091
@st2_jump
[りさ]「不行……这家伙是变态……！」[z]

@st2 f=st02061052

[りさ]「可恶～姐姐太过分了……竟然把我一个人扔在这种色狼家里……太过分了」[z]

@st2 f=st02061051

[りさ]「把娇弱的我扔在这里，会发生什么……这不是明摆着的么……」[z]

@st2 f=st02061170

[りさ]「呜呜呜，我的第一次……呜咕……被这个魂淡……咕」[z]

[和樹]「……嗯、嗯～………呼～」[z]

@st2 f=st02061041
@st2_jump
[りさ]「呃！？三枝、起、起来了……」[z]

;◆背景（暗転）
@bgm_stop
@eval exp="f.window=0"
@bg f=bg900

[無]………………[z]

;◆背景（和樹部屋）
@bg f=bg030
@bgm f=bgm01

[和樹]「……嗯、嗯～………呼啊～」[z]

[無]早上了吗……[z]

[無]昨晚闹翻了天，今天能安稳点度过就好了。[z]

[和樹]「呼啊～……洗完脸吃早饭～……嗯？」[z]

@st2 f=st02061091

[無]我慢慢坐起来，眼前有个认识的金发。[z]

@st2 f=st02061170

[りさ]「……………啊……啊……啊」[z]

[和樹]「……………………嗯～」[z]

[無]眼睛骨碌碌的转，就是不正视我。[z]

[和樹]「………………」[z]

@st2 f=st02061071
@st2_jump
[りさ]「………………！」[z]

[無]错觉吗……[z]

[無]全裸的里沙………[z]

@bgm_stop

[和樹]「………………」[z]

@bgm f=bgm09

@st2 f=st02061091
@st2_jump
@q
[りさ][font size=60]「呀——————————————————！！！！！」[z]

@q
[和樹][font size=60]「呜哇————！！！？」[z]

@st2 f=st02061170
@st2_jump
@q
[りさ][font size=60]「不要看！！」[z]

[和樹]「为、为、为」[z]

@q
[和樹][font size=60]「为什么你会全裸！！！」[z]

[無]不知为何里沙全裸着和我一起睡在床上。[z]

[無]这是何等的恐惧……！[z]

@st2 f=st02061041
@st2_jump
[りさ]「呃……你不记得了？作为罪魁祸首？！怎么会，讨厌……难道是趁醉！？」[z]

[和樹]「你在说什么，我完全不……」[z]

@st2 f=st02061163
@st2_jump
[りさ]「差劲，是你脱了我的衣服！！」[z]

[和樹]「呃！？此、此话怎讲！？」[z]

@st2 f=st02061171
@st2_jump
[りさ]「别装傻，像个男人点！至少要承认自己干过的事！」[z]

@q
[和樹]「呃、呃——————！？干过什么？额额？等等，你等等，我整理下记忆……」[z]

@st2 f=st02061052

[りさ]「………咕，你太差劲了……我隐隐作痛的下腹就是最好的证据」[z]

[和樹]「又拉肚子了？！」[z]

@st2 f=st02061163
@st2_jump

[りさ]「魂淡，会有搞错拉肚子和丧失处女之痛的女人吗！」[z]

;◆効果音（チーン）
@se0 f=チーン_オチ

@st2_del

@eval exp="f.sepia=1"

@bg_notime f=bg030
@st2 f=st02061163
[無]※确实是拉肚子[z]

@eval exp="f.sepia=0"

@bg_notime f=bg030

@st2 f=st02061163
@q
[和樹][font size=60]「呃、呃、呃、呃呃呃？？」[z]

[無]混乱。[z]

[和樹]「呃？！咦？！是吗？！我和你，做了？！爱？？」[z]

@st2 f=st02061071
@st2_jump
[りさ]「呀——不要直接说出来！」[z]

@st2_del

[無]说着里沙害羞地用被子遮住了脸。[z]

[和樹]「怎、怎么会……我的童贞……」[z]

[無]这什么情况……！！？[z]

@st2 f=st02061073

[りさ]「我的处女………呜呜呜呜（哭）」[z]

[和樹]「这要是真的……该该该、该怎么办」[z]

[無]到底发生了什么破事。[z]

@st2 f=st02061070

[りさ]「…………………………」[z]

@st2 f=st02061072

[りさ]「我………回去了」[z]

[無]里沙用女孩子系的声线说到。[z]

[和樹]「喂、喂、里沙！」[z]

@st2 f=st02061070

[りさ]「…………………………」[z]

@st2_move time=500 left=600
@wm
@st2_del

;◆効果音（ドア音：ガチャ）
;◆効果音（ドア音：バタン）
@se0 f=ドア開閉

[無]头也没回地从屋子里冲了出去。[z]

@bgm_stop

[和樹]「…………………………」[z]

[無]至少[z]

[無]穿上衣服啊[z]

;◆背景（暗転）
@bg f=bg900

[無]……………[z]

;◆背景（教室）
;◆背景（効果音‐予鈴）
@bg f=bg210
@se0 f=学校チャイム
@bg f=bg230
@bgm f=bgm05

[無]那天放学后。[z]

[無]我从早上开始就一直在思索、[z]

[無]可完全没有一丝关于当晚的记忆。[z]

[和樹]「我记得昨天……对阿知华扔在那儿的里沙……」[z]

[無]本打算交给老姐的，可她已经睡了[z]

[無]不肯开门……。[z]

[無]想交给红，可她也睡了[z]

[無]不肯开门……。[z]

[無]没办法，只好把这磨人的小妖精安置在地板上[z]

[無]然后我自己睡在了床上……[z]

[和樹]「我记得那时候她穿了衣服的……那为什么」[z]

[和樹]「早上会全裸着，而且躺在我旁边……」[z]

@q
[和樹]「咕啊，搞不明白」[z]

[無]怎么想都应该没做呀？我没做。[z]

[和樹]「呜呜呜呜」[z]

@st2 f=st01000171

[桜]「你在自言自语什么？三枝君」[z]

[和樹]「玉森啊……我有点、烦恼」[z]

@st2 f=st01000104

[桜]「嗯——是吗。你知道小千乃去哪儿了吗？找不到她」[z]

[和樹]「原来你这么冷淡？……千乃吗，好像不在教室……拉翔去了？」[z]

@st2 f=st01001162
@st2_jump
[桜]「小千乃才不会拉翔」[z]

[和樹]「我的女神不可能会拉翔吗！？会的吧？一般来说？」[z]

@se0 f=ドン_衝撃

@st2 f=st01001261
@st2_jump
@q
[桜][font size=60]「不．会．拉．翔」[z]

[和樹]「对了！那家伙肚子疼什么的，绝对只是想拉翔！一定是这样！！」[z]

@st2 f=st01001154
@st2_jump
[桜]「呃呃，小千乃肚子疼吗？！也就是……不会吧！」[z]

@st2 f=st01000231

[桜]「终于……『出来了』……小千乃（怦）」[z]

@st2 f=st01000134

[桜]「我和小千乃……爱的结晶……（怦）」[z]

[和樹]「你脑子里都装了什么？」[z]

@st2_del

[無]瞟[z]

[和樹]「……嗯？」[z]

[無]我感受到了视线。[z]

@st3 f=st02000161 left=600

@st3_move time=250 left=200
@wm
@st3_move time=100 left=600
@wm

[りさ]「……瞟……瞟！」[z]

[和樹]「啊！」[z]

[無]是那家伙……[z]

[無]在教室外面朝我瞟。[z]

@st3_move time=250 left=200
@wm
@st3_move time=100 left=600
@wm
@st3_move time=80 left=200
@wm
@st3_move time=80 left=600
@wm

[りさ]「……瞟……瞟瞟！」[z]

[無]还在说。[z]

[無]“瞟瞟”。[z]

[和樹]「喂、喂金发！」[z]

@st3 f=st02000041 left=600
@st3_move time=200 left=200
@wm
@st3_jump left=200
[りさ]「………咿」[z]

[無]一被我发现马上缩起了肩膀。[z]

[無]然后……[z]

@st_all_del
@st2 f=st02001134

[りさ]「………和树！」[z]

[無]脸红着移开了视线。[z]

[無]恶心萌。[z]

[無]为什么会称呼我的名字……[z]

[無]就在我疑惑不解的时候、[z]

@st2 f=st02000052

[りさ]「……！」[z]


@st2_jump
@wm
@st2_move time=200 left=600
@wm
@st2_del
[無]里沙一个转身跑开了。[z]

[和樹]「喂、喂！抱歉，玉森，我走了！话说到一半对不起……」[z]

@st2 f=st01000154
@st2_jump
@q
[桜]「怎怎怎、怎么办怎么办！小千乃一个人去厕所孕吐！？这种时期，就需要作为搭档的我的支持！！」[z]

[和樹]「……………」[z]

[無]我还有自己的事……[z]

[無]我慌慌张张地追着里沙。[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]…………………[z]

;◆背景（学園廊下）
@bg f=bg220
@bgm f=bgm09

[和樹]「在哪？！那家伙……」[z]

;＞＞りさ立ち絵
@st2 f=st02000070

@q
[和樹]「找到了！」[z]

@st2 f=st02000091
@st2_jump
[りさ]「咿！」[z]


@st2_jump
@wm
@st2_move time=200 left=600
@wm
@st2_del

[無]全速前进。[z]

;◆背景（暗転）
;◆背景（学園廊下）
@bg f=bg900
@bg f=bg220

[和樹]「喂、喂、金发……你听我说」[z]

@st2 f=st02000170
@st2_jump
@q
[りさ][font size=60]「咿————禽兽————！！！」[z]

@st2_jump
@wm
@st2_move time=200 left=600
@wm
@st2_del

[和樹]「………………………」[z]

;◆背景（暗転）
@bg f=bg900

[無]………………………[z]

;◆背景（学園廊下）
@bg f=bg220

[和樹]「喂、喂！金发……听我解释……」[z]

@st2 f=st02000091
@q
[りさ][font size=60]「咿————色魔————！！！」[z]

@st2_jump
@wm
@st2_move time=200 left=600
@wm
@st2_del

[和樹]「………………………」[z]

;◆背景（暗転）
@bg f=bg900

[無]………………………[z]

;◆背景（学園廊下）
@bg f=bg220

@st2 f=st02000091
@st2_jump
@q
[りさ][font size=60]「咿————」[z]

@st2_del
[和樹]「可恶！」[z]

[無]我拼尽全力地追着金发……[z]

@q
[和樹]「咕」[z]

@st2 f=st02000041
[無]总算是抓住了她的肩膀。[z]

@st2 f=st02000071
@st2_jump

[りさ]「！」[z]

[和樹]「站……住」[z]

[無]然后很自然地，将她拉了过来。[z]

@st2 f=st02001040
@q
[りさ][font size=60]「啊……！」[z]

@bgm_stop_notime

;◆効果音（ぶつかり音：ドサッ！）
@se0 f=ドン_当たる_物

;◆背景（暗転）
;＞画面揺らし
@st2_del
@bg_notime f=bg900
@q
[和樹][font size=60]「什！？」[z]

[和樹]「呃……！……」[z]

[無]不小心用力过猛，我和金发双双倒地。[z]

[りさ]「痛～～……好痛，你这魂淡………呃？」[z]

[和樹]「抱、抱歉……太用力」[z]

[和樹]「了…………」[z]

[無]慢慢睁开眼。[z]

;◆イベント絵（りさ‐パンチラ）
@st0 f=bg900 top=-360 left=0
@st1 f=bg900 top=360  left=0
@bg_notime f=ev304_00

@bgm f=bgm08

@st0_move f=bg900 top=-720 left=0 time=500
@st1_move f=bg900 top=720  left=0 time=500
@wm
@wm
@st0_del
@st1_del

@q
[和樹][font size=60]「！！！」[z]

[りさ]「……………………！！」[z]

[和樹]「什………」[z]

[りさ]「……………………！」[z]

[無]眼前微微散发着热气的布料。[z]

[りさ]「……………………！」[z]

[和樹]「这、这、这个……那个」[z]

[りさ]「……………………！」[z]

[りさ]「你………你………你」[z]

@q
[りさ]「你开什么玩笑！不不、不准看我内裤！」[z]

[和樹]「抱、抱歉、这可真是对不起」[z]

@q
[りさ]「不准看！要付费的！」[z]

[和樹]「唔唔唔」[z]

[りさ]「………真是～～………」[z]

@se0 f=コミカル_ピキーン

[りさ]「有些突然，现在来猜个迷吧」[z]

[和樹]「现在？！！保持这个体位猜谜！？」[z]

[無]你硬要的话……也行。[z]

[りさ]「里沙线的最后，男主角和树说了什么……？」[z2]

;＞＞選択肢１、俺達の戦いは、これからも続く……
;＞＞選択肢２、息切れ早ッ！！、→311.ksの最後でりさの台詞が増える
;＞＞選択肢３、いやホントっすか！それホントっすか！すげぇ、ちょっとオレ行ってくるっす
;＞＞選択肢４、りさ……愛してる
;＞＞選択肢５、チンチン取れちゃった
;＞＞どれを選んでも↓へ
@select5_long
*endselect
@endselect2

[和樹]「……………………」[z]

[和樹]「无法想象，只希望不是『５』……」[z]

[りさ]「正解请自行确认……」[z]

[和樹]「这段子真是」[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]………………[z]

;◆背景（学園廊下）
@bg f=bg220
@bgm f=bgm32

@st2 f=st02000150

[りさ]「呼………内裤被人看了……」[z]

[和樹]「这件事实在是对不起，真的……对不起」[z]

@st2 f=st02000051

[りさ]「哎呀呀」[z]

@st2 f=st02000050

[りさ]「………………」[z]

[和樹]「………………」[z]

@st2 f=st02001052

[りさ]「………………………」[z]

[和樹]「………………………」[z]

@st2 f=st02000091
@q
@st2_jump
@wm
@st2_move time=200 left=600
@wm
@st2_del

[りさ][font size=60]「咿——！！」[z]

[無]里沙突然尖叫着跑了。[z]

@q
[和樹][font size=60]「又要变成那个样子！！？」[z]

;◆背景（暗転）
@bg f=bg900

[無]………………………[z]

;◆背景（学園廊下）
@bg f=bg220

@st2 f=st02000170
@st2_jump
@q
[りさ][font size=60]「咿————」[z]

[和樹]「……………够了，我才懒得追……随你」[z]

@st2_move time=200 left=0
@wm
@st2 f=st02000040 left=0
@st2_jump left=0

[りさ]「呃？！」[z]

[無]哔嗒[z]

[和樹]「快回教室」[z]

@st2 f=st02000173 left=0
@st2_jump left=0
[りさ]「呃、啊、等、等等？」[z]

;◆背景（暗転）
@bg f=bg900

[無]………………………[z]

;◆背景（学園廊下）
@bg f=bg220

@st3 f=st02000111 left=600

@st3_move time=250 left=200
@wm
@st3_move time=100 left=600
@wm

[りさ]「………瞟」[z]

[和樹]「………………………」[z]

@st3_move time=250 left=200
@wm
@st3_move time=100 left=600
@wm
@st3_move time=250 left=200
@wm
@st3_move time=100 left=600
@wm

[りさ]「………瞟瞟」[z]

[無]这是有人在背后窥视我……的声音吗。[z]

[無]哈啊……真累。[z]

@st3_move time=250 left=200
@wm
[りさ]「………瞟出旋律，瞟出旋律」[z]

@st3_move time=100 left=600
@wm
@st3_del

@q
[和樹][font size=60]「你要干什么！」[z]

@st2 f=st02001041
@q
[無]回过头来。[z]

@st2 f=st02001091
@st2_jump
@q
[りさ][font size=60]「咿」[z]


[和樹]「人家一靠近就跑，一不管你又靠过来！你是会寂寞的小猫么！」[z]

@st2 f=st02001136

[りさ]「喵～喵～」[z]

[和樹]「哦～好好，不要害怕～过来过来过来♪」[z]

@q
[和樹][font size=60]「玩你个头！！」[z]

@st2 f=st02000011
@st2_nod
[りさ]「呜姆……刚才的吐槽………４０分」[z]

[和樹]「话多」[z]

[和樹]「你到底要我怎么办……接近你也不是，躲开也不是……」[z]

[和樹]「真搞不懂你在想什么……」[z]

@st2 f=st02001162

[りさ]「搞不懂？………再怎么说……」[z]

@st2 f=st02001061
@st2_jump
[りさ]「你也应该先跟我说点什么吧！夺走了少女的纯洁……还一副事不关己的样子！」[z]

[和樹]「………………………」[z]

[無]这个嘛……哦对……[z]

[無]如果她说的都是真的……[z]

[無]不对，我还没有取回所有的记忆……首先………咕唔[z]

[和樹]「……对不起了……」[z]

@st2 f=st02000162
@st2_jump
[りさ]「…………哈？道什么歉？你理解了吗？现在的情况」[z]

[和樹]「…………呜咕」[z]

[無]明明我不记得……明明不是我干的……应该………[z]

[無]但是……必须先……道歉。[z]

[和樹]「……………………」[z]

[無]Goodbye……我的童贞。[z]

[和樹]「你、你的……」[z]

[和樹]「剥夺了你的处女之身，那个……我应该负起责任……」[z]

@st2 f=st02000053

[りさ]「……怎么负？」[z]

[和樹]「所以………虽然顺序好像反了……那个、和我……和我……」[z]

@st2 f=st02000061

[りさ]「交往？」[z]

[和樹]「交往」[z]

@st2 f=st02000012

[りさ]「吧？」[z]

[和樹]「吧」[z]

@st2 f=st02001108
@st2_jump
[りさ]「呃～讨厌～三枝君真是的，原来你是用这种眼神看我的～讨厌～」[z]

[和樹]「…………！…………」[z]

@st2 f=st02001051
@st2_nod
[りさ]「没办法～初体验是你，就算我有再多的不满……」[z]

[和樹]「我也忍不了你啊」[z]

[無]我们这算什么情侣。[z]

@st2 f=st02000112

[りさ]「话说现在我们班以『有男朋友』为荣……只要有男朋友就非常了不起哟，了不起」[z]

@st2 f=st02000109
@st2_jump
[りさ]「一定会被各种奉承！大家都用憧憬的眼神看我！优越感爆表啊」[z]

[和樹]「……所以呢？」[z]

@st2 f=st02001051

[りさ]「所以……那个……虽然是意外，但既然做了……和我……那个……那个……」[z]

[和樹]「………………………………」[z]

@st2 f=st02001007

[りさ]「交往吧？」[z]

[和樹]「怎么像个支支吾吾的中国人……」[z]

[和樹]「还有你是认真的……？虽然我确实也想要个女朋友，可……啊！！」[z]

[和樹]「不应该是，玉森啊苍木学姐啊园原啊，干脆红或者阿知华她们吗」[z]

@st2 f=st02000101
@st2_jump
[りさ]「啊，说出这句话就毁了这部游戏了！全毁了！」[z]

@se0 f=ガーン_ショック

@q
[和樹][font size=60]「死都没想到……竟然会是你！」[z]

@st2 f=st02000031
@st2_jump
[りさ]「甜蜜的热恋，开始了哟！！」[z]

@q
[和樹][font size=60]「怎么会————」[z]

[和樹]「至少、至少来次正经的H或者Kiss啊————」[z]

@st2 f=st02001108
@st2_jump
@q
[りさ][font size=60]「讨厌——————！！！」[z]

@q
[和樹][font size=60]「咕哦————我的青春————……！！」[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]就这样………[z]

[無]我云里雾里地[z]

[無]和里沙开始交往了……[z]

@se0 f=チーン_オチ

[無]谁来……救救我……[z]

;◆背景（学園廊下）
@bg f=bg220
@bgm f=bgm03

@st2 f=st02000006
@st2_jump
[りさ]「决定了的话，快点报告姐姐吧！」[z]

@q
[和樹]「呃？！！」[z]

@st2 f=st02001061
@st2_jump
[りさ]「什么“呃？！！”，这是当然的吧？姐姐可是我的亲人呀？作为孩子向长辈隐瞒，这我可做不出来」[z]

[和樹]「哎呀，不过你……说不定我们明天就分了，也不用这么急着告诉家人吧……」[z]

@st2 f=st02001162

[りさ]「明天就分？那是哪门子交往，花心大萝卜？」[z]

[和樹]「别担心，是由你说分手就分手，我只是被玩弄的那方」[z]

@st2 f=st02001163
@st2_jump
[りさ][font size=60]「好阴湿！」[z]

@st2 f=st02000061

[りさ]「总之先报告姐姐，这是作为舍妹的义务」[z]

[和樹]「是、是吗……那我先回去了」[z]

@st2 f=st02000163
@st2_jump

[りさ]「一起去啊！那可是你的表姐！报告！报告的义务！义务教育！」[z]

[和樹]「……………」[z]

@st2 f=st02001061
@st2_jump
[りさ]「噢啦，走啦三枝」[z]

[無]说着里沙强行拉着我往前走。[z]

@q
[和樹]「喂、等、我的手……」[z]

[無]碰到了那微微的隆起……[z]

@st2 f=st02001108
@st2_jump

[りさ][font size=60]「碰到了！」[z]

[和樹]「对、对啊」[z]

[和樹]「跟我H吧」[z]

@st2 f=st02001163
@st2_jump
@q
[りさ][font size=60]「不要！」[z]

[和樹]「唔～」[z]

@st2_del

[無]在走廊上一边扯皮一边前进。[z]

@st2 f=st01000101
;@st2_jump
[桜]「啊，三枝君」[z]

[和樹]「哦，玉森，找到千乃了吗？」[z]

@st2 f=st01000172

[桜]「还没找到……」[z]

@st2 f=st02001040

[りさ]「蛋盛？」[z]

[和樹]「字搞错了」[z]

@st2_del
@st1 f=st02000040
@st3 f=st01000142

[桜]「咦？寿同学？为什么……」[z]

@st1 f=st02000111

[りさ]「喂喂，原来是我们班的……」[z]

@st3 f=st01000240

[桜]「为什么三枝君和寿同学……挽着手？」[z]

@st1 f=st02000004

[りさ]「啊啊，我们在交往」[z]

@st3 f=st01000154
@st3_jump
@q
[桜][font size=60]「呃呃呃呃呃！！！？？」[z]

@st3_del
@st2 f=st01001211
@st2_jump
[桜][font size=60]「好，消除了」[z]

@q
[和樹][font size=60]「消除了？！什么？！！」[z]

@st2_del
@st3 f=st01000104

[桜]「三枝君和寿同学……呐～」[z]

@st1 f=st02000001
@st1_jump
[りさ]「喂！」[z]

@st3 f=st01000100

[桜]「欸」[z]

[和樹]「呜哇，没兴趣的样子」[z]

@st3 f=st01000145
@st3_jump
[桜]「呃？！怎么会呢，啊哈哈～你们是怎么相遇的？……总之先问问（怦）」[z]

@q
[和樹]「你刚刚说了“总之”吧？？」[z]

@st1 f=st02001111

[りさ]「哎呀这个啊～你听我说～下了一跳呢，吓了我一跳呢，他太能缠了，哎哎」[z]

[無]那是什么角色……[z]

@st3 f=st01001211

[桜]「哎哎我也是，挺不爽的，有一段时间闺蜜被这个男的NTR了，哎哎，急死我了，哎哎」[z]


[和樹][font size=60]「玉森也起劲了——————！！！」[z]

@st_all_del
@st2 f=st02000032

[りさ]「哎哎，就是呢，哎哎，他在我面前，突然就脱下了裤子。掏出了引以为豪的大屌，哎哎，然后我就被迷住了」[z]

[和樹]「什么鬼？！！」[z]

@st2 f=st02000111

[りさ]「然后就向我告白，我立马同意」[z]

@st2_del
@st1 f=st02000111
@st3 f=st01000203
@st3_jump
[桜]「不愧是三枝君，崭新的告白方式！」[z]

[和樹]「才没有！还有因为对方的大屌豪迈就答应，脑子有病！？」[z]

@st1 f=st02000011

[りさ]「她这么说的」[z]

@st1 f=st02000107

[りさ]「『我有一个名为“让我干”的戒指』」[z]

@st1 f=st02000011

[りさ]「『只要有这个就能施展让所有女人都会对我投怀送抱的魔法』」[z]

@st3 f=st01000200
@st3_nod

[桜]「呼姆呼姆」[z]

@st1 f=st02000111

[りさ]「我也是被魔力影响，才答应的」[z]

@st3 f=st01000211
[桜]「原来如此原来如此，我很在意那是什么原理」[z]

;＞＞桜、一瞬視線を逸らす
@st3 f=st01000270
[無]瞟[z]

[無]玉森瞟了一下手表。[z]

[和樹]「你早就想回去了吧！！玉森，其实你一点都不感兴趣吧，这个话题！！」[z]

@st3_del
@st2 f=st01001111
@st2_jump
[桜]「这、这种事……我在担心小千乃……下次有机会在慢慢聊吧～……呐」[z]

[和樹]「你绝对不想再听了吧，这家伙的话无聊透顶，不听也罢」[z]

@st2_del
@st3 f=st01000100
@st1 f=st02000109
@st1_jump
[りさ]「叮咚！」[z]

[和樹]「又怎么了？羊癫疯发作？脑子又坏了？」[z]

@st1 f=st02000109
@st1_jump
[りさ]「叮咚！叮咚！叮咚！」[z]

[和樹]「坏了？？」[z]

@st1 f=st02000004

[りさ]「我听到越来越下流的话了」[z]

@st1 f=st02000109
@st1_jump
[りさ]「叮咚！叮咚！」[z]

@st1_del
@st2 f=st02001193
@st2_jump
[りさ]「三枝的叮咚，给我看看！」[z]

@q
[和樹][font size=60]「虽然不知道是什么但我不同意！！」[z]

@st_all_del
@st2 f=st01000202

[桜]「……………………」[z]

@st2 f=st01000203

[桜]「你、你们俩……真配呢……」[z]

;＞＞桜、一瞬視線を逸らす
@st2 f=st01000270
[無]チラッ[z]


[和樹]「走吧、你走吧」[z]

[無]还在瞟着手表[z]

@st2 f=st01000104
@st2_nod
[桜]「抱、抱歉、下次见……」[z]

@st2_move time=500 left=600
@wm
@st2_del
[無]说着玉森逃开了。[z]

@st2 f=st02000112
@st2_nod

[りさ]「好，这下那个女人再也不会过来了。击退一位女主」[z]

[和樹]「我们被当成脑子坏掉的家伙了」[z]

@st2 f=st02000074

[りさ]「没关系，只要能击退靠近和树的虫子……就行了」[z]

[和樹]「你这么喜欢我？」[z]

@st2 f=st02001131
@st2_nod
[りさ]「……讨厌～」[z]

[和樹]「到底要干什么」[z]

@st2 f=st02000104

[りさ]「接下来，要重正精神」[z]

@st2 f=st02000004
@st2_jump
[りさ]「去姐姐家嘭嘭！！」[z]

[和樹]「真的要去吗……」[z]

[和樹]「去之前先和我H吧」[z]

@st2 f=st02001163
@st2_jump
[りさ]「你是哪门子男主！你在其他线也是这么说的？呐？」[z]

[和樹]「哈哈哈哈，怎么可能」[z]

@se0 f=ガーン_ショック

@st2 f=st02001171
@st2_jump
@q
[りさ][font size=60]「你把我当什么了！？」[z]

[無]……………………[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]于是……我不情愿地和她来到了阿知华家的店[z]

;◆背景（喫茶店）
@bg f=bg300
@bgm f=bgm19

@st2_del
@st3 f=st06000146
@st1 f=st02000190
@st1_jump
[りさ]「啊，姐姐……我有事……要告诉你……」[z]

[和樹]「………」[z]

@st3 f=st06000147

[阿知華]「怎么啦，两个人都复活节岛石像一样的表情」[z]

@st1 f=st02000136

[りさ]「其实……我和三枝……」[z]

@st3 f=st06000102

[阿知華]「难道你们在交往？」[z]

@q
[和樹][font size=60]「什！？」[z]

@st1 f=st02000040
@st1_jump
[りさ]「为什么你会知道！？」[z]

@st3 f=st06000148
@st3_jump
[阿知華]「呃，真的……哎呀，你们第一次见面的时候我就觉得你俩很合适」[z]

@st3 f=st06000173

[阿知華]「会不会成一对呢～有时会这样想……没想到真成了」[z]

@st1 f=st02000012
@st1_jump

[りさ]「你听我说～我也是没办法，挺不情愿的～真受不了」[z]

@st3 f=st06000146

[阿知華]「哈？怎么回事」[z]

@st1 f=st02000004

[りさ]「哎呀，上次我不是在三枝家过了一夜吗～这魂淡对我～」[z]

@q
[和樹][font size=60]「呀啊啊啊啊啊啊啊啊！！」[z]

@q
[和樹][font size=60]「不、不、不、不要、不要啊！」[z]

[無]说出来我岂不是要成QJ犯了！[z]

[和樹]「不对，情投意合！！我们是情投意合才交往的！」[z]

@st1_del
@st2 f=st02001111
@st2_nod
[りさ]「哎～是这样吗～……」[z]

[和樹]「我、我、对你？怎么说来着？激恋？超奇怪的？恶心萌系的？」[z]

[和樹]「不知道是不是认真的？差不多就是这种感～～～脚～～～脚」[z]

@st2 f=st02001131

[りさ]「呃～～～～～～是吗～～～～～你这么一说我可困扰了～有人爱的女人难做人」[z]

[和樹]「………呼」[z]

@st2 f=st02001090
@st2_jump
[りさ][font size=60]「难啊难啊难啊难啊难啊！」[z]

[無]我要宰了这货……！[z]

@st2_del
@st1 f=st02000112

[りさ]「嘛，没办法～三枝都觊觎我到这个份上了，只好同情性地和他交往～」[z]

[和樹]「哇——我，好高兴」[z]

@st3 f=st06000153

[阿知華]「………和树，你的眼神已经死了……」[z]

@st1_del
@st2 f=st02001107
@st2_jump
[りさ]「呐呐，和树～？你喜欢我的哪儿？被我哪里迷住了？」[z]

[和樹]「这个呀～乳头的颜色～」[z]

[和樹]「别直呼我名字，信不信我敲死你」[z]

@st2_del
@st1 f=st02000031
@st1_nod
[りさ]「哎呀——，眼神好恐怖～」[z]

@st3 f=st06000125

[阿知華]「………嘛，我差不多明白了，关系好就行……」[z]

[和樹]「哦哟，我们相爱着呢！」[z]

@st1 f=st02000052
@st1_nod
[りさ]「呃～……不」[z]

[和樹]「这个流程又是要引出什么奇怪的反应了吗！给我注意你这扭捏的动作！」[z]

[無]这哪门子女朋友……[z]

@st1 f=st02000040

[りさ]「话说，姐姐你今天情绪挺低落的？」[z]

@st3 f=st06000124

[阿知華]「………………没有啊」[z]

[無]确实表情有些阴暗……[z]

[和樹]「发生了什么吗？」[z]

@st1 f=st02000101
@st1_jump
[りさ]「告诉我吧，姐姐！我们是朋友，日常交际都要相互报告的」[z]

@st1 f=st02000011

[りさ]「我们相互交心吧！」[z]

@st3 f=st06000101

[阿知華]「是……啊」[z]

@st3 f=st06000105

[阿知華]「告诉你，也没什么不好」[z]

@st3 f=st06001124 index=2001

[阿知華]「其实……今天我打扫老鬼的房间的时候……发现了这个」[z]

[無]说着阿知华从口袋里掏出一支管状小瓶子。[z]

@st1 f=st02001140 index=2002

[りさ]「什么？这……」[z]

@st_all_del
@st2 f=st06000162

[阿知華]「这个………是……『润滑剂』！」[z]

@st2_del
@st3 f=st06000162
@st1 f=st02000041
@st1_jump
[りさ]「润滑剂……？润滑剂……呃呃呃！！」[z]

@st1 f=st02000091
@st1_jump

[りさ]「润、润、润、润滑剂！就是、湿湿湿、湿润的、那个、咦、咦？？那个吗？」[z]

[和樹]「慌过头了……」[z]

@st3 f=st06000126

[阿知華]「我吓了一跳……在老鬼的房间发现这东西吗，作为女儿有些……」[z]

[和樹]「嘛，多感的时期」[z]

@st1_del
@st2 f=st02001163
@st2_jump
@q
[りさ]「你为什么那么冷静！给我体会一下发现家长的润滑剂的孩子的心情！」[z]

[和樹]「不不，我爸妈一直都有。有时还落在浴室，至少也给我藏好呀」[z]

@st_all_del

[無]红看到了总是问「这瓶子里是什么」[z]

[無]老爸和老妈就开始头疼……。[z]

[和樹]「嘛，大人有时候必须用这种东西吧？」[z]

@st2 f=st06001153

[阿知華]「就算是这样……还是感觉有些讨厌……」[z]

[和樹]「店长会哭的哦」[z]

@st2 f=st06001123

[阿知華]「想处理掉，扔到垃圾桶里的话那老鬼肯定会捡回来」[z]

[和樹]「店长对润滑剂是有多执着」[z]

@st2_del
@st3 f=st06000121
@st1 f=st02000050

[りさ]「……………………」[z]

@st1 f=st02000061
@st1_nod
[りさ]「我知道了，姐姐……润滑剂交给我处理吧！」[z]

@st3 f=st06000146

[阿知華]「真、真的？」[z]

@st1 f=st02000004
@st1_jump
[りさ]「是、交给我吧……！」[z]

@st3 f=st06000105

[阿知華]「真的吗～帮大忙了！」[z]

@st_all_del
@st2 f=st02001192

[りさ]「……………………欸」[z]

;◆効果音（アイテム取得音：チャラチャー！）
@se0 f=コミカル_ジャン

@st2 f=st02001108

[無]里沙获得了润滑剂……！！[z]

[和樹]「喂！你想干什么……！」[z]

@st2 f=st02000006
@st2_jump
[りさ]「好，决定了就干吧，和树！」[z]

[和樹]「呃？」[z]

[無]决定什么！？[z]

@st2_del
@st3 f=st06000101
@st1 f=st02000101

[りさ]「那再见，姐姐，我和和树正在约会，先失礼了！」[z]

@st3 f=st06000105

[阿知華]「哦，再见～」[z]

@st1_del
@st2 f=st02001192
@st2_jump
[りさ]「噗嘿嘿嘿嘿！走吧————！！」[z]

@q
[和樹][font size=60]「笑法！！！」[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]…………………[z]

;◆背景（繁華街）
@bg f=bg130
@bgm f=bgm05

[和樹]「喂，等等！到底去哪儿……」[z]

@st2 f=st02000101

[りさ]「你家」[z]

[和樹]「呃？」[z]

@st2 f=st02000004

[りさ]「除姐姐以外的熟人，也要通知」[z]

[和樹]「就、就是说……」[z]

@st2 f=st02001011
@st2_jump
[りさ]「当然是三枝妹和三枝姉，快走」[z]

[和樹]「……………………」[z]

@q
[和樹][font size=60]「啥————？！！」[z]

;◆背景（暗転）
;◆背景（三枝家自宅外観）
@bg f=bg900
@bg f=bg000

;◆効果音（インターホン：ピンポーン）
@se0 f=ドアチャイム三枝家

@st2 f=st02000107
@st2_jump
[りさ]「～♪三枝家人在吗～♪」[z]

@st2_del

[和樹]「……………」[z]

[無]拜托了，不要出来，不要有人在家！[z]

[無]我只能祈祷老姐和红还没从学校回来。[z]

[無]然而、[z]

[紅]「是，您哪位？」[z]

@st2 f=st02000101
@st2_jump
[りさ]「哟，三枝妹！」[z]

[無]……咕，失败了[z]

@st2 f=st02000004

[りさ]「我在和你的哥哥交往！」[z]

@q
[和樹][font size=60]「什」[z]

[無]怎么能这样说出来！？[z]

[紅]「什么！？那可吓咱……一跳，兄长现在什么脸色？」[z]
;音声加工済み

@st2 f=st02000040

[りさ]「呃？脸色？……这个」[z]

@st2 f=st02001190

[和樹]「…………………………………………」[z]

@st2 f=st02000011

[りさ]「一副要死的样子」[z]

[紅]「噢吼吼吼！差不多了解了！请……来了就先喝杯茶吧」[z]
;音声加工済み

@st2 f=st02000103
@st2_jump
[りさ]「你听！走吧，和树」[z]

[和樹]「…………………………………………」[z]

;◆背景（暗転）
;◆効果音（ドア音：ガチャ）
@bgm_stop
@bg f=bg900
@se0 f=ドア開閉

[無]我被扯进了自己家。[z]

;◆背景（三枝家居間）
;■以下紅私服に変更で
@bg f=bg010
@bgm f=bgm08

@st2 f=st04000003

[紅]「请您稍等，咱去沏红茶」[z]

@st2_del
@st1 f=st04000003
@st3 f=st02000103

[りさ]「不好意思～三枝妹」[z]

@st1 f=st04000023

[紅]「不不不，你以后说不定就是咱的姐上～这是应有的礼仪♪」[z]

@st3 f=st02000109 index=2001
@st3_jump
[りさ]「妹妹……！」[z]

@st1 f=st04000002

[紅]「噗噗噗……好好，慢用～♪」[z]

@st1_move time=600 left=600
@wm
@st1_del

[無]说着红蹦蹦跳跳地跑向了厨房。[z]

[無]看来是察觉到了我的尴尬……依然在拿我的不幸寻开心。[z]

[和樹]「……………呐？你来我家为了什么？」[z]

[和樹]「通知的话已经说过了，没事就早点回去」[z]

@st_all_del
@st2 f=st02001011
@st2_jump
[りさ]「什么嘛，和树～真小气～摸摸这个冷静下」[z]

@st2_del

[無]说着里沙把之前从阿知华那里弄来的润滑剂取了出来……[z]

[無]拧～[z]

[和樹]「喂！！别在这种地方用润滑剂！会弄脏的」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

[無]挤出的润滑剂蔓延开来。[z]

@st2 f=st02000004

[りさ]「欸嘿嘿嘿嘿嘿」[z]

[和樹]「欸嘿嘿你个头！洒出来了！润滑剂从手里洒出来了！很脏」[z]

@st2 f=st02001108
@st2_jump
[りさ]「欸嘿嘿，湿湿漉漉的哟～♪」[z]

[和樹]「湿你个鬼！别在别人家玩润滑剂！地板脏了…！」[z]

@st_all_del

@st0 f=st04000001
@st0_move time=300 left=-300
@wm

[紅]「红茶泡好了～寒舍只能拿出这点东西，请慢用～……呃？？」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

[無]咕啾咕啾[z]

@st_all_del
@st2 f=st02001131
@st2_jump
[りさ]「碉堡了，出来好多～♪」[z]

@st2 f=st04001067
@st2_jump
@q
[紅][font size=60]「兄兄兄、兄长！？你、你在弄什么！」[z]

@q
[和樹][font size=60]「哎呀，不是我！？我动都没动！？」[z]

@st2 f=st04000030

[紅]「但、但是……」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

[無]咕啾咕啾[z]

@st2 f=st02001075
@st2_jump
[りさ]「哎呀，和树的粘性好强啊～臭臭的」[z]

@st2 f=st04000031
@st2_jump
@q
[紅][font size=60]「……你看！！」[z]

@st2_del

[和樹]「别说那种会带来误会的话！」[z]

;◆効果音（殴り：ビシ！）
@se0 f=ツッコミ_ビシッ

@st2 f=st02001052
@st2_jump
@q
[りさ]「痛」[z]

@st2_del
@st3 f=st02000052
@st1 f=st04000032

[紅]「刚交往的时候爱爱咱能理解……可是……在咱泡茶这点时间里……做这档子事……」[z]

[和樹]「哎呀，你听我说，红……」[z]

@st3 f=st02000011
@st3_move time=300 left=-300
@wm
[りさ]「三枝妹，你摸摸看……黏糊糊的」[z]

@st1 f=st04000067
@st1_jump
[紅]「不、不要！为什么咱要摸兄长的臭精液！」[z]

[和樹]「哎呀， 不是精液！而且那润滑剂是无味的，怎么会臭」[z]

@st_all_del
@st2 f=st04001051

[紅]「润滑剂……吗？这黏黏的东西？」[z]

@st2 f=st04001055

[紅]「……………」[z]

@st2_del
@st1 f=st04000055
@st3 f=st02000011

[りさ]「哈哈，三枝妹……也就是你没看过男人的精液？」[z]

@st1 f=st04000032
@st1_jump
[紅]「呜咕……！？」[z]

[和樹]「你不也是」[z]

@st3_del
@st2 f=st02001133

[りさ]「我……看到过……大概在……那里面………呐？」[z]

@q
[和樹][font size=60]「！！」[z]

[和樹]「………………」[z]

[和樹]「抱歉……」[z]

@st2_del
@st3 f=st02000074

[りさ]「没什么……事情已经过去了………哼」[z]

@st1 f=st04000064
@st1_jump
[紅]「避好孕」[z]

@st_all_del
[無]这时、[z]

;◆効果音（ドア音：ガチャ）
@se0 f=ドア開

[和樹]「呃……」[z]

;■以下メグと夏芽私服で

@st0 f=st07000000
@st0_move time=300 left=-300
@wm
[無]老姐走进了客厅。[z]

@st0 f=st07000001 left=-300
@st0_jump left=-300

[メグ]「咦？和树君回来了～啊，欢饮寿同学～」[z]

@st_all_del
@st1 f=st07000001
@st3 f=st02000101
@st3_jump
[りさ]「哟！」[z]

@st1 f=st07000007

[メグ]「夏芽小姐坐下吧～大家一起喝茶！」[z]

[和樹]「呃，苍木学姐也在！？」[z]

@st1_del
@st2 f=st07001001

[メグ]「嗯，没错」[z]

[和樹]「………！」[z]

[無]有不好的预感……[z]

@st_all_del
@bg_notime f=bg900

[無]…………[z]

@bg_notime f=bg010

@st2 f=st03000281
@st2_nod
[夏芽]「不好意思，弟弟君，今天没有社团活动，来打扰了一下」[z]

[和樹]「是、是吗～啊哈哈，寒舍而已，请自便」[z]

@st2 f=st02001162
@st2_jump
[りさ]「（姆姆……花心）」[z]

[和樹]「（不是的！）」[z]

@st2 f=st07000011

[メグ]「咦？寿同学手里那黏黏的是……润滑剂？」[z]

@st2_del
@st1 f=st07000011
@st3 f=st03000241
@st3_jump
[夏芽]「润滑剂！？这、这种时候在、做做做、做什么……！」[z]

@st1_del
@st2 f=st07001014

[メグ]「…………哦呀，这（笑）」[z]

[無]不妙，苍木学姐这反应，老姐又要使坏了……[z]

@st_all_del
@st2 f=st02000112
@st2_jump
[りさ]「这是我从老爹子那里继承下来的秘制润滑剂」[z]


@st2 f=st07001009

[メグ]「欸～这样啊～……呐，夏芽同学？」[z]

@st2_del
@st1 f=st07000009
@st3 f=st03000231
@st3_jump
[夏芽]「什什什、什么？！」[z]

@st1_del
@st2 f=st07001012

[メグ]「寿同学……那个能借我用下吗？」[z]

@st_all_del
@st2 f=st02000101
@st2_nod
[りさ]「好」[z]

@st2_del

[無]说着老姐从里沙那里接过润滑剂瓶[z]

[無]毫不犹豫地[z]

[無]咕啾～[z]

[無]将润滑剂涂在了细长的手指上。[z]

@st2 f=st03000141
@st2_jump
[夏芽]「等、等等，巡，你在干什么……！？」[z]

@st2_del
@st1 f=st07000014
@st3 f=st03000141

[メグ]「呐，夏芽同学，看看这润滑剂……」[z]

@st1 f=st07000032

[メグ]「非常……黏呢………」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

[無]咕啾咕啾[z]

[無]老姐十分色情地把润滑剂涂在指间。[z]

[無]搞什么[z]

@st3 f=st03000241
@st3_jump
[夏芽]「啊哇哇啊哇啊啊……」[z]

[無]苍木学姐慌慌张张的，涨得满脸通红。[z]

@st3 f=st03000231

[夏芽]「快、快停手、巡……很脏的……」[z]

@st1 f=st07000012

[メグ]「哪里脏了～？这可是润滑剂呀？大家都会用的商品哟？比起那些你先好好看看，这湿湿滑滑的东西……」[z]

[無]老姐在胡说八道什么……[z]

@st3 f=st03000141
@st3_jump
[夏芽]「……啊哇哇………！！」[z]

@st1 f=st07000014

[メグ]「♪」[z]

[無]老姐好像很享受苍木学姐的反应。[z]

@st1 f=st07000022

[メグ]「呐，夏芽同学……我觉得我的身体有些发热……」[z]

@st3 f=st03000262
@st3_jump
[夏芽]「去洗手！」[z]

[和樹]「就是！」[z]

@st1 f=st07000011
@st1_move time=300 left=-300
@wm
[メグ]「在洗手前……我有件事……要拜托你」[z]

@st3 f=st03000233

[夏芽]「什、什么？」[z]

@st1 f=st07000011 left=-300

[メグ]「那个……呢」[z]

@st1 f=st07000012 left=-300

[メグ]「一下就好了……把润滑剂」[z]

@st1 f=st07000031 left=-300

[メグ]「涂在胸上……」[z]

@se0 f=コミカル_ピキーン

@st1_del
@st2 f=st07001014
@st2_jump
@q
[メグ][font size=60]「涂在夏芽同学的胸上……！！」[z]

@st_all_del
@st2 f=st03001160
@st2_jump
@q
[夏芽][font size=60]「不要！！！！！！！！」[z]
;＞＞↑文字大

@q
[和樹][font size=60]「那我还是有兴趣看的」[z]

@st2 f=st03000261

[夏芽]「弟弟君……（死）」[z]

[和樹]「开、开玩笑的……」[z]

[無]学姐好可怕。[z]

@st2 f=st02001162
@st2_jump
[りさ]「姆姆……花心」[z]

@st2_del
@st3 f=st02000162
@st1 f=st04000021

[紅]「就是」[z]

;◆背景（暗転）
@bgm_stop
@bg f=bg900

[無]………………[z]

;◆背景（三枝家居間）
@bg f=bg010
@bgm f=bgm04

@st2 f=st07000001

[メグ]「原来如此，店长私藏的润滑剂呀～」[z]

[無]喝茶的时候，我原原本本地向他们解释了润滑剂出处。[z]

@st2 f=st07000012

[メグ]「还有你们在交往～真没想到～哈啊～厉害厉害」[z]

[無]当然也汇报了我和里沙的关系……[z]

@st2 f=st07001014
@st2_jump
[メグ]「回到润滑剂的话题！」[z]

[無]在老姐眼里『润滑剂＞我和里沙的关系』。[z]

@st2 f=st02000053

[りさ]「没想到老爹会用润滑剂……姐姐也是辛苦」[z]

@st2_del
@st1 f=st07000007
@st3 f=st03000261

[夏芽]「比起那些，你洗过手了吗？巡」[z]

@st1 f=st07000007

[メグ]「洗了～润滑剂好难洗啊，第一次知道」[z]

@st_all_del
@st2 f=st04001051

[紅]「话说，真的是润滑剂吗？那是兄长的精液这种念头还是挥之不去」[z]

[和樹]「快挥掉，那种念头！」[z]

@st2 f=st07000010

[メグ]「有个无法解释的地方……」[z]

@st2_del
@st1 f=st07000010
@st3 f=st02000140

[りさ]「无法解释的地方？」[z]

@st1 f=st07000011

[メグ]「店长单身很久了吧？」[z]

[和樹]「所以呢？」[z]

@st1 f=st07000013

[メグ]「他却私藏了润滑剂这种东西……到底是干什么用的？」[z]

@st_all_del
@st0 f=st07000013
@st2 f=st03000251
@st4 f=st02000140

[夏芽]「这么一说……一个单身的男人有润滑剂，是不自然」[z]

@st0 f=st07000013
@st0_nod
[メグ]「是吧？」[z]

@st_all_del
@st2 f=st04001001
@st2_jump
[紅]「（兄长、兄长）」[z]

[和樹]「（嗯？）」[z]

@st2 f=st04001051

[紅]「（润滑剂，到底是什么东西？）」[z]

@q
[和樹]「（呃！？）」[z]

@st2 f=st04001057

[紅]「（单身所以不该有什么的，是坐什么用的，果然是……用来喝的？）」[z]

[和樹]「（不是）」[z]

@st2 f=st04001053

[紅]「（那究竟是……）」[z]

[和樹]「（这、这种事，你不知道的好……）」[z]

@st2 f=st04001054
@st2_jump
[紅]「（为什么？大家都知道，只把咱排除在外，这算什么）」[z]

[和樹]「（吵、吵死了，闭嘴……）」[z]

@st2 f=st04000055

[紅]「（………………）」[z]

@st2 f=st02000112

[りさ]「根据我的推测……准是用在飞机杯上～……」[z]

@st2_del
@st1 f=st02000112
@st3 f=st03000141
@st3_jump
[夏芽]「……！」[z]

@st_all_del
@st0 f=st02000112
@st4 f=st03000141
@st2 f=st07000013

[メグ]「啊～那可真是……寂寞啊～……」[z]

@st_all_del
@st2 f=st04001001
@st2_jump
[紅]「（兄长、兄长）」[z]

[和樹]「（嗯？）」[z]

@st2 f=st04001051

[紅]「（飞机杯……是什么？）」[z]

[和樹]「（那、那是……）」[z]

@st2_del
@st1 f=st04001051
@st3 f=st02001108
@st3_jump
[りさ]「（那是那是！）」[z]

[和樹]「（别插到兄妹间的对话里来……！红也是，别问这种问题！）」[z]

@st_all_del
@st2 f=st04000058

[紅]「（姆～又把我排除在外……）」[z]

@st2 f=st02000050

[りさ]「不不，等一下……！」[z]

@st2_del
@st3 f=st02000050
@st1 f=st07000001

[メグ]「你有什么线索吗？寿同学」[z]

@st3 f=st02000061
@st3_nod
[りさ]「嗯……我想起有关老爹的事了。让我再现吧」[z]

@st1 f=st07000012
@st1_nod
[メグ]「OK」[z]

@st_all_del
@st4 f=st02000061 index=2001
@st0 f=st07000012
@st2 f=st03000151

[夏芽]「呐，等一下，我不认识你们说的那个人……」[z]

@st4 f=st02000101 index=2001

[りさ]「蓬蓬松松的蓬蓬松松」[z]

@st2 f=st03000253

[夏芽]「蓬蓬松松……」[z]

@st_all_del
@st2 f=st02001061
@st2_jump
[りさ]「那就开始吧……老爹一个人用润滑剂的场景……Start！」[z]

[無]………………[z]

@bgm_stop
@eval exp="f.window=1"
@bg f=bg901
@bgm f=bgm11

;＞＞以下、立ち絵は俊彦
;＞＞↓男声っぽい演技で

@st2 f=st10060104

[俊彦　 n=里沙]「哎呀～这么好的天气，果然全裸着才舒服～哈哈哈！有种回归原始的感觉，嗯！」[z]

@st2 f=st10060182

[俊彦　 n=里沙]「今天心情真棒！好，特别地……」[z]

@st2 f=st10060105

[俊彦　 n=里沙]「用润滑剂吧～好！」[z]

@st2 f=st10060181

[俊彦　 n=里沙]「嗯，粘粘的～呀。手里的这一大滩润滑剂～在我鼓鼓的胸肌上～涂涂涂～！」[z]

@st2 f=st10060183

[俊彦　 n=里沙]「于是～？会发生什么～？」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10061104
@st2_jump
@q
[俊彦　 n=里沙]「噢嚯！噢嚯嚯嚯！来了来了～这粘糊糊的♪呼嘿嘿」[z]

@st2 f=st10060105

[俊彦　 n=里沙]「哎呀～黏黏的真舒服～太棒了！」[z]

@st2 f=st10060104

[俊彦　 n=里沙]「啊哈、啊哈哈、真棒，舒服……啊～黏黏的真棒……啊」[z]

@st2 f=st10060183

[俊彦　 n=里沙]「哈啊……呜哦………哈………呼………呼咕」[z]

@st2 f=st10061184

[俊彦　 n=里沙]「啊……黏黏的………哈……啊………呼咕！」[z]

;◆背景（暗転）
;◆背景（三枝家居間）
@bgm_stop
@bg f=bg010
@eval exp="f.window=0"

[無]………………[z]

@q
[和樹][font size=60]「好恶心！！！」[z]

@bgm f=bgm08

@st2 f=st04000051
[紅]「就算是店长，也没那么变态吧？」[z]

@st2_del
@st1 f=st04000051
@st3 f=st02000053

[りさ]「是吗？我认识的老爹倒一直是这个样子～」[z]

@st_all_del
@st0 f=st04000051
@st4 f=st02000053 index=2001
@st2 f=st03000153

[夏芽]「我不认识你们说的那个店长，很难作出评论……不过你这样有些过分了……」[z]

@st_all_del
@st2 f=st07001011

[メグ]「对啊～店长再怎么也不会那么变态。作为亲戚的我可以断言」[z]

@st2_del
@st1 f=st07000011
@st3 f=st02000012

[りさ]「那就请巡大人试试看～」[z]

@st1 f=st07000014
@st1_nod
[メグ]「好～其实我已经快猜到真相了！」[z]

[和樹]「真的？老姐」[z]

@st1 f=st07000005

[メグ]「嗯……店长他啊……」[z]

@st1 f=st07000014

[メグ]「有不得不用润滑剂的原因……」[z]

[和樹]「不得不用润滑剂的……原因？」[z]

@st1 f=st07000071
;@st2_nod
[メグ]「嗯……」[z]

[無]老姐沉下脸。[z]

@st3 f=st02000040
@st3_jump
[りさ]「怎么回事？巡大人的推测……让我听听！」[z]

@st1 f=st07000011
@st1_nod
[メグ]「嗯……那个呢……」[z]

[無]………………[z]

@bgm_stop
@bg f=bg901
@bgm f=bgm11
@eval exp="f.window=1"
;＞＞以下、立ち絵は俊彦
;＞＞↓男声っぽい演技で

@st2 f=st10060104

[俊彦　 n=巡]「耶～果然还是脱光了舒服～呼——」[z]

@st2 f=st10060105

[俊彦　 n=巡]「好，作为对今天的奋斗的犒劳………就是这个」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10060104

[俊彦　 n=巡]「用润滑剂涂满全身～……啊啊啊，来了来了，这个这个～就是这个」[z]

@st2 f=st10061184
@q
[俊彦　 n=巡]「啊～好舒服，啊～好舒服～」[z]

@st2 f=st10061105

[俊彦　 n=巡]「乳头特别爽，乳头好爽～」[z]

@st2 f=st10061180

[俊彦　 n=巡]「啊～乳头好爽……啊～～乳汁流出来了」[z]

@st2 f=st10061183
@st2_jump
@q
[俊彦　 n=巡]「乳汁、乳汁出来了……乳……」[z]

;◆背景（三枝家居間）
@bgm_stop
@bg f=bg010
@eval exp="f.window=0"

[無]………………[z]

@st1 f=st02001091 index=1001
@st3 f=st03001140
@st1_jump
@st3_jump
@q
[和樹＆りさ＆夏芽][font size=60]「「「变态吗！！」」」[z]

@bgm f=bgm08

@st_all_del
@st2 f=st04000056

[紅]「那也是个不折不扣的变态」[z]

@st2_del
@st1 f=st04000056
@st3 f=st02000051

[りさ]「这跟我没什么区别吧」[z]

@st_all_del
@st0 f=st04000056
@st4 f=st02000051
@st2 f=st07000090

[メグ]「咦？是吗～我已经绞尽脑汁了」[z]

[和樹]「因此让人感觉更加变态了」[z]

[和樹]「话说明明是在演无聊的独角戏，怎么你们弄得气氛有些紧张！」[z]

@st4 f=st02000162
@st4_jump
[りさ]「还有乳汁？！店长有乳汁！？太厉害了！！」[z]

@st_all_del
@st2 f=st03001131

[夏芽]「我不认识你们说的店长，很难作出评论……是个对社会、有害的人……？」[z]

@st2 f=st04000057

[紅]「哈啊～哎呀呀」[z]

@st2 f=st04000054

[紅]「里沙殿下和姐上，一点都不了解店长殿下呢～」[z]

@st2 f=st04001023

[紅]「作为侄女的咱让你们看看真相吧」[z]

@st2_del
@st3 f=st04000023
@st1 f=st07000011

[メグ]「我也算店长的侄女的说～……算了，听你说」[z]

@st_all_del
@st2 f=st04001003
@st2_jump
[紅]「根据咱的推理……！」[z]

[無]………………[z]

;◆背景（空‐夜）
@bgm_stop
@bg f=bg901
@bgm f=bgm11
@eval exp="f.window=1"

@st2 f=st10060181

[俊彦　 n=红]「……这是咱的秘密」[z]

@st2 f=st10060183

[俊彦　 n=红]「……咱其实是裸露癖……一到晚上，就想全裸」[z]

@st2 f=st10060180

[俊彦　 n=红]「然后……全裸着扭腰，不知为何最近发现这样做很舒服」[z]

@st2 f=st10060184

[俊彦　 n=红]「挺、停不下来、停不下来了……腰扭得………咦？咦？？」[z]

@st2 f=st10060183

[俊彦　 n=红]「这……这是什么？……湿湿的……」[z]

@st2 f=st10060180

[俊彦　 n=红]「湿湿的又黏黏的……………」[z]

@st2 f=st10061183

[俊彦　 n=红]「啊啊，咱说呢………………………是精液啊」[z]

;◆背景（三枝家居間）
@bgm_stop
@bg f=bg010
@eval exp="f.window=0"

[無]………………[z]

@q
[和樹][font size=60]「结果变成精液了吗！！」[z]

@st2 f=st02001163
@st2_jump
@q
[りさ][font size=60]「而且连自己射精了都没发现！」[z]

@bgm f=bgm08

@st2 f=st07000011

[メグ]「还有那是谁？？？“咱”什么的」[z]

@st2 f=st03001251

[夏芽]「我不认识你们说的店长，很难作出评论……已经无法想象他到底是什么样的人了……！！」[z]
;■ボイス分割したい

@st2 f=st04000058

[紅]「姆～咱搞错了吗～」[z]

@st2_del
@st3 f=st04000058
@st1 f=st07000014

[メグ]「唉，事已至此，公平起见……夏芽同学也试试吧！」[z]

@st_all_del
@st4 f=st04000058
@st0 f=st07000014
@st2 f=st03001140
@st2_jump
[夏芽][font size=60]「呃！？」[z]

@st_all_del
@st2 f=st04000091
@st2_jump
[紅]「哦哦！没错！夏芽殿下的话一定会认真演的！」[z]

@st2_del
@st1 f=st04000091
@st3 f=st02000103
@st3_jump
[りさ]「苍木学姐拜托了！！」[z]

@st_all_del
@st2 f=st03000262
@st2_jump
[夏芽]「等、等一下！我不认识店长！」[z]

@st2_del
@st3 f=st03000262
@st1 f=st07000014

[メグ]「没事没事！角色性混过去就行了～分不出脸的话打上马赛克好了」[z]

@st3 f=st03000240
@st3_jump
@q
[夏芽][font size=60]「什么意思？！！」[z]

@st_all_del
@st2 f=st04000003
@st2_jump
[紅]「总之，试一次吧！夏芽殿下！！」[z]

@st2_del
@st1 f=st04000003
@st3 f=st02000001
@st3_jump
[りさ]「苍木学姐拜托了！！！」[z]

[和樹]「你们……是鬼吗」[z]

@st_all_del
@st2 f=st03001253

[夏芽]「我、我可不知道会演成怎样……真是」[z]

[無]………………[z]

;◆背景（白）
@bgm_stop
@bg f=bg901
@bgm f=bgm11
@eval exp="f.window=1"
;＞＞以下、立ち絵は俊彦モザイク
;＞＞↓男声っぽい演技で

@st2 f=st10060190

[俊彦　 n=夏芽]「………………」[z]

@st2 f=st10060193

[俊彦　 n=夏芽]「……………润滑剂、吗」[z]


@st2 f=st10060191

[俊彦　 n=夏芽]「………唔姆」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10060190

[俊彦　 n=夏芽]「………………」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10060193

[俊彦　 n=夏芽]「………………」[z]

@st2 f=st10060195

[俊彦　 n=夏芽]「…………这可真不错……」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10060193

[俊彦　 n=夏芽]「………………哈啊、哈啊」[z]

@st2 f=st10060195

[俊彦　 n=夏芽]「………………真棒……」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10060190

[俊彦　 n=夏芽]「………………哈啊、哈啊」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10060191

[俊彦　 n=夏芽]「………………………！！」[z]

;◆効果音（液体音：ピチャピチャ！）
@se0 f=水_ピチャピチャ

@st2 f=st10061193

[俊彦　 n=夏芽]「………………唔」[z]

@st2 f=st10061194
@st2_jump
[俊彦　 n=夏芽]「出、出来了……！」[z]

;◆背景（三枝家居間）
@bgm_stop
@bg f=bg010
@eval exp="f.window=0"

[無]………………[z]

@st2 f=st02001091
@st2_jump
@q
[りさ][font size=60]「太真实了！！！」[z]

@bgm f=bgm08

@st2 f=st07000013

[メグ]「反而有些恶心，那个呢……」[z]

@st2 f=st03001232

[夏芽]「…………………………」[z]

[和樹]「学、学姐………」[z]

@st2 f=st04000032

[紅]「该说生动呢……还是该说还原度高呢……夏芽殿下……好闷骚」[z]

@st2_del
@st3 f=st04000032
@st1 f=st07000014

[メグ]「就是就是～不是个闷骚的话，怎么会想的这么生动～呵呵呵♪」[z]

@st_all_del
@st2 f=st03001233

[夏芽]「…………………………！」[z]

[和樹]「学、学长………」[z]

[無]……苍木学姐完全中了老姐的圈套。[z]

@st2 f=st03000131
@st2_jump
[夏芽]「讨厌……！」[z]

@st_all_del
@bg_notime f=bg400

@q
[夏芽][font size=60]「不要～～～～～～！！！！」[z]

[無]后来，这件事被称为「三枝家润滑剂事件」传颂开来。[z]

@jump2 storage=305.ks
