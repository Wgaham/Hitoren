@if exp="typeof(global.savesanywhere_object) == 'undefined'"
@iscript

// どこでもセーブプラグイン

class SavesAnywherePlugin extends KAGPlugin
{
	var window; // ウィンドウへの参照

	var currentStorage; // 実行中のシナリオ
	var currentLine; // 実行中のシナリオの行数

	var laNormal = true; // ラベルの種別フラグ
	var laAnywhere = false; // 予備フラグ

	var saveTitle; // 栞タイトル

	function SavesAnywherePlugin(window)
	{
		super.KAGPlugin();
		this.window = window;

		// 既読ラベルの記録を行う設定のとき
		if(window.autoRecordPageShowing)
		{
			/* --- ラベル通過処理の書き換え --- */
			window.onConductorLabel_org = window.onConductorLabel;
			window.onConductorLabel = function(label, page)
			{
				with(global.savesanywhere_object)
				{
					// どこでもセーブ用ラベルの既読を記録する前に、
					// 右クリックや extraCondutor のサブルーチンに入ったとき
					if(usingExtraConductor && !.laNormal) .laAnywhere = true;

					// laNormal =  true : 通常ラベル
					// laNormal = false : どこでもセーブ用ラベル
					.laNormal = (conductor.curStorage != "SavesAnywhere.ks");
				}

				// 本来の処理を実行
				return onConductorLabel_org(...);
			}
			incontextof window;

			/* --- call タグの処理の書き換え --- */
			window.onConductorCall_org = window.onConductorCall;
			window.onConductorCall = function(elm)
			{
				// どこでもセーブ用ラベルの既読を記録する前に、
				// 通常のラベルが呼ばれたとき
				with(global.savesanywhere_object)
					if(!.laNormal && elm.storage != "SavesAnywhere.ks")
						.laAnywhere = true;

				// 本来の処理を実行
				return onConductorCall_org(...);
			}
			incontextof window;

			/* --- return タグの処理の書き換え --- */
			window.onConductorReturn_org = window.onConductorReturn;
			window.onConductorReturn = function(elm)
			{
				// 本来の処理を実行
				var ret = onConductorReturn_org(...);

				with(global.savesanywhere_object)
				{
					// 最後の return が実行されるとき、かつ、
					// 直前がどこでもセーブ用ラベルだった場合は、
					// ラベルの種別フラグを元に戻す
					if(conductor.callStackDepth == 1 && .laAnywhere)
					{
						.laNormal = false;
						return ret;
					}

					// 本来の処理で false が返されたとき、かつ、
					// どこでもセーブ用ラベルの場合のみ、
					// ラベル設定を実行中のシナリオ＋行数の形に変換
					if(!ret && !.laNormal) .changeState();
				}

				return ret;
			}
			incontextof window;

			/* --- return タグの実行後処理の書き換え --- */
			window.onConductorAfterReturn_org = window.onConductorAfterReturn;
			window.onConductorAfterReturn = function()
			{
				with(global.savesanywhere_object)
				{
					// 通常ラベルのときは本来の処理を実行
					if(.laNormal)
					{
						onConductorAfterReturn_org();
						return;
					}

					// どこでもセーブ用ラベルのとき
					// ラベル設定を実行中のシナリオ＋行数の形に変換
					.changeState();

					// スキップ解除の判定処理
					setUserSpeed();
					if(!getCurrentRead() && skipMode != 4)
						cancelSkip(); // 未読なのでスキップを停止
				}
			}
			incontextof window;

			/* --- ラベル設定処理の書き換え --- */
			window.setRecordLabel_org = window.setRecordLabel;
			window.setRecordLabel = function(storage, label)
			{
				with(global.savesanywhere_object)
				{
					// どこでもセーブ用ラベルを処理するとき
					// または、どこでもセーブ用ラベルの既読を記録する前に、
					// メインコンダクタで通常のラベルが呼ばれた後
					if(storage == "SavesAnywhere.ks"
						|| !usingExtraConductor &&
							conductor.callStackDepth == 0 && .laAnywhere)
					{
						// 実行中のシナリオ＋行数の形に変換
						var state = .setState();
						storage = state[0], label = state[1];

						// フラグを OFF に
						if(.laAnywhere) .laAnywhere = false;
					}
				}

				// 本来の処理を実行
				setRecordLabel_org(storage, currentLabel = label);
			}
			incontextof window;
		}
	}

	function finalize
	{
		super.finalize(...);
	}

	function getState
	{
		// 既読ラベルの記録を行わない設定のときは何もしない
		if(!window.autoRecordPageShowing) return;

		// 直前のラベルを既読にする
		window.incRecordLabel(true);

		// 実行中のシナリオ名を保持
		currentStorage = window.conductor.curStorage;

		// 実行中の行数をラベルに追加する番号にする
		currentLine = window.conductor.curLine;
	}

	function setState
	{
		// 実行中のシナリオ＋行数の形に変換
		return [currentStorage, "*label" + currentLine];
	}

	function changeState
	{
		// ラベル設定の変換実行
		var state = setState();
		window.setRecordLabel(state[0], window.currentLabel = state[1]);
	}

	function setOptions(elm)
	{
		// どこでもセーブ用ラベルの設定

		// [labelopt title="栞タイトル"]
		saveTitle = elm.title if elm.title !== void;
	}

	function onStore(f)
	{
		// 栞を保存するとき
		if(window.autoRecordPageShowing) // 既読ラベルの記録を行う場合のみ
		{
			// f.savesAnywhere に辞書配列を作成して保存
			var dic = f.savesAnywhere = %[];
			dic.storage = currentStorage;
			dic.line = currentLine;
			dic.title = saveTitle;
			dic.label = laNormal;
			dic.sub = laAnywhere;
		}
	}

	function onRestore(f)
	{
		// 栞を読み出すとき
		if(window.autoRecordPageShowing) // 既読ラベルの記録を行う場合のみ
		{
			var dic = f.savesAnywhere;
			if(dic === void)
			{
				// 情報が栞に保存されていない
				currentStorage = "";
				currentLine = "";
				saveTitle = "";
				laNormal = true;
				laAnywhere = false;
			}
			else
			{
				// 情報が栞に保存されている
				currentStorage = dic.storage;
				currentLine = dic.line;
				saveTitle = dic.title;
				laNormal = dic.label;
				laAnywhere = dic.sub;
			}
		}
	}
}

kag.addPlugin(global.savesanywhere_object = new SavesAnywherePlugin(kag));
	// プラグインオブジェクトを作成し、登録する

@endscript
@endif
;
; ラベル読み込み用マクロ
@macro name="awsave"
@eval exp="savesanywhere_object.getState()"
@call storage="SavesAnywhere.ks" target="*label"
@endmacro
;
; ラベル設定用マクロ
@macro name="labelopt"
@eval exp="savesanywhere_object.setOptions(mp)"
@endmacro
;
@return

; どこでもセーブ用ラベル
*label|&global.savesanywhere_object.saveTitle
@return countpage=false
