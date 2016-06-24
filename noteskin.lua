--[[
	この作品はクリエイティブ・コモンズ・表示 - 継承 4.0 国際・ライセンスで
	提供されています。このライセンスのコピーを閲覧するには、
	http://creativecommons.org/licenses/by-sa/4.0/を訪問して下さい。

	This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
	International License. To view a copy of this license,
	visit http://creativecommons.org/licenses/by-sa/4.0/.
]]

return {
	notes = "notes.lua",
	layers = {"receptors.lua", "outlines.lua", "explosions.lua"},
	supports_all_buttons = false,
	buttons = {
		"Left", "Down", "Up", "Right",
		"UpLeft", "UpRight", "DownLeft", "DownRight", "Center",

		"FootUpLeft", "HandLrLeft", "HandUpLeft", "FootDown", "HandUpRight", "HandLrRight", "FootUpRight",
		"HandLeft", "FootDownLeft", "HandDown", "HandUp", "FootDownRight", "HandRight",

		"ParaLeft", "ParaUpLeft", "ParaUp", "ParaUpRight", "ParaRight",

		"scratch", "Key1", "Key2", "Key3", "Key4", "Key5", "Key6", "Key7",
		"Left White", "Left Yellow", "Left Green", "Left Blue", "Red", "Right Blue", "Right Green", "Right Yellow", "Right White",

		"DownLeftFoot", "LeftFoot", "UpLeftFoot", "UpLeftFist", "LeftFist", "DownLeftFist", "DownRightFist", "RightFist", "UpRightFist", "UpRightFoot", "RightFoot", "DownRightFoot",
	},
	fallback = "",
	player_colors = {
		{1, 0, 0.5, 1},
		{0, 0.5, 1, 1},
		{1, 1, 0, 1},
		{0, 1, 0, 1},
	},
	skin_parameters = {
		note_type = "Normal",
		lift_type = "Octagon",
		color_type = "Quantize",
		quanta_mode = "Default",
		quanta_multiply = "Default",
		color_values = {
			primary   = "Gray",
			secondary = "Blue",
			tertiary  = "Orange",
		},
		mine_color = false,
		scratch_side = "Left",
	},
	skin_parameter_info = {
		note_type = {
			translation = {
				en = {
					title = "Note Type", explanation = "Choose shape of note.",
					choices = {"Normal", "Bar (Narrow)", "Bar (Wide)", "Circle"},
				},
				ja = {
					title = "ノートタイプ", explanation = "ノートの形状を選択します。",
					choices = {"ノーマル", "バー (狭)", "バー (広)", "サークル"},
				},
			},
			choices = {"Normal", "Bar32", "Bar64", "Circle"},
		},
		lift_type = {
			translation = {
				en = {
					title = "Lift Type", explanation = "Choose shape of lifts.",
					choices = {"Octagon", "Ocragon (Colored)", "Arrow"},
				},
				ja = {
					title = "リフトタイプ", explanation = "リフトの形状を選択します。",
					choices = {"八角形", "八角形 (色付き)", "矢印"},
				},
			},
			choices = {"Octagon", "OctagonColored", "Arrow"},
		},
		color_type = {
			translation = {
				en = {
					title = "Color Type", explanation = "Choose coloring method of note.",
					choices = {"Quantize", "Column", "Split", "Alternate", "Symmetric", "Flat"},
				},
				ja = {
					title = "カラータイプ", explanation = "ノートの色付け方法を選択します。",
					choices = {"クォンタイズ", "列", "分割", "交互", "対称", "フラット"},
				},
			},
			choices = {"Quantize", "Column", "Split", "Alternate", "Symmetric", "Flat"},
		},
		quanta_mode = {
			translation = {
				en = {
					title = "Quanta Mode", explanation = "Choose quantize coloring mode.",
					choices = {"Default", "3.9 Note", "3.9 Solo", "4.0 Bold", "ITG", "DDR Note", "PIU Rhythm", "Mungyodance", "Pulsen Shapes"},
				},
				ja = {
					title = "クォンタモード", explanation = "クォンタイズの色付けモードを選択します。",
					choices = {"Default", "3.9 Note", "3.9 Solo", "4.0 Bold", "ITG", "DDR Note", "PIU Rhythm", "Mungyodance", "Pulsen Shapes"},
				},
			},
			choices = {"Default", "3.9", "Solo", "Bold", "ITG", "DDR", "PIU", "Mungyodance", "Pulsen"},
		},
		quanta_multiply = {
			translation = {
				en = {
					title = "Quanta Multiply", explanation = "Choose quantize multiplier.",
					choices = {"Default", "Halved", "Thirdsed", "Quartered"},
				},
				ja = {
					title = "クォンタ倍率", explanation = "クォンタイズの基準となる倍率を選択します。",
					choices = {"デフォルト", "2分の1", "3分の1", "4分の1"},
				},
			},
			choices = {"Default", "Halved", "Thirdsed", "Quartered"},
		},
		color_values = {
			translation = {
				en = {
					title = "Color values", explanation = "Set colors for Split, Alternate, Symmetric and Flat coloring.",
				},
				ja = {
					title = "カラーバリュー", explanation = "Split、Alternate、Symmetric、Flat用の色を設定します。",
				},
			},
			primary = {
				translation = {
					en = {
						title = "Primary", explanation = "Primary color for Split, Alternate, Symmetric and Flat coloring.",
						choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
					},
					ja = {
						title = "第1色", explanation = "Split、Alternate、Symmetric、Flat用の1番目の色です。",
						choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
					},
				},
				choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
			},
			secondary = {
				translation = {
					en = {
						title = "Secondary", explanation = "Secondary color for Split, Alternate and Symmetric coloring.",
						choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
					},
					ja = {
						title = "第2色", explanation = "Split、Alternate、Symmetric用の2番目の色です。",
						choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
					},
				},
				choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
			},
			tertiary  = {
				translation = {
					en = {
						title = "Tertiary", explanation = "Tertiary color for Split coloring.",
						choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
					},
					ja = {
						title = "第3色", explanation = "Split用の3番目の色です。",
						choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
					},
				},
				choices = {"Red", "Blue", "Green", "Yellow", "Purple", "Teal", "Magenta", "LightGreen", "Gray", "Orange"},
			},
		},
		mine_color = {
			translation = {
				en = {
					title = "Mine Color", explanation = "Choose if mines to be colored same as normal notes.",
				},
				ja = {
					title = "マインカラー", explanation = "マインノートを通常ノートと同じように色分けするか選択します。",
				},
			},
			type = "bool",
		},
		scratch_side = {
			translation = {
				en = {
					title = "(beat) Scratch Side", explanation = "Choose side of scratch. If doubles chart, only affected to P1.",
					choices = {"Left", "Right"},
				},
				ja = {
					title = "(beat) スクラッチサイド", explanation = "スクラッチの位置を選択します。\nダブル譜面の場合、P1側のみ影響します。",
					choices = {"左側", "右側"},
				},
			},
			choices = {"Left", "Right"},
		},
	},
};
