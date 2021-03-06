@if exp="typeof(global.rc) == 'undefined'"
@iscript

function checkRet()
{
	return kag.conductor.curStorage == "000.ks";
}

KAGLoadScript("SliderLayer.tjs");//■
/* --- スライダーレイヤクラス --- */
/*■■
Scripts.execStorage("SliderLayer.tjs");

class LSliderLayer extends SliderLayer
{
	function LSliderLayer()
	{
		super.SliderLayer(...);
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onChange(pos)
	{
		// 親 ( config ) にもイベントを通知
		parent.sliderLayerChange(this, pos);
	}

	function onFocus()
	{
		// フォーカスを得た
		super.onFocus(...);
		update();

		// オブジェクトのキーフォーカスのみ有効に
		if(parent.focusable) parent.focusable = false;

		// キー操作中ならマウスカーソルを自動でフォーカス
		if(SliderTab !== void)
			global.setAutoFocus(parent, SliderTab.left,
									Slider_tabWidth, top, height);
	}

	function onMouseEnter()
	{
		super.onMouseEnter(...);

		// マウスカーソルが乗ったら自動的にキーフォーカス
		focus();
	}

	function onMouseLeave()
	{
		super.onMouseLeave(...);

		// マウスカーソルが外れたらキーフォーカスも外す
		window.focusedLayer = null;
		parent.focusable = true;
		parent.focus();
	}

	function onMouseDown(x, y, button)
	{
		// 右クリックされたら閉じる
		if(button == mbRight)
		{
			// タイトルに戻ってる場合やトランジション中は無反応
			if(checkRet() || kag.transCount != 0) return;

			parent.owner.onConfigClose();
			return;
		}
		super.onMouseDown(...);
	}
}
■■*/
/* --- 右クリックメニュー用クラス --- */

class RButtonLayer extends ButtonLayer  // ボタンレイヤ
{
	var tag;

	var prevBtn = false;
	var pageBtn;
	var systemPageBtn;

	var gray;

	function RButtonLayer(window, parent)
	{
		super.ButtonLayer(window, parent);
		focusable = false;
	}

	function finalize()
	{
		super.finalize(...);
	}

	function drawState(s)
	{
		if(!enabled)
		{
			// 選択中のボタンは押されている状態に
			imageLeft = -1 * width;

			// 指定のボタンはグレースケールにしてみる
			if(gray !== void) doGrayScale();

			return;
		}

		super.drawState(...);
	}

	function onNodeDisabled()
	{
		// 操作不能になった
		hitThreshold = 256; // 全域透過

		super.onNodeDisabled(...);
	}

	function onNodeEnabled()
	{
		// 操作可能になった
		hitThreshold = 0; // 全域不透過

		super.onNodeEnabled(...);
	}

	function onFocus(focused)
	{
		// フォーカスを得た
		super.onFocus(...);
		update();

		// オブジェクトのキーフォーカスのみ有効に
		if(parent.focusable) parent.focusable = false;

		// システム処理によりフォーカスが移動してきたとき
		if(focused !== null && !kag.getKeyState(VK_LBUTTON) &&
			((focused.top == this.top &&
				!(this.left < parent.cursorX &&
					this.left + this.width > parent.cursorX)) ||
			(focused.left == this.left &&
				!(this.top < parent.cursorY &&
					this.top + this.height > parent.cursorY))))
		{
			parent.cursorX = left + width \ 2;
			parent.cursorY = top + height \ 2;
			return;
		}

		// キー操作中ならマウスカーソルを自動でフォーカス
		global.setAutoFocus(parent, left, width, top, height);
	}

	function onMouseEnter()
	{
		// タイトルに戻ってる場合やトランジション中は無反応
		if(checkRet() || kag.transCount != 0) return;

		super.onMouseEnter(...);

		// マウスカーソルが乗ったら自動的にキーフォーカス
		focus();
	}

	function onMouseLeave()
	{
		super.onMouseLeave(...);

		// マウスカーソルが外れたらキーフォーカスも外す
		if(enabled)
		{
			window.focusedLayer = null;
			parent.focusable = true;
			parent.focus();
		}
		else if(prevBtn)
			prevFocusable.focus();
		else if(pageBtn !== void)
			pageBtn.focus();
	}

	function onMouseDown(x, y, button, shift)
	{
		if(button == mbLeft)
		{
			// トランジション中ならスキップ
			if(kag.transCount != 0)
			{
				kag.stopAllTransitions();
				return;
			}

			// タイトルに戻ってる場合は無反応
			if(checkRet()) return;

			super.onMouseDown(...);
		}
		else if(button == mbRight)
		{
			// タイトルに戻ってる場合やトランジション中は無反応
			if(checkRet() || kag.transCount != 0) return;
		}
	}

	function onMouseUp(x, y, button, shift)
	{
		if(button == mbLeft)
		{
			// トランジション中ならスキップ
			if(kag.transCount != 0)
			{
				kag.stopAllTransitions();
				return;
			}

			// タイトルに戻ってる場合は無反応
			if(checkRet()) return;

			if(enabled) parent.onButtonClick(this);

			super.onMouseUp(...);
		}
		else if(button == mbRight)
		{
			// タイトルに戻ってる場合やトランジション中は無反応
			if(checkRet() || kag.transCount != 0) return;

			parent.owner.onConfigClose();
		}
	}

	function onKeyDown(key, shift, process)
	{
		// キーが押された
		if(process && key == VK_RETURN || key == VK_SPACE)
		{
			// トランジション中ならスキップ
			if(kag.transCount != 0)
			{
				kag.stopAllTransitions();
				return;
			}

			// タイトルに戻ってる場合は無反応
			if(checkRet()) return;

			// スペースキーまたはエンターキー
			super.onKeyDown(key, shift, false);
			parent.onButtonClick(this);
		}
		else
		{
			// タイトルに戻ってる場合やトランジション中は無反応
			if(checkRet() || kag.transCount != 0) return;

			// process が false の場合は処理は行わない
			super.onKeyDown(...);
		}
	}
}

class CurrentSaveDataLayer extends KAGLayer  // 栞のフォーカス用レイヤ
{
	function CurrentSaveDataLayer(window, parent)
	{
		super.KAGLayer(window, parent);
	}

	function finalize()
	{
		super.finalize(...);
	}

	function onHitTest(x, y, process)
	{
		if(process)
		{
			// 右ボタンが押されていたときにイベントを透過
			if(System.getKeyState(VK_RBUTTON))
				super.onHitTest(x, y, false);
			else
				super.onHitTest(x, y, true);
		}
	}
}

class SaveDataItemLayer extends KAGLayer  // 栞レイヤ
{
	var num;  // 栞番号
	var mode; // 1=SAVE 0=LOAD■←逆？

	function SaveDataItemLayer(window, parent, num, mode)
	{
		super.KAGLayer(window, parent);
		this.num = num;
		this.mode = mode - 1;//■？
		setImageSize(656, 62);//■セーブデータ名にカーソルを合わせたときのクリックの有効範囲、基本的に表示バーの横幅と縦幅と同じにする
		face = dfBoth;
		fillRect(0, 0, imageWidth, imageHeight, 0x00ffffff);
		setSizeToImageSize();
		hitType = htMask;
		hitThreshold = 0; // 全域不透過
		cursor = kag.cursorPointed;
		focusable = true; // フォーカスは受け取れる

		var str = 'No.%02d '.sprintf(num+1);//■セーブデータ番号の桁数
		font.height = 36;//■セーブデータ名のフォントサイズ
		// 栞の保存名を表示
		if(Storages.isExistentStorage(kag.getBookMarkFileNameAtNum(num)) && kag.bookMarkDates[num] != '')
		{
			if(sf.newDate == num)// 最新のデータには New の文字
			{
				var tmplayer = new global.Layer(window, parent);
				tmplayer.loadImages("save_new");
				copyRect(610, 0, tmplayer, 0, 0, tmplayer.imageWidth, tmplayer.imageHeight);//■表示バー左上を基準とした「save_new」の座標
				invalidate tmplayer;
			}
			str += kag.bookMarkNames[num];
		}
		else
		{
			if(kag.bookMarkDates[num] != '')// サムネイル画像が手動で削除されたときの対処
			{
				kag.bookMarkNames[num] = ''; // 栞名
				kag.bookMarkDates[num] = ''; // 保存年月日
				kag.setBookMarkMenuCaptions();
			}
			str += "　　　ＮＯ ＳＡＶＥ ＤＡＴＡ";//■
		}
		if(mode==1) drawText(68, (height - font.getTextHeight(str))>>1, str, 0xffffff, 255, true, 10000, 0x79c2f6, 5, 0, 0);//■ロード、バー内のテキストの座標、フォントの色等
		else        drawText(68, (height - font.getTextHeight(str))>>1, str, 0xffffff, 255, true, 10000, 0xffaebf, 5, 0, 0);//■セーブ、バー内のテキストの座標、フォントの色等
	}

	function finalize()
	{
		super.finalize(...);
	}

	function setText(x, y, str, sz)
	{
		parent.font.height = sz;
		if(mode==1) parent.drawText(x, y, str, 0xffffff, 255, true, 10000, 0xffaebf, 5, 0, 0);//■セーブ、プレビューの文字のフォントの色
		else        parent.drawText(x, y, str, 0xffffff, 255, true, 10000, 0x79c2f6, 5, 0, 0);//■ロード、プレビューの文字のフォントの色
	}

	function copyImg(x, y, ly, st)
	{
		ly.loadImages(st);
		parent.operateRect(x, y, ly, 0, 0, ly.imageWidth, ly.imageHeight, omAlpha);
	}

	function clearThumbnail()// データをクリア
	{
		var tmplayer = new global.Layer(window, parent);
		var st = "base_" + (mode ? "save" : "load");
		tmplayer.loadImages(st);
		parent.copyRect(96, 194, tmplayer, 96, 194, 466, 433);//■プレビュー文字列の描写クリアの範囲(コピー先短形x座標, コピー先短形y座標, コピー元オブジェクト, コピー元短形x座標, コピー元短形y座標, コピー元短形横幅, コピー元短形縦幅)
		invalidate tmplayer;
		parent.currentSaveDataLayer.visible = false;
	}

	function showThumbnail(ck = true)
	{
		clearThumbnail();
		var tn = kag.getBookMarkFileNameAtNum(num);
		if(ck) ck = Storages.isExistentStorage(tn) && kag.bookMarkDates[num] != '';
		var tmplayer = new global.Layer(window, parent);
		parent.currentSaveDataLayer.setPos(left, top);// 選択された栞のフォーカス矩形を表示する
		parent.currentSaveDataLayer.visible = true;
		if(ck) copyImg(113, 194, tmplayer, tn);//■選択された栞のサムネイル画像の座標
		invalidate tmplayer;

		var str = 'No.%02d'.sprintf(num+1);//■番号と栞の保存名を表示
		setText(282, 441, str, 36);//■サムネイルのセーブデータの番号の座標、文字列、フォントサイズ

		if(kag.bookMarkNames[num] == '') str = "　　　 ＮＯ ＳＡＶＥ ＤＡＴＡ"; //■
		else                             str = kag.bookMarkNames[num];
		setText(98,  511, str, 36);//■サムネイルのセーブデータ名の座標、文字列、フォントサイズ

		// 日付を表示
		if(kag.bookMarkDates[num] == '') str = "----/--/-- --:--"; //■
//■		else                             str = global.getPlayTime(num, 1);//■setSaveLoad.tjsでバグがあったので kag から取得に変更した
		else                             str =kag.bookMarkDates[num];
		setText(191, 581, str, 36);//■サムネイルのセーブデータの年月日の座標、文字列、フォントサイズ
	}

	function onFocus()
	{
		super.onFocus(...);// フォーカスを得た
		update();
		global.setAutoFocus(parent, left, width, top, height);// キー操作中ならマウスカーソルを自動でフォーカス
		showThumbnail(); // サムネイルの表示
	}

	function onBlur()
	{
		// フォーカスを失った
		super.onBlur(...);
		update();
		clearThumbnail(); // サムネイルのクリア
	}

	function onHitTest(x, y, process)
	{
		if(process)
		{
			// 右ボタンが押されていたときにイベントを透過
			if(System.getKeyState(VK_RBUTTON))
				super.onHitTest(x, y, false);
			else
				super.onHitTest(x, y, true);
		}
	}

	function onKeyDown(key, shift, process)
	{
		// キーが押された
		if(process && key == VK_RETURN || key == VK_SPACE)
		{
			// トランジション中ならスキップ
			if(kag.transCount != 0)
			{
				kag.stopAllTransitions();
				return;
			}

			// タイトルに戻ってる場合は無反応
			if(checkRet()) return;

			// スペースキーまたはエンターキー
			super.onKeyDown(key, shift, false);
			parent.onLoadOrSave(num);
		}
		else
		{
			// タイトルに戻ってる場合やトランジション中は無反応
			if(checkRet() || kag.transCount != 0) return;

			// process が false の場合は処理は行わない
			super.onKeyDown(...);
		}
	}

	function onMouseEnter()
	{
		// タイトルに戻ってる場合やトランジション中は無反応
		if(checkRet() || kag.transCount != 0) return;

		super.onMouseEnter(...);

		// マウスカーソルが乗ったら自動的にキーフォーカス
		focus();

		// サムネイル画像を表示
		showThumbnail();
	}

	function onMouseLeave()
	{
		super.onMouseLeave(...);

		// マウスカーソルが外れたらキーフォーカスも外す
		window.focusedLayer = null;

		// サムネイル画像をクリア
		clearThumbnail();
	}

	function onMouseDown(x, y, button, shift)
	{
		if(button == mbLeft)
		{
			// トランジション中ならスキップ
			if(kag.transCount != 0)
			{
				kag.stopAllTransitions();
				return;
			}

			// タイトルに戻ってる場合は無反応
			if(checkRet()) return;

			super.onMouseDown(...);

			focus();
			parent.onLoadOrSave(num);
		}
	}
}

class RClickConfigLayer extends Layer  // システム画面レイヤ
{
	var closeButton; // 本編に戻る ボタン
	var goToStartButton; // タイトルに戻る ボタン
	var exitButton; // 終了 ボタン

	var Sliders = []; // スライダーオブジェクト
	var sliderLimit = []; // 限界値になっているかどうか

	var voVolume = setVoiceVolume(); // 現在のボイス音量
	var bgmVolume = setBgmVolume();  // 現在のＢＧＭ音量
	var seVolume = setSoundVolume(); // 現在の効果音音量

	var voiceOffButtons; // ミュート（ボイス）ボタン
	var vvcBtn = false; // 現在選択されている状態
	var bgmOffButtons;   // ミュート（ＢＧＭ）ボタン
	var bvcBtn = false; // 現在選択されている状態
	var soundOffButtons; // ミュート（効果音）ボタン
	var svcBtn = false; // 現在選択されている状態

	var chSpeed = kag.userChSpeed - 5; // 現在の文字表示速度

	var chChangeFontButton; // フォント選択 ボタン
	var chNoWaitButtons; // 一括表示 ボタン

	var nwcBtn = 0; // 現在選択されているボタン
	var displayButtons; // 画面 ボタン
	var dcBtn = 0; // 現在選択されているボタン
	var continueVoiceButtons; // ■次の音声再生まで音声継続する ボタン
	var cvBtn = 0; // ■現在選択されているボタン
	var effectButtons; // 画面効果 ボタン
	var ecBtn = 0; // 現在選択されているボタン

	var skipModeButtons; // 文章スキップ ボタン
	var smcBtn = 0; // 現在選択されているボタン

	var sVoButtons; // 個別ボイス設定 ボタン

	var sVoPlayButton; // システムボイスの再生 ボタン

	var saveDataItems;
	var currentSaveDataLayer; // セーブデータのフォーカス用レイヤ

	var state = -1; // 0 = システムメニュー  1 = ロード画面 2 = セーブ画面
	var owner; // RClickConfigPlugin オブジェクトへの参照

//■	var currentPage = 0; // セーブデータ選択中に表示中のページ
	if(sf.currentPage===void) sf.currentPage=0;//■追加
	var currentPage = sf.currentPage; //■追加

	if(sf.systemPage===void) sf.systemPage=0;//■追加
	var systemPage = sf.systemPage; //■追加

	var lsCloseButton; // 本編に戻る２ ボタン
	var lsGoToStartButton; // タイトルに戻る２ ボタン
	var lsExitButton; // 終了２ ボタン

	var pageButtons; // セーブデータ（ロードデータ)のページボタン
	var currentPageLayer; // 表示中のページ番号を表示するレイヤ
	var systemPageButton1;//■システムページボタン1
	var systemPageButton2;//■システムページボタン2
	var systemPageLayer;//■ 表示中のシステムページ番号を表示するレイヤ

	function RClickConfigLayer(win, par, owner)
	{
		super.Layer(win, par);
		this.owner = owner;

		// レイヤの状態を初期化
		setImageSize(1280, 720); //■
		clearBase();
		setSizeToImageSize();
		setPos(0, 0);
		hitType = htMask;
		hitThreshold = 0; // 全域不透過

		// 音量のチェック
		if(!voVolume) voVolume = kag.scflags.rcMenuVoiceVolume;
		if(!bgmVolume) bgmVolume = kag.scflags.rcMenuBgmVolume;
		if(!seVolume) seVolume = kag.scflags.rcMenuSoundVolume;

		// ミュートボタンの状態
		if(kag.scflags.rcMenuVoiceOff !== void)
			vvcBtn = kag.scflags.rcMenuVoiceOff;
		if(kag.scflags.rcMenuBgmOff !== void)
			bvcBtn = kag.scflags.rcMenuBgmOff;
		if(kag.scflags.rcMenuSoundOff !== void)
			svcBtn = kag.scflags.rcMenuSoundOff;

		// 文字速度のチェック
		if(chSpeed == -5) chSpeed = kag.scflags.rcMenuChSpeed;

		// 一括表示ボタンの状態
		if(kag.scflags.rcMenuChNoWait !== void)
			nwcBtn = kag.scflags.rcMenuChNoWait;
	}

	function finalize()
	{
		clear();

		invalidate closeButton if closeButton !== void;
		invalidate goToStartButton if goToStartButton !== void;
		invalidate exitButton if exitButton !== void;

		invalidate systemPageButton1 if systemPageButton1 !== void;//■
		invalidate systemPageButton2 if systemPageButton2 !== void;//■

		invalidate chChangeFontButton if chChangeFontButton !== void;

		invalidate sVoPlayButton if sVoPlayButton !== void;

		invalidate lsCloseButton if lsCloseButton !== void;
		invalidate lsGoToStartButton if lsGoToStartButton !== void;
		invalidate lsExitButton if lsExitButton !== void;

		super.finalize(...);
	}

	function setVoiceVolume()
	{
		// 現在のボイス音量
		return int(kag.se[2].volume2 / 1000);
	}

	function setBgmVolume()
	{
		// 現在のＢＧＭ音量
		return int(kag.bgm.buf1.volume2 / 1000);
	}

	function setSoundVolume()
	{
		// 現在の効果音音量
		return int(kag.se[0].volume2 / 1000);
	}

	function clearBase()// 背景画像の読み込み
	{
		if(state ==  1)             loadImages("base_load");// ロード画面
		else if(state ==  2)        loadImages("base_save");// セーブ画面
		else if(sf.systemPage == 1) loadImages("base_sound");//■追加
		else                        loadImages("base_system0");//システム画面
	}
	/* --- メニュー作成処理 --- */

	function makeSystemMenu1()
	{
		// システムメニューの表示
		if(state != 0)
		{
			state = 0;
			clear();
//■			makeSystemPageButton();

		/* --- ボリューム設定 --- */

			// 「音量（ボイス）」スライダーを作成
			if(Sliders[0] === void)
			{
				var obj = new LSliderLayer(window, this);
				Sliders[0] = obj;
				obj.left     = 361; //■
				obj.top      = 244; //■
				obj.width    = 192; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.height   =  20; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.min      =   0;
				obj.max      = 100;
				obj.divi     =  10;
				obj.position = voVolume;
				obj.visible  = true;
			}

			// 「ミュート（ボイス）」ボタンを作成
			if(voiceOffButtons === void)
			{
				voiceOffButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var voffs = [
						false, // ON
						true   // OFF
					];
					var obj = new RButtonLayer(window, this);
					voiceOffButtons[i] = obj;
					obj.loadImages("sys" + (i ? "Off" : "On"));
					obj.left = 225 + 56 * i; //■
					obj.top = 239; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = vvcBtn == voffs[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'voff';
					obj.voff = i;
					obj.prevBtn = i;
					if(select) vvcBtn = i;
				}
			}
			
			if(Sliders[1] === void)// 「音量（ＢＧＭ）」スライダーを作成
			{
				var obj = new LSliderLayer(kag, kag.fore.base);
				Sliders[1] = obj;
				obj.left     = 361; //■
				obj.top      = 299; //■
				obj.width    = 192; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.height   =  20; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.min      =   0;
				obj.max      = 100;
				obj.divi     =  10;
				obj.position = bgmVolume;
				obj.visible  = true;
			}

			if(bgmOffButtons === void)// 「ミュート（ＢＧＭ）」ボタンを作成
			{
				bgmOffButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var boffs = [
						false, // ON
						true   // OFF
					];
					var obj = new RButtonLayer(window, this);
					bgmOffButtons[i] = obj;
					obj.loadImages("sys" + (i ? "Off" : "On"));
					obj.left = 225 + 56 * i; //■
					obj.top = 295; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = bvcBtn == boffs[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'boff';
					obj.boff = i;
					obj.prevBtn = i;
					if(select) bvcBtn = i;
				}
			}

			if(Sliders[2] === void)// 「音量（効果音）」スライダーを作成
			{
				var obj = new LSliderLayer(window, this);
				Sliders[2] = obj;
				obj.left     = 361; //■
				obj.top      = 354; //■
				obj.width    = 192; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.height   =  20; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.min      =   0;
				obj.max      = 100;
				obj.divi     =  10;
				obj.position = seVolume;
				obj.visible  = true;
			}

			if(soundOffButtons === void)// 「ミュート（効果音）」ボタンを作成
			{
				soundOffButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var soffs = [
						false, // ON
						true   // OFF
					];
					var obj = new RButtonLayer(window, this);
					soundOffButtons[i] = obj;
					obj.loadImages("sys" + (i ? "Off" : "On"));
					obj.left = 225 + 56 * i; //■
					obj.top = 351; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = svcBtn == soffs[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'soff';
					obj.soff = i;
					obj.prevBtn = i;
					if(select) svcBtn = i;
				}
			}

		/* --- テキスト設定 --- */
			
			if(Sliders[3] === void)// 「文字表示速度」スライダーを作成
			{
				var obj = new LSliderLayer(window, this);
				Sliders[3] = obj;
				obj.left     = 322; //■
				obj.top      = 447; //■
				obj.width    = 192; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.height   =  20; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.min      =   0;
				obj.max      = 120;
				obj.divi     =  10;
				obj.position = obj.max - chSpeed * 2;
				obj.visible  = true;
			}

			if(systemPageButton1 === void)//■システムページボタン作成
			{
				systemPageButton1 = new RButtonLayer(window, this);
				systemPageButton1.loadImages("button_system_go_to_page1");
				systemPageButton1.left = 800; //■
				systemPageButton1.top  = 50; //■
				systemPageButton1.focusable = true;
			}
			systemPageButton1.visible = true;
			
			if(chChangeFontButton === void)// 「フォント選択」ボタンを作成
			{
				chChangeFontButton = new RButtonLayer(window, this);
				chChangeFontButton.loadImages("sysFont");
				chChangeFontButton.left = 517; //■
				chChangeFontButton.top  = 491; //■
				chChangeFontButton.focusable = true;
			}
			chChangeFontButton.visible = true;
			
			fontTest();// フォント選択テスト
			
			if(chNoWaitButtons === void)// 「一括表示」ボタンを作成
			{
				chNoWaitButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var nowaits = [
						false, // ON
						true   // OFF
					];
					var obj = new RButtonLayer(window, this);
					chNoWaitButtons[i] = obj;
					obj.loadImages("sys" + (i ? "Off" : "On"));
					obj.left = 225 + 56 * i; //■
					obj.top = 541; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					if(i == 0) var select = kag.userChSpeed == 0 ? true : false;
					else var select = kag.userChSpeed != 0 ? true : false;
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'nowait';
					obj.nowait = i;
					obj.prevBtn = i;
					if(select) nwcBtn = i;
				}
			}
			
			if(skipModeButtons === void)// 「文章スキップ」ボタンを作成
			{
				var skips = [
					0,  // 全て
					1   // 既読のみ
				];
				skipModeButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var obj = new RButtonLayer(window, this);
					skipModeButtons[i] = obj;
					obj.loadImages("sysSkip" + (i ? "Mode" : "All"));
					obj.left = 453 + 56 * i; //■
					obj.top  = 541; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = owner.skip == skips[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'skip';
					obj.skip = i;
					obj.prevBtn = i;
					if(select) smcBtn = i;
				}
			}

		/* --- 環境設定 --- */
			
			if(displayButtons === void)// 「画面」ボタンを作成
			{
				var displays = [
					false, // ウィンドウ
					true   // フルスクリーン
				];
				displayButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var obj = new RButtonLayer(window, this);
					displayButtons[i] = obj;
					obj.loadImages("sysDisp" + (i ? "Full" : "Win"));
					obj.left = 885 + 108 * i; //■
					obj.top = 240; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = kag.fullScreened == displays[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'disp';
					obj.disp = i;
					obj.prevBtn = i;
					if(select) dcBtn = i;
				}
			}
			
			if(continueVoiceButtons === void)//■「次の音声再生まで音声継続する」ボタンを作成
			{
				var continues = [
					true, //■テキスト切り替えでストップしない（音声継続する）
					false //■テキスト切り替えでストップする（音声継続しない）
				];
				continueVoiceButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var obj = new RButtonLayer(window, this);
					continueVoiceButtons[i] = obj;
					obj.loadImages("sys" + (i ? "Off" : "On"));
					obj.left = 885 + 56 * i; //■
					obj.top  = 418; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = sf.continue_voice == continues[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'continue';
					obj.continue = i;
					obj.prevBtn = i;
					if(select) cvBtn = i;
				}
			}
			
			if(effectButtons === void)// 「画面効果」ボタンを作成
			{
				var effects = [
					true,  // ON
					false  // OFF
				];
				effectButtons = [];
				for(var i = 0; i < 2; i++)
				{
					var obj = new RButtonLayer(window, this);
					effectButtons[i] = obj;
					obj.loadImages("sys" + (i ? "Off" : "On"));
					obj.left = 885 + 56 * i; //■
					obj.top = 293; //■
					obj.focusable = true;
					// 現在選択されているボタンはクリック不可に
					var select = sf.effect == effects[i];
					obj.enabled = !select;
					obj.visible = true;
					obj.tag = 'eff';
					obj.eff = i;
					obj.prevBtn = i;
					if(select) ecBtn = i;
				}
			}
			
			if(Sliders[4] === void)// 「オートモード」スライダーを作成
			{
				var obj = new LSliderLayer(window, this);
				Sliders[4] = obj;
				obj.left     =  322; //■
				obj.top      =  600; //■
				obj.width    =  192; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.height   =   20; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.min      =    0;
				obj.max      = 4000;
				obj.divi     =   10;
				obj.position = obj.max - (kag.autoModePageWait - 400);
				obj.visible  = true;
			}
			
			if(Sliders[5] === void)// 「フレーム濃淡」スライダーを作成
			{
				var obj = new LSliderLayer(window, this);
				Sliders[5] = obj;
				obj.left     = 922; //■
				obj.top      = 352; //■
				obj.width    = 192; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.height   =  20; //■実際の稼動範囲はSlideBarファイルに依存する
				obj.min      =   0;
				obj.max      = 255;
				obj.divi     =  15;
				obj.position = sf.opacity;
				obj.visible  = true;
			}
			
			if(sVoButtons === void)// 「個別ボイス設定」ボタンを作成
			{
				sVoButtons = [];
				for(var i = 0; i < 13; i++) //0から12まで、13個繰り返し
				{
					var obj = new RButtonLayer(window, this);
					sVoButtons[i] = obj;
					obj.loadImages("setVoice" + i + int(sf.setVoice[i]));
					obj.left = 684 + 81 * (i < 6 ? i : i - 6); //■
					if(i==12) obj.left = 684; //■システムボイス12の場合の座標を指定
					obj.top  = i < 6 ? 469 : 539; //■
					if(i==12) obj.top  = 609; //■システムボイス12の場合の座標を指定
					obj.focusable = true; //フォーカスできるかか？

					// ■8や9の場合は利用不可。他は利用可能
					//if(i==8||i==9) obj.enabled = false;
					//else obj.enabled = true;

					obj.visible = true;
					//if(i==11 && sf.oni==0) obj.visible = false;// ■11かつ鬼瓦フラグ sf.oni==0の場合は表示させない
					obj.tag = 'svo';
					obj.svo = i;
					obj.prevBtn = i;
				}
			}

/*■
			// 「システムボイスの再生」ボタンを作成
			if(sVoPlayButton === void)
			{
				sVoPlayButton = new RButtonLayer(window, this);
				sVoPlayButton.loadImages("setVoice12" + int(sf.systemVoicePlay)); //■
				sVoPlayButton.left = 619; //■
				sVoPlayButton.top = 489; //■
				sVoPlayButton.focusable = true;
			}
			sVoPlayButton.visible = true;
■*/

		/* --- 操作ボタン --- */
			
			if(closeButton === void)// 「本編に戻る」ボタンを作成
			{
				closeButton = new RButtonLayer(window, this);
				closeButton.hint = "本編に戻る"; //■
				closeButton.left = 862; //■
				closeButton.top = 669; //■
				closeButton.focusable = true;
				closeButton.gray = true;
			}
			closeButton.loadImages("button_system_game");
			closeButton.enabled = f.AutoRepage;
			if(tf.from_title==1) closeButton.visible = false;//■タイトルから来た場合は表示しない
			else closeButton.visible = true;
			
			if(goToStartButton === void)// 「タイトルに戻る」ボタンを作成
			{
				goToStartButton = new RButtonLayer(window, this);
				goToStartButton.hint = "タイトルに戻る"; //■
				goToStartButton.left = 970; //■
				goToStartButton.top = 669; //■
				goToStartButton.focusable = true;
				goToStartButton.gray = true;
			}
			goToStartButton.loadImages("button_system_title");
			goToStartButton.enabled = kag.startAnchorEnabled;
			if(tf.from_title==1) goToStartButton.visible = true;//■タイトルから来た場合は表示する
			else goToStartButton.visible = false;

			if(exitButton === void)// 「終了」ボタンを作成
			{
				exitButton = new RButtonLayer(window, this);
				exitButton.loadImages("button_system_close");
				exitButton.hint = "ゲームを終了する"; //■
				exitButton.left = 1078; //■
				exitButton.top = 669; //■
				exitButton.focusable = true;
			}
			exitButton.visible = false;//■表示しない

/*
			function clearSystemPageButton()//■システムページボタンのクリア
			{
				if(SystemPageButton !== void)
				{
					for(var i = 0; i < systemPageButton.count; i++)
						invalidate systemPageButton[i];
					systemPageButton = void;
				}

				if(systemPageLayer !== void)
				{
					invalidate systemPageLayer;
					systemPageLayer = void;
				}
			}

			function makeSystemPageButton()//■システムページボタンを作成する
			{
				clearSystemPageButton();
				systemPageButton = [];
				for(var i = 0; i < 2; i++)
				{
					var obj = new RButtonLayer(window, this);
					systemPageButton[i] = obj;

					obj.loadImages("button_system_page" + (i + 1));//■
					obj.hint = "設定画面を変更する";
					obj.left = 500 + 300 * i;//■ページボタンのx座標
					obj.top = 50;//■ページボタンのy座標
					obj.focusable = true;
					obj.enabled = sf.systemPage != i;// 現在選択されているボタンはクリック不可
					obj.visible = true;
					obj.tag = 'page';
					if(i == 1) obj.systemPageBtn = systemPageButton[0];
					obj.page = i;
				}
			}

			function changeSystemPage(newpage)//■システムページを変更するとき
			{
				if(systemPageButton !== void)
				{
					systemPageButton[sf.systemPage].enabled = true;
					systemPageButton[newpage].enabled = false;
					sf.systemPage = newpage;
//					makeSaveDataItems();//■■ここが問題
					clearBase()
				}
			}

			if(systemPageButton === void)//■サウンド画面へのボタンを作成
			{
				systemPageButton = new RButtonLayer(window, this);
				systemPageButton.loadImages("button_system_sound");
				systemPageButton.hint = "設定画面を切り替える";
				systemPageButton.left = 1000;
				systemPageButton.top  = 50;/
				systemPageButton.focusable = true;
			}
			systemPageButton.visible = true;
*/
/*■いろいろテスト
			kag.fore.messages[5].setPosition(%[visible:true, frame:"window_sample", left:471, top:516,]);//■
			kag.fore.messages[6].setPosition(%[visible:true, frame:"",              left:471, top:516,]);//■
			kag.setCurrentMessageLayer(%[layer:'message6',page:'fore']);//■
			kag.fore.messages[6].clear();//■
			kag.fore.messages[6].font.height = 36;//■
			kag.fore.messages[6].font.face   = &kag.chDefaultFace;//■
			kag.current.processCh("间接之恋、JIANJIEZHILIAN");//■
			kag.fore.messages[6].drawText(5, 50, '间接之恋、JIANJIEZHILIAN', 0x000000, 255, true, 2000, 0xffffff, 5, 0, 0);
			drawSampleText(tf.text_speed);//■
			kag.callExtraConductor("text.ks", "*text");
*/

		}
	}

/*
	function makeSystemMenu2()//■システムメニューの表示試行
	{
		if(state != 0)
		{
			state = 0;
			clear();
//■			makeSystemPageButton();
			if(systemPageButton2 === void)//■システムページボタン作成
			{
				systemPageButton2 = new RButtonLayer(window, this);
				systemPageButton2.loadImages("button_system_go_to_page0");
				systemPageButton2.left = 800; //■
				systemPageButton2.top  = 50; //■
				systemPageButton2.focusable = true;
			}
			systemPageButton2.visible = true;
		}
	}
*/

	function selectFont()
	{
		// フォントを選択する
		kag.fore.base.font.face = kag.chDefaultFace;
		kag.fore.base.font.height = -20;
		var flags = fsfSameCharSet | fsfNoVertical | fsfTrueTypeOnly | fsfUseFontFace;
		if(kag.showFixedPitchOnlyInFontSelector) flags |= fsfFixedPitch;
		if(kag.fore.base.font.doUserSelect(flags, "字体选择",
			"请选择字体", "间接之恋、JIANJIEZHILIAN")) //■別ウインドウ
		{
			kag.chDefaultFace = kag.fore.base.font.face;//■
			kag.setMessageLayerUserFont();//■
			kag.saveSystemVariables();//■
			fontTest();// テスト表示更新
		}
	}

	function fontTest()// フォント選択テスト
	{
		var ff = font.face;
		var fh = font.height;
		clearBase();
		font.face = kag.chDefaultFace;
		font.height = 18; //■
		var str = "间接之恋"; //■
		var fx = ((160 - font.getTextWidth(str))>>1) + 500; //■
		var fy = ((20 - font.getTextHeight(str))>>1) + 600; //■
		drawText(fx, fy, str, 0x000000, 255, true, 2400, 0xffffff, 2, 0, 0);

		kag.setCurrentMessageLayer(%[layer:'message6',page:'fore']);//■
		kag.fore.messages[6].clear();//■
		kag.fore.messages[6].font.face   = &kag.chDefaultFace;//■
		kag.current.processCh("间接之恋、JIANJIEZHILIAN");//■

		font.face = ff;
		font.height = fh;
	}

	/* --- スライダー処理 --- */

	function sliderLayerChange(obj, pos)// スライダーの位置が変更されたとき
	{
		for (var i = 0; i < Sliders.count; i++)
		{
			if(obj == Sliders[i])
			{
				// 限界値でないとき
				if(obj.min != pos && obj.max != pos)
					sliderLimit[i] = false;

				// スライダーが表示されているとき、かつ、
				// 限界値にないときのみ変更時のアクションを呼ぶ
				if(obj.visible && !sliderLimit[i])
					changeAction(i, pos);

				// 限界値のとき
				if(obj.min == pos || obj.max == pos)
					sliderLimit[i] = true;

				break;
			}
		}
	}

	function changeAction(i, pos)
	{
		// スライダーが変更されたときに呼び出すアクション
		     if(i == 0) changeVoiceVolumeSlider(pos);  // 音量（ボイス）
		else if(i == 1) changeBgmVolumeSlider(pos);    // 音量（ＢＧＭ）
		else if(i == 2) changeSoundVolumeSlider(pos);  // 音量（効果音）
		else if(i == 3) changeTextSpeedSlider(i, pos); // 文字速度
		else if(i == 4) changeAutoSpeedSlider(i, pos); // オートモート
		else if(i == 5) changeFrameOpacitySlider(pos); // フレーム濃淡
	}

	function clearSliders()
	{
		if(Sliders[0] !== void)
		{
			// スライダーのクリア
			for(var i = 0; i < Sliders.count; i++)
				invalidate Sliders[i];

			Sliders = [];
		}
	}

	function changeVoiceVolumeSlider(pos)// 「音量（ボイス）」スライダーを変更するとき
	{
		voVolume = pos;
		if(vvcBtn) return;// ミュートの間は数値の代入だけして戻る

		// 現在の選択数値でボリュームをセット
		for(var i = 2; i < kag.numSEBuffers; i++)
		{
			if(sf.setVoice[i-1]) kag.se[i].setOptions(%[gvolume:voVolume]);
			else                 kag.se[i].setOptions(%[gvolume:0]);
		}
//■		playSysVoice(getSV.ren);// 再生テスト
	}

	function changeBgmVolumeSlider(pos)// 「音量（ＢＧＭ）」スライダーを変更するとき
	{
		bgmVolume = pos;

		// ミュートの間は数値の代入だけして戻る
		if(bvcBtn) return;

		// 現在の選択数値でボリュームをセット
		kag.bgm.setOptions(%[gvolume:bgmVolume]);
	}

	function changeSoundVolumeSlider(pos)
	{
		// 「音量（効果音）」スライダーを変更するとき
		seVolume = pos;

		// ミュートの間は数値の代入だけして戻る
		if(svcBtn) return;

		// 現在の選択数値でボリュームをセット
		kag.se[0].setOptions(%[gvolume:seVolume]);

		// 効果音テスト
//		playSound("seTest");
	}

	function changeTextSpeedSlider(i, pos)
	{
		// 「文字速度」スライダーを変更するとき
		chSpeed = int((Sliders[i].max - pos) / 2);

		// 一括表示の間は数値の代入だけして戻る
		if(!nwcBtn) return;

		kag.userChSpeed = tf.text_speed = chSpeed + 5;//■■
		kag.setUserSpeed();
	}

	function changeAutoSpeedSlider(i, pos)
	{
		// 「オートモード」スライダーを変更するとき
		kag.autoModePageWait = kag.autoModeLineWait = Sliders[i].max - pos + 400;
	}

	function changeFrameOpacitySlider(pos)
	{
		// 「フレーム濃淡」スライダーを変更するとき
		sf.opacity = pos;

		// 現在の選択数値で濃淡をセット
		kag.fore.messages[0].opacity = pos;
		kag.fore.messages[1].opacity = pos;
//■		kag.fore.messages[5].opacity = pos;
	}

	/* --- ON / OFF ボタン処理 --- */

	function changeButtons(obj, btn1, btn2)
	{
		// 選択ボタンの切替
		obj[btn1].enabled = true;
		obj[btn2].enabled = false;
	}

	function clearVoiceOffButtons()
	{
		// 「ミュート（ボイス）」ボタンのクリア
		if(voiceOffButtons !== void)
		{
			for(var i = 0; i < voiceOffButtons.count; i++)
				invalidate voiceOffButtons[i];

			voiceOffButtons = void;
		}
	}

	function changeVoiceOffButton(newbtn)
	{
		// 「ミュート（ボイス）」ボタンを変更するとき
		if(voiceOffButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(voiceOffButtons, vvcBtn, newbtn);
			vvcBtn = !vvcBtn;

			// モード選択の実行
			if(vvcBtn)
			{
				// ボリュームを 0 に
				for(var i = 1; i < kag.numSEBuffers; i++)
					kag.se[i].setOptions(%[gvolume:0]);
			}
			else if(!vvcBtn)
			{
				// 元のボリュームへ戻す
				for(var i = 1; i < kag.numSEBuffers; i++)
					if(sf.setVoice[i-1])
						kag.se[i].setOptions(%[gvolume:voVolume]);
			}
		}
	}

	function clearBgmOffButtons()
	{
		// 「ミュート（ＢＧＭ）」ボタンのクリア
		if(bgmOffButtons !== void)
		{
			for(var i = 0; i < bgmOffButtons.count; i++)
				invalidate bgmOffButtons[i];

			bgmOffButtons = void;
		}
	}

	function changeBgmOffButton(newbtn)
	{
		// 「ミュート（ＢＧＭ）」ボタンを変更するとき
		if(bgmOffButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(bgmOffButtons, bvcBtn, newbtn);
			bvcBtn = !bvcBtn;

			// モード選択の実行
			if(bvcBtn)
			{
				// 今のボリュームを退避
				bgmVolume = setBgmVolume();
				// ボリュームを 0 に
				kag.bgm.setOptions(%[gvolume:0]);
			}
			else if(!bvcBtn)
			{
				// 元のボリュームへ戻す
				kag.bgm.setOptions(%[gvolume:bgmVolume]);
			}
		}
	}

	function clearSoundOffButtons()
	{
		// 「ミュート（効果音）」ボタンのクリア
		if(soundOffButtons !== void)
		{
			for(var i = 0; i < soundOffButtons.count; i++)
				invalidate soundOffButtons[i];

			soundOffButtons = void;
		}
	}

	function changeSoundOffButton(newbtn)
	{
		// 「ミュート（効果音）」ボタンを変更するとき
		if(soundOffButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(soundOffButtons, svcBtn, newbtn);
			svcBtn = !svcBtn;

			// モード選択の実行
			if(svcBtn)
			{
				// 今のボリュームを退避
				seVolume = setSoundVolume();
				// ボリュームを 0 に
				kag.se[0].setOptions(%[gvolume:0]);
			}
			else if(!svcBtn)
			{
				// 元のボリュームへ戻す
				kag.se[0].setOptions(%[gvolume:seVolume]);
			}
		}
	}

	function clearChNoWaitButtons()
	{
		// 「一括表示」ボタンのクリア
		if(chNoWaitButtons !== void)
		{
			for(var i = 0; i < chNoWaitButtons.count; i++)
				invalidate chNoWaitButtons[i];

			chNoWaitButtons = void;
		}
	}

	function changeChNoWaitButton(newbtn)
	{
		// 「一括表示」ボタンを変更するとき
		if(chNoWaitButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(chNoWaitButtons, nwcBtn, newbtn);
			nwcBtn = newbtn;
			// モード選択の実行
			if(nwcBtn) kag.userChSpeed = chSpeed + 5;
				else chSpeed = kag.userChSpeed - 5, kag.userChSpeed = 0;
			kag.setUserSpeed();
		}
	}

	function clearDisplayButtons()
	{
		// 「画面」ボタンのクリア
		if(displayButtons !== void)
		{
			for(var i = 0; i < displayButtons.count; i++)
				invalidate displayButtons[i];

			displayButtons = void;
		}
	}

	function changeDisplayButton(newbtn)
	{
		// 「画面」ボタンを変更するとき
		if(displayButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(displayButtons, dcBtn, newbtn);
			dcBtn = newbtn;
			// モード選択の実行
			if(dcBtn) kag.fullScreenMenuItem.click();
				else kag.windowedMenuItem.click();
		}
	}

	function clearContinueVoiceButtons()
	{
		//■「次の音声再生まで音声継続する」ボタンのクリア
		if(continueVoiceButtons !== void)
		{
			for(var i = 0; i < continueVoiceButtons.count; i++)
				invalidate continueVoiceButtons[i];

			continueVoiceButtons = void;
		}
	}

	function changeContinueVoiceButton(newbtn)
	{
		//■「次の音声再生まで音声継続する」ボタンを変更するとき
		if(continueVoiceButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(continueVoiceButtons, cvBtn, newbtn);
			cvBtn = newbtn;
			// モード選択の実行
			sf.continue_voice = !cvBtn;
		}
	}

	function clearEffectButtons()
	{
		// 「画面効果」ボタンのクリア
		if(effectButtons !== void)
		{
			for(var i = 0; i < effectButtons.count; i++)
				invalidate effectButtons[i];

			effectButtons = void;
		}
	}

	function changeEffectButton(newbtn)
	{
		// 「画面効果」ボタンを変更するとき
		if(effectButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(effectButtons, ecBtn, newbtn);
			ecBtn = newbtn;
			// モード選択の実行
			sf.effect = !ecBtn;
		}
	}

	function clearSkipModeButtons()
	{
		// 「文章スキップ」ボタンのクリア
		if(skipModeButtons !== void)
		{
			for(var i = 0; i < skipModeButtons.count; i++)
				invalidate skipModeButtons[i];

			skipModeButtons = void;
		}
	}

	function changeSkipModeButton(newbtn)
	{
		// 「文章スキップ」ボタンを変更するとき
		if(skipModeButtons !== void)
		{
			// 選択ボタンの切替
			changeButtons(skipModeButtons, smcBtn, newbtn);
			// モード選択の実行
			owner.skip = smcBtn = newbtn;
		}
	}

	function clearSetVoiceButtons()
	{
		// 「個別ボイス設定」ボタンのクリア
		if(sVoButtons !== void)
		{
			for(var i = 0; i < sVoButtons.count; i++)
				invalidate sVoButtons[i];

			sVoButtons = void;
		}
	}

	function changeSetVoiceButton(i)
	{
		// 「個別ボイス設定」ボタンを変更するとき
		if(sVoButtons !== void)
		{
			// モード選択の実行
			sf.setVoice[i] = !sf.setVoice[i];

			if(!sf.setVoice[i])
			{
				// ボリュームを 0 に
				kag.se[i+1].setOptions(%[gvolume:0]);
			}
			else if(sf.setVoice[i])
			{
				// 元のボリュームへ戻す
				kag.se[i+1].setOptions(%[gvolume:voVolume]);
			}

			// 選択ボタンの切替
			sVoButtons[i].loadImages("setVoice" + i + int(sf.setVoice[i]));
		}
	}

/*■
	function changeSysVoPlayButton()// 「システムボイスの再生」ボタンを変更するとき
	{
		if(sVoPlayButton !== void)
		{
			sf.systemVoicePlay = !sf.systemVoicePlay;// モード選択の実行
			sVoPlayButton.loadImages("setVoice12" + int(sf.systemVoicePlay)); //■選択ボタンの切替
		}
	}
■*/

	/* --- 栞処理 --- */

	function clearSaveDataItems()// セーブデータ表示のクリア
	{
		if(saveDataItems !== void)
		{
			for(var i = 0; i < saveDataItems.count; i++)
				invalidate saveDataItems[i];
			saveDataItems = void;
			kag.setBookMarkMenuCaptions();
		}

		if(currentSaveDataLayer !== void)
		{
			invalidate currentSaveDataLayer;
			currentSaveDataLayer = void;
		}
	}

	function makeSaveDataItems()// セーブデータの表示
	{
		clearSaveDataItems();
		saveDataItems = [];
		for(var i = 0; i < 8; i++)//■0から始まるので注意
		{
			var obj = new SaveDataItemLayer(window, this, sf.currentPage * 8 + i, state);//■
			saveDataItems[i] = obj;
			obj.setPos(569, 172 + 57 * i);//■セーブデータ名表示の座標
			obj.absolute = owner.config.absolute + 2;
			obj.visible = true;
		}

		currentSaveDataLayer = new CurrentSaveDataLayer(window, this);// フォーカス用
		with(currentSaveDataLayer)
		{
			if(state==1) .loadImages("load_bar");//■ロード
			else         .loadImages("save_bar");//■セーブ
			.setSizeToImageSize();
			.setPos(saveDataItems[0].left, saveDataItems[0].top);
			.absolute = owner.config.absolute + 1;
			.visible = false;
		}
	}

	function clearPageButtons()// ページボタンのクリア
	{
		if(pageButtons !== void)
		{
			for(var i = 0; i < pageButtons.count; i++)
				invalidate pageButtons[i];
			pageButtons = void;
		}

		if(currentPageLayer !== void)
		{
			invalidate currentPageLayer;
			currentPageLayer = void;
		}
	}

	function makePageButtons()// ページボタンを作成する
	{
		clearPageButtons();
		pageButtons = [];
		for(var i = 0; i < 12; i++)
		{
			var obj = new RButtonLayer(window, this);
			pageButtons[i] = obj;

			if(state==1) obj.loadImages("button_load_page" + (i + 1));//■ロード
			else         obj.loadImages("button_save_page" + (i + 1));//■セーブ

			obj.left = 570 + 52 * i;//■ページボタンのx座標
			obj.top  = 82;//■ページボタンのy座標
			obj.focusable = true;
			// 現在選択されているボタンはクリック不可
			obj.enabled = sf.currentPage != i;
			obj.visible = true;
			obj.tag = 'page';
			if(i == 11) obj.pageBtn = pageButtons[0];
			obj.page = i;
		}
	}

	function changePage(newpage)
	{
		// ページを変更するとき
		if(pageButtons !== void)
		{
			pageButtons[sf.currentPage].enabled = true;
			pageButtons[newpage].enabled = false;
			sf.currentPage = newpage;
			makeSaveDataItems();
		}
	}

	function makeReturnButton()// 各種操作ボタンの作成
	{
		if(lsCloseButton === void)// 「本編に戻る」ボタン
		{
			lsCloseButton = new RButtonLayer(window, this);
			lsCloseButton.hint = "本編に戻る";//■
			lsCloseButton.left = 734;//■
			lsCloseButton.top  = 646;//■
			lsCloseButton.focusable = true;
			lsCloseButton.gray = true;
		}
		if(state==1) lsCloseButton.loadImages("button_load_game");//■ロード
		else         lsCloseButton.loadImages("button_save_game");//■セーブ

		lsCloseButton.enabled = f.AutoRepage;

		if(tf.from_title==1) lsCloseButton.visible = false;//■タイトルから来た場合は表示しない
		else                 lsCloseButton.visible = true;
		
		if(lsGoToStartButton === void)// 「タイトルに戻る」ボタン
		{
			lsGoToStartButton = new RButtonLayer(window, this);
			lsGoToStartButton.hint = "タイトルに戻る"; //■
			lsGoToStartButton.left = 894;//■
			lsGoToStartButton.top  = 646;//■
			lsGoToStartButton.focusable = true;
			lsGoToStartButton.gray = true;
		}
		if(state==1) lsGoToStartButton.loadImages("button_load_title");//■ロード
		else         lsGoToStartButton.loadImages("button_save_title");//■セーブ

		lsGoToStartButton.enabled = kag.startAnchorEnabled;
		lsGoToStartButton.visible = true;
		
		if(lsExitButton === void)// 「終了」ボタン
		{
			lsExitButton = new RButtonLayer(window, this);
			lsExitButton.hint = "ゲームを終了する";//■
			lsExitButton.left = 1054;//■
			lsExitButton.top  = 646;//■
			lsExitButton.focusable = true;
		}
		if(state==1) lsExitButton.loadImages("button_load_close");//■ロード
		else         lsExitButton.loadImages("button_save_close");//■セーブ

		if(tf.from_title==1) lsExitButton.visible = false;//■タイトルから来た場合は表示しない
		else                 lsExitButton.visible = true;
	}

	function makeLoadMenu()// 「ロード」メニュー
	{
		if(state != 1)
		{
			state = 1;
			clear();
			makeSaveDataItems(sf.currentPage);
			makeReturnButton();
			makePageButtons();
		}
	}

	function makeSaveMenu()// 「セーブ」メニュー
	{
		if(state != 2)
		{
			state = 2;
			clear();
			makeSaveDataItems(sf.currentPage);
			makeReturnButton();
			makePageButtons();
		}
	}

	function clear()// 画面上のボタン類をすべて非表示にするか、無効化する
	{
		clearBase();

		closeButton.visible = false if closeButton !== void;
		goToStartButton.visible = false if goToStartButton !== void;
		exitButton.visible = false if exitButton !== void;

		chChangeFontButton.visible = false if chChangeFontButton !== void;

		clearSliders();
		clearVoiceOffButtons();
		clearBgmOffButtons();
		clearSoundOffButtons();
		clearChNoWaitButtons();
		clearDisplayButtons();
		clearContinueVoiceButtons();
		clearEffectButtons();
		clearSkipModeButtons();
		clearSetVoiceButtons();

		sVoPlayButton.visible = false if sVoPlayButton !== void;

		lsCloseButton.visible = false if lsCloseButton !== void;
		lsGoToStartButton.visible = false if lsGoToStartButton !== void;
		lsExitButton.visible = false if lsExitButton !== void;

		clearSaveDataItems();
		clearPageButtons();

		systemPageButton1.visible = false if systemPageButton1 !== void;
		systemPageButton2.visible = false if systemPageButton2 !== void;

//■		clearSystemPageButton.visible = false if clearSystemPageButton !== void;
//■		clearSystemPageButtons();
	}

	function onButtonClick(sender)// ボタンが押されたとき
	{
		switch(sender)
		{
		case goToStartButton: // タイトルに戻る
		case lsGoToStartButton:
			if(f.AutoRepage)
			{
				kag.goToStartMenuItem.click();
				break;
			}
		case closeButton: // 本編に戻る
		case lsCloseButton:
//■			tf.backtosystem=0;//■
			owner.onConfigClose();
			break;
		case exitButton: // 終了
		case lsExitButton:
//■			playSysVoice(getSV.end);
			kag.process('sysBtn.ks', '*close');
			break;
		case chChangeFontButton: // フォント
			selectFont();
			break;
//■		case systemPageButton1:
//■			sf.systemPage=1;
//■			kag.process('rclick_tjs.ks', '*rclick_tjs');
//■				KAGWindow.onConductorJump(%[storage:"000.ks", target:"*startanchor"]);
//■			kag.onConductorJump(%[storage:"rclick_tjs.ks", target:"*rclick_tjs"]);
//■			kag.callExtraConductor("rclick_tjs.ks","rclick_tjs");
//■			RClickConfigPlugin();
//■			show();
//■			kag.unlockMessageLayerSelProcess();
//■			makeSystemMenu2();
//■			owner.onConfigClose2();
//■			RClickConfigLayer;
//■			clearBase();
//■			systemPageButton1.enabled = false;
//■			systemPageButton2.enabled = true;
//■			break;

//■		case systemPageButton2:
//■			sf.systemPage=0;
//■			kag.process('rclick_tjs.ks', '*rclick_tjs');
//■				KAGWindow.onConductorJump(%[storage:"000.ks", target:"*startanchor"]);
//■			kag.onJump(%[storage:"000.ks", target:"*startanchor"]);
//■			kag.onConductorJump(%[storage:"rclick_tjs.ks", target:"*rclick_tjs"]);
//■			kag.callExtraConductor("rclick_tjs.ks","rclick_tjs");
//■			RClickConfigPlugin();
//■			show();
//■			kag.unlockMessageLayerSelProcess();
//■			makeSystemMenu1();
//■			owner.onConfigClose2();
//■			RClickConfigLayer;
//■			clearBase();
//■			systemPageButton2.enabled = false;
//■			systemPageButton1.enabled = true;
//■			break;
		case sVoPlayButton: // システムボイスの再生
			changeSysVoPlayButton();
			break;
		default:
			if(sender.tag == 'page')//セーブページボタン
			{
				changePage(sender.page);
			}
//■			else if(sender.tag == 'systempage')//■システムページボタン
//■			{
//■				changeSystemPageButton(sender.systempage);//■システムページボタン
//■			}
			else if(sender.tag == 'voff')// ミュート（ボイス）
			{
				changeVoiceOffButton(sender.voff);
			}
			else if(sender.tag == 'boff')// ミュート（ＢＧＭ）
			{
				changeBgmOffButton(sender.boff);
			}
			else if(sender.tag == 'soff')// ミュート（効果音）
			{
				changeSoundOffButton(sender.soff);
			}
			else if(sender.tag == 'nowait')// 一括表示
			{
				changeChNoWaitButton(sender.nowait);
			}
			else if(sender.tag == 'disp')// 画面
			{
				changeDisplayButton(sender.disp);
			}
			else if(sender.tag == 'continue')//■次の音声再生まで音声継続する
			{
				changeContinueVoiceButton(sender.continue);
			}
			else if(sender.tag == 'eff')// 画面効果
			{
				changeEffectButton(sender.eff);
			}
			else if(sender.tag == 'skip')// 文章スキップ
			{
				changeSkipModeButton(sender.skip);
			}
			else if(sender.tag == 'svo')// 個別ボイス設定
			{
				changeSetVoiceButton(sender.svo);
			}
		}
	}

	function onLoadOrSave(num)// 番号 num をセーブまたはロード
	{
		if(state == 1)// ロード
		{
			if(kag.bookMarkDates[num] != '')
//■				playSysVoice(getSV.load);
			kag.loadBookMarkWithAsk(num);
		}
		else// セーブ
		{
//■			playSysVoice(getSV.save);
			if(kag.saveBookMarkWithAsk(num))
			{
				clearSaveDataItems();
				if(kag.scflags.bookMarkComments !== void)
					kag.scflags.bookMarkComments[num] = ''; // コメントは一応クリア
				makeSaveDataItems(); // 表示を更新
			}
		}
	}

	function show()// レイヤを表示する
	{
		visible = true;
		setMode();
		// オブジェクトのキーフォーカスはしない
		kag.focusedLayer = null;
		focusable = true;
		focus();
	}

	function hide()// レイヤを隠す
	{
		removeMode();
		visible = false;
		state = -1;
		clear();
	}

	function onKeyDown(key)// トランジション中
	{
		if(kag.transCount != 0)
		{
			// Enter キーまたはスペースキーが押されたらスキップ
			if(key == VK_RETURN || key == VK_SPACE)
				kag.stopAllTransitions();
			return;
		}
		
		if(checkRet()) return;// タイトルに戻ってる場合は無反応

		super.onKeyDown(...);
		
		if(key == VK_ESCAPE) owner.onConfigClose();// ESC キーが押されたら閉じる
	}

	function onMouseDown(x, y, button, shift)// トランジション中
	{
		if(kag.transCount != 0)
		{
			if(button == mbLeft) kag.stopAllTransitions();// 左クリックされたらスキップ
			return;
		}
		if(checkRet()) return;// タイトルに戻ってる場合は無反応
		if(button == mbRight) owner.onConfigClose();// 右クリックされたら閉じる
	}
}

class RClickConfigPlugin extends KAGPlugin  // 右クリック設定プラグイン
{
	var window; // ウィンドウへの参照
	var config; // 設定レイヤ
	var skip = 1; // 文章スキップ設定用フラグ

	// データが保存されているならスキップ設定の状態を読み込む
	if(kag.scflags.rcMenuSkipMode !== void)
		skip = kag.scflags.rcMenuSkipMode;

	function RClickConfigPlugin(window)// RClickPlugin コンストラクタ
	{
		super.KAGPlugin(); // スーパークラスのコンストラクタを呼ぶ
		this.window = window; // window への参照を保存する
	}

	function finalize()
	{
		invalidate config if config !== void;
		super.finalize(...);
	}

	function show()
	{
		// 表示
		if(config === void)
			config = new RClickConfigLayer(window, kag.fore.base, this);

		config.parent = window.fore.base; // 親を再設定
		config.absolute = 1004900;    //■重ね合わせ順

		if(tf.rclickMode == 1)      config.makeLoadMenu();// 直接「ロード」メニューを呼ぶ
		else if(tf.rclickMode == 2) config.makeSaveMenu();// 直接「セーブ」メニューを呼ぶ
		else if(sf.systemPage == 1) config.makeSystemMenu2();//■
		else                        config.makeSystemMenu1();// それ以外はシステムメニュー
		config.show();
	}

	function onConfigClose()// 設定レイヤが閉じるとき
	{
		closeConfig();
		tf.rclickMode = 0; // 呼び出しフラグを初期化
		window.trigger('config'); // 'config' トリガを発動する
	}
/*
	function onConfigClose2()//■コンフィグページの切り替えのため試行
	{
		closeConfig();
		tf.backtosystem=1;
		tf.rclickMode = 0; // 呼び出しフラグを初期化
		window.trigger('config'); // 'config' トリガを発動する
	}
*/
	function closeConfig()// 設定レイヤを閉じる
	{
		config.hide() if config !== void;
	}

	function onStore(f, elm)
	{
	}

	function onRestore(f, clear, elm)		// 栞を読み出すとき
	{
		closeConfig();
	}

	function onExchangeForeBack()// トランジションの終了時に表示されていたら閉じる
	{
		if(config !== void && config.visible) closeConfig();
	}

	function onSaveSystemVariables()// システム変数情報が保存されるとき
	{
		if(config !== void)
		{
			// 各種ボリューム
			kag.scflags.rcMenuVoiceVolume = config.voVolume;
			kag.scflags.rcMenuBgmVolume = config.bgmVolume;
			kag.scflags.rcMenuSoundVolume = config.seVolume;

			// ミュートボタンの状態
			kag.scflags.rcMenuVoiceOff = config.vvcBtn;
			kag.scflags.rcMenuBgmOff = config.bvcBtn;
			kag.scflags.rcMenuSoundOff = config.svcBtn;

			// 文字表示速度
			kag.scflags.rcMenuChSpeed = config.chSpeed;

			// 一括表示ボタンの状態
			kag.scflags.rcMenuChNoWait = config.nwcBtn;

			// スキップ設定
			kag.scflags.rcMenuSkipMode = skip;
		}
	}
}

kag.addPlugin(global.rc = new RClickConfigPlugin(kag));


//システム変数用設定、起動時に設定される
if(sf.opacity       ===void) sf.opacity       =255;//■
if(sf.effect        ===void) sf.effect        =1;//■
if(sf.continue_skip ===void) sf.continue_skip =1;//■
if(sf.continue_auto ===void) sf.continue_auto =1;//■
if(sf.face          ===void) sf.face          ='微软雅黑';//■
if(sf.bold          ===void) sf.bold          =0;//■
if(sf.edge          ===void) sf.edge          =1;//■
if(sf.shadow        ===void) sf.shadow        =0;//■
if(sf.shadowlevel   ===void) sf.shadowlevel   =4000;//■
if(sf.shadowwidth   ===void) sf.shadowwidth   =2;//■
if(sf.shadowofs     ===void) sf.shadowofs     =0;//■
if(sf.qload         ===void) sf.qload         =1;//■
if(sf.rclick        ===void) sf.rclick        =0;//■
if(sf.svoice        ===void) sf.svoice        =0;//■

if(sf.bgm===void)
	{
	kag.bgm.setOptions(%[gvolume:60]);
	sf.bgm=1;
	}


/* --- 既読・未読関係なくスキップさせるための処理 --- */
kag.getCurrentRead2 = kag.getCurrentRead;
kag.getCurrentRead = function()// 現在のラベルが既読か未読か判定
{
	var ret = getCurrentRead2();

	if(rc.skip == 0 && skipMode == 3) return true;//■元の行、全スキップ設定がＯＮでスキップ中のときのみラベルを既読扱いにする
//■	if(&sf.allskip && skipMode == 3) return true;//■スキップ設定、sf.sf.allskipがtrueなら全スキップ、falseなら既読のみをスキップ

	// それ以外は通常処理
	return ret;
}
incontextof kag;


@endscript
@endif
@return
