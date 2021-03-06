@if exp="typeof(global.sb) == 'undefined'"
@iscript

// ボタン画像を含んだレイヤを画面上に表示

class SystemButtonLayer extends ButtonLayer  // ボタンレイヤ
{
	var onClickFunction;
	var btnSelected = false;

	function SystemButtonLayer(window, parent, func)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
		visible = true;
		onClickFunction = func;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function drawState(s)
	{
		if(!enabled && btnSelected)
		{
			// 選択中のボタンは押されている状態に
			imageLeft = -1 * width;
			return;
		}
		super.drawState(...);
	}

	function onNodeDisabled()// 操作不能になった
	{
		hitThreshold = 256; // 全域透過
		super.onNodeDisabled(...);
	}

	function onNodeEnabled()// 操作可能になった
	{
		hitThreshold = 64; // 全域不透過
		super.onNodeEnabled(...);
	}

	function onHitTest(x, y, process)
	{
		if(process)
		{
			if(System.getKeyState(VK_RBUTTON))// 右ボタンが押されていたときにイベントを透過
				super.onHitTest(x, y, false);
			else
				super.onHitTest(x, y, true);
		}
	}

	function onClick()
	{
		super.onClick(...);
	}

	function onMouseUp(x, y, button, shift)
	{
		if(enabled && button == mbLeft) onClickFunction(this);

		super.onMouseUp(...);
	}
}

class SystemButtonPlugin extends KAGPlugin
{
	var foreSeen = false; // 表画面のボタンが可視か
	var backSeen = false; // 裏画面のボタンが可視か

	var foreButtons = []; // 表画面のボタンの配列
	var backButtons = []; // 裏画面のボタンの配列

	var btnMode = -1; // ボタン切替

	var btnleft  = [];// ボタンの表示位置
	var btntop   = [];
	
	var quickNum = kag.numBookMarks - 1;// クイックデータの番号

	function SystemButtonPlugin()
	{
		createButtons(kag.fore.base, foreButtons);// ボタンを作成
		createButtons(kag.back.base, backButtons);
		realign();
		setObjProp(foreButtons, 'visible', foreSeen = false);// 非表示に
		setObjProp(backButtons, 'visible', backSeen = false);
	}

	function finalize()
	{
		// ボタンを無効化
		for(var i = 0; i < foreButtons.count; i++)
			invalidate foreButtons[i];
		for(var i = 0; i < backButtons.count; i++)
			invalidate backButtons[i];

		super.finalize(...);
	}

	function setObjProp(array, member, value)
	{
		// array の各メンバのプロパティの設定
		for(var i = array.count - 1; i >= 0; i--)
		{
			var v = value;

			if(member == "enabled")
			{
//■オートモード中にF8キーで、でシステムを呼び出すとシステム画面に遷移してエラーになる。
//■システムボタン画像を押した場合はエラーにならないで、オートが解除されるだけ。
//■対応として、他の場所に tf.autoModePlay を追加。が違う不具合発生。→とりあえずF8無効で対応
				if((tf.skipModeOn || tf.autoModeOn) && (i == 1 || i == 2)) v = false;//■スキップ中かオート中は、スキップボタン(1)とオートボタン(2)は無効
//■				if(tf.skipModeOn && i == 7) v = false;//■試し、システム(7)
//■				if(tf.autoModeOn && i == 7) v = false;//■試し、システム(7)
			}
			if(member == "visible")
			{
				if(f.SceneReplay && i >= 3 && i <= 6) v = false;//シーン回想中は、セーブ(3)、ロード(4)、クイックセーブ(5)、クイックロード(6)は見えない
				if(!f.SceneReplay && i == 8)          v = false;//シーン回想中以外は、回想終了ボタン(8)は見えない
				if(f.log_hide && i == 0)              v = false;//ログハイド中は、バックログボタン(0)は見えない
			}
			array[i][member] = v;
		}
	}

	function createButtons(parent, array)
	{
		// ボタンを作成し、array に登録
		var obj;

		// バックログ
		array.add(obj = new SystemButtonLayer(kag, parent, onLogButtonClick));
		obj.loadImages('sbtnLog');
		obj.hint = "バックログ (F9)"; //■0

		// スキップ
		array.add(obj = new SystemButtonLayer(kag, parent, onSkipButtonClick));
		obj.loadImages('sbtnSkip');
		obj.hint = "スキップ (F6)"; //■1

		// オートモード
		array.add(obj = new SystemButtonLayer(kag, parent, onAutoButtonClick));
		obj.loadImages('sbtnAuto');
		obj.hint = "オートモード (F7)"; //■2

		// セーブ
		array.add(obj = new SystemButtonLayer(kag, parent, onSaveButtonClick));
		obj.loadImages('sbtnSave');
		obj.hint = "セーブ (F3)"; //■3

		// ロード
		array.add(obj = new SystemButtonLayer(kag, parent, onLoadButtonClick));
		obj.loadImages('sbtnLoad');
		obj.hint = "ロード (F5)"; //■4

		// クイックセーブ
		array.add(obj = new SystemButtonLayer(kag, parent, onQSaveButtonClick));
		obj.loadImages('sbtnQSave');
		obj.hint = "クイックセーブ (F2)"; //■5

		// クイックロード
		array.add(obj = new SystemButtonLayer(kag, parent, onQLoadButtonClick));
		obj.loadImages('sbtnQLoad');
		obj.hint = "クイックロード (F4)"; //■6

		// システムメニュー 
		array.add(obj = new SystemButtonLayer(kag, parent, onSystemButtonClick));
		obj.loadImages('sbtnSystem');
//■		obj.hint = "システムメニュー (F8)"; //■7

		// 回想の終了
		array.add(obj = new SystemButtonLayer(kag, parent, onReplayExitButtonClick));
		obj.loadImages('sbtnExit');
		obj.hint = "回想の終了 (F10)"; //■8

		// ウィンドウを消す
		array.add(obj = new SystemButtonLayer(kag, parent, onNoWindowButtonClick));
		obj.loadImages('sbtnNoWin');
		obj.hint = "ウィンドウを消す"; //■9
	}

	function realign()
	{
		// ボタンの再配置
		// ボタンをそれぞれ指定された位置に配置する
		var count = foreButtons.count;

		for(var i = 0; i < count; i++)
		{
			var obj;

			obj = backButtons[i];
			obj.setPos(984, 522); //■裏？のシステムボタンの座標
			obj.absolute = 1003001 + i; // 重ね合わせ順

			obj = foreButtons[i];
			obj.setPos(984, 522); //■表？のシステムボタンの座標
			obj.absolute = 1003001 + i;
		}
	}

	function rightClickMenuLoad(mode)
	{
		// 右クリックメニューを呼ぶ
		stopAllSounds();
		tf.rclickMode = mode;
		kag.callExtraConductor("sysBtn.ks","*rclick");
	}

	function onQSaveButtonClick()
	{
		// クイックセーブ
		stopAllSounds();
//■		playSysVoice(getSV.save);//■
		if(askYesNo(,,"qs", quickNum)) kag.saveBookMark(quickNum);//■確認画面が出る
//■		kag.saveBookMark(quickNum);//■確認画面なし
	}

	function onQLoadButtonClick()// クイックロード
	{
		stopAllSounds();
		if(Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(quickNum)))
		{
//■			playSysVoice(getSV.load);//■
			if(sf.qload!=1)//■
			{
				kag.loadBookMark(quickNum);//■
			}
			else//■
			{
				if(askYesNo(,,"ql", quickNum)) kag.loadBookMark(quickNum);//■
			}
		}
		else
		{
			System.inform("クイックロードのデータがありません");
		}
	}

	function onLoadButtonClick()// ロード
	{
		stopAllSounds();//■追加
		tf.from_title=0;//■追加
		rightClickMenuLoad(1);
//■		kag.callExtraConductor("load.ks","*load");
	}

	function onSaveButtonClick()// セーブ
	{
		stopAllSounds();//■追加
		tf.from_title=0;//■追加
		rightClickMenuLoad(2);
//■		kag.callExtraConductor("save.ks","*save");
	}

	function onSkipButtonClick()// スキップ
	{
		stopAllSounds();
		btnMode = 1;
//■		tf.skipModeOn = true;//■追加、選択肢後の継続でもボタンの色が変わる。が、スキップ自体はしない。tf.skipModeOnの意味合いが不明。
		tf.autoModeOn = false;
		kag.skipToNextStopByKey();
	}

	function onAutoButtonClick()// オートモード
	{
//■		stopAllSounds();
		btnMode = 2;
//■		tf.autoModePlay=1;//■追加：オート開始で 1 てみた。→他の不具合が発生。
		tf.autoModeOn = true;//■追加
		tf.skipModeOn = false;
		kag.switchAutoModeByKey();
	}

	function onLogButtonClick()// バックログ
	{
		stopAllSounds();
		kag.showHistoryByKey();
	}

	function onSystemButtonClick()// システム■オートモード中にF8キーで、システムを呼び出すとシステム画面に遷移してエラーになる。システムボタンを押した場合はエラーにならないで、オートが解除されるだけ。対応として、他の場所に tf.autoModePlay を追加。が他の不具合発生
	{
		stopAllSounds();//■追加
		tf.from_title=0;//■追加
		kag.callExtraConductor("system.ks","*system");//■追加
//■		rightClickMenuLoad(0);
	}

	function onNoWindowButtonClick()// ウィンドウを消す
	{
//■		kag.rightClickMenuItem.click();
		kag.hideMessageLayerByUser();//■追加
//■		kag.hideMessageLayerByScenario();//■追加→グリフの位置が変になる
	}

	function onReplayExitButtonClick()// シーン回想の終了
	{
		stopAllSounds();
		kag.process("special.ks", "*memory");//■
	}

	function setOptions(elm)//オプションを設定
	{
		if(elm.forevisible !== void) setObjProp(foreButtons, 'visible', foreSeen = +elm.forevisible);
		if(elm.backvisible !== void) setObjProp(backButtons, 'visible', backSeen = +elm.backvisible);
	}

	function onStore(f, elm)//栞を保存するとき
	{
		var dic = f.systemButtons = %[];//辞書配列を作成
		dic.foreVisible = foreSeen;//各情報を辞書配列に記録
		dic.backVisible = backSeen;
	}

	function onRestore(f, clear, elm)//栞を読み出すとき
	{
		var dic = f.systemButtons;//systemButtons の情報が栞に保存されていない
		if(dic === void)
		{
			setObjProp(foreButtons, 'visible', foreSeen = false);
			setObjProp(backButtons, 'visible', backSeen = false);
		}
		else//systemButtons の情報が栞に保存されている
		{
			setOptions(%[forevisible : dic.foreVisible, backvisible : dic.backVisible]);
		}
		
		for(var i = foreButtons.count - 1; i >= 0; i--)//初期化しておく
		{
			foreButtons[i].btnSelected = false;
			backButtons[i].btnSelected = false;
		}
		btnMode = -1;
	}

	function onStableStateChanged(stable)//ボタンの選択中表示
	{
		if(btnMode != -1 && !stable)//走行中
		{
			foreButtons[btnMode].btnSelected = true;
			backButtons[btnMode].btnSelected = true;
		}
		else if(!tf.skipModeOn && !tf.autoModeOn && btnMode != -1 && stable)//安定中
		{
			foreButtons[btnMode].btnSelected = false;
			backButtons[btnMode].btnSelected = false;
			btnMode = -1;
		}
		setObjProp(foreButtons, 'enabled', stable);//走行中は各ボタンを無効にする
		setObjProp(backButtons, 'enabled', stable);
	}

	function onMessageHiddenStateChanged(hidden)//メッセージレイヤとともに表示 / 非表示を切り替える
	{
		if(hidden)
		{
			setObjProp(foreButtons, 'visible', false);
			setObjProp(backButtons, 'visible', false);
		}
		else
		{
			setObjProp(foreButtons, 'visible', foreSeen);
			setObjProp(backButtons, 'visible', backSeen);
		}
	}

	function onCopyLayer(toback)//レイヤの表←→裏の情報のコピー
	{
		if(toback)//表→裏
		{
			setObjProp(backButtons, 'visible', foreButtons[0].visible);
			backSeen = foreSeen;
		}
		else//裏→表
		{
			setObjProp(foreButtons, 'visible', backButtons[0].visible);
			foreSeen = backSeen;
		}
	}

	function onExchangeForeBack()//裏と表の管理情報を交換
	{
		var tmp;

		tmp = backButtons;
		backButtons = foreButtons;
		foreButtons = tmp;

		tmp = backSeen;
		backSeen = foreSeen;
		foreSeen = tmp;
	}
}

kag.addPlugin(global.sb = new SystemButtonPlugin(kag));

@endscript
@endif

; マクロ
@macro name="sysbtopt"
@eval exp="sb.setOptions(mp)"
@endmacro

@return

; 右クリックメニュー用サブルーチン
*rclick
@stoptrans
@locksnapshot
@eval exp="rc.show()"

*rclick_2
@waittrig name="config"
@jump storage=rclick_tjs.ks target=*rclick_tjs cond="tf.backtosystem==1" exp="tf.backtosystem=0"
@unlocksnapshot
@return

; 終了確認
*close
@close ask=true
;■@stopse buf=1
@jump storage=sysBtn.ks target="*rclick_2"
