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
					choices = {"Octagon", "Arrow"},
				},
				ja = {
					title = "リフトタイプ", explanation = "リフトの形状を選択します。",
					choices = {"八角形", "矢印"},
				},
			},
			choices = {"Octagon", "Arrow"},
		},
		color_type = {
			translation = {
				en = {
					title = "Color Type", explanation = "Choose coloring method of note.",
					choices = {"Quantize", "Column", "Split", "Alternate", "Symmetric"},
				},
				ja = {
					title = "カラータイプ", explanation = "ノートの色付け方法を選択します。",
					choices = {"クォンタイズ", "列", "分割", "交互", "対称"},
				},
			},
			choices = {"Quantize", "Column", "Split", "Alternate", "Symmetric"},
		},
		scratch_side = {
			translation = {
				en = {
					title = "(beat) Scratch Side", explanation = "Choose side of scratch. If doubles chart, only affected to P1",
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
