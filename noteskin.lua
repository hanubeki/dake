return {
	notes = "notes.lua",
	layers = {"receptors.lua", "explosions.lua"},
	supports_all_buttons = false,
	buttons = {
		"Left", "Down", "Up", "Right",
		"UpLeft", "UpRight", "DownLeft", "DownRight", "Center",

		"FootUpLeft", "HandLrLeft", "HandUpLeft", "FootDown", "HandUpRight", "HandLrRight", "FootUpRight",
		"HandLeft", "FootDownLeft", "HandDown", "HandUp", "FootDownRight", "HandRight",

		"ParaLeft", "ParaUpLeft", "ParaUp", "ParaUpRight", "ParaRight",

		"Scratch", "Scratch up", "Scratch down", "Key1", "Key2", "Key3", "Key4", "Key5", "Key6", "Key7",
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
		color_type = "Quantize",
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
	},
};
