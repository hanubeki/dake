--[[
	この作品はクリエイティブ・コモンズ・表示 - 継承 4.0 国際・ライセンスで
	提供されています。このライセンスのコピーを閲覧するには、
	http://creativecommons.org/licenses/by-sa/4.0/を訪問して下さい。

	This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
	International License. To view a copy of this license,
	visit http://creativecommons.org/licenses/by-sa/4.0/.
]]

local skin_name = Var("skin_name");
return function(button_list, stepstype, skin_parameters)
	-- Image and rotation/flip table for buttons and note type
	local buttonInfoTable = {
		-- dance, pump, techno
		["Up"] = {
			tap         = {image = "down", rotZ = 180, rotY = 0},
			hold        = {image = "down", flip = "TexCoordFlipMode_Y"},
			holdReverse = {image = "down", flip = "TexCoordFlipMode_None"},
			roll        = {image = "up", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "down", flip = "TexCoordFlipMode_None"},
		},
		["Down"] = {
			tap         = {image = "down", rotZ = 0, rotY = 0},
			hold        = {image = "down", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "down", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "down", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "up", flip = "TexCoordFlipMode_None"},
		},
		["Left"] = {
			tap         = {image = "down", rotZ = 90, rotY = 0},
			hold        = {image = "left", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "left", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "left", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "left", flip = "TexCoordFlipMode_None"},
		},
		["Right"] = {
			tap         = {image = "down", rotZ = 270, rotY = 0},
			hold        = {image = "left", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "left", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "left", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "left", flip = "TexCoordFlipMode_X"},
		},
		["UpLeft"] = {
			tap         = {image = "upleft", rotZ = 0, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "upleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "downleft", flip = "TexCoordFlipMode_None"},
		},
		["UpRight"] = {
			tap         = {image = "upleft", rotZ = 90, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "upleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "downleft", flip = "TexCoordFlipMode_X"},
		},
		["DownLeft"]  = {
			tap         = {image = "upleft", rotZ = 270, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_Y"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_None"},
			roll        = {image = "downleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "upleft", flip = "TexCoordFlipMode_None"},
		},
		["DownRight"] = {
			tap         = {image = "upleft", rotZ = 180, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_XY"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_X"},
			roll        = {image = "downleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "upleft", flip = "TexCoordFlipMode_X"},
		},
		["Center"] = {
			tap         = {image = "center", rotZ = 0, rotY = 0},
			hold        = {image = "center", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "center", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "center", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "center", flip = "TexCoordFlipMode_None"},
		},
		-- para
		["ParaUp"] = {
			tap         = {image = "paraup", rotZ = 0, rotY = 0},
			hold        = {image = "paraup", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "paraup", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "paraup", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "paradown", flip = "TexCoordFlipMode_None"},
		},
		["ParaLeft"] = {
			tap         = {image = "paraup", rotZ = 270, rotY = 0},
			hold        = {image = "paraleft", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "paraleft", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "paraleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		},
		["ParaRight"] = {
			tap         = {image = "paraup", rotZ = 90, rotY = 0},
			hold        = {image = "paraleft", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "paraleft", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "paraleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		},
		["ParaUpLeft"]  = {
			tap         = {image = "paraupleft", rotZ = 0, rotY = 0},
			hold        = {image = "paraupleft", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "paraupleft", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "paraupleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "paradownleft", flip = "TexCoordFlipMode_None"},
		},
		["ParaUpRight"] = {
			tap         = {image = "paraupleft", rotZ = 90, rotY = 0},
			hold        = {image = "paraupleft", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "paraupleft", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "paraupleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "paradownleft", flip = "TexCoordFlipMode_X"},
		},
		-- ez2, ds3ddx
		["FootDown"] = {
			tap         = {image = "down", rotZ = 0, rotY = 0},
			hold        = {image = "down", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "down", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "down", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "up", flip = "TexCoordFlipMode_None"},
		},
		["FootUpLeft"] = {
			tap         = {image = "upleft", rotZ = 0, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "upleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "downleft", flip = "TexCoordFlipMode_None"},
		},
		["FootUpRight"] = {
			tap         = {image = "upleft", rotZ = 90, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "upleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "downleft", flip = "TexCoordFlipMode_X"},
		},
		["FootDownLeft"]  = {
			tap         = {image = "upleft", rotZ = 270, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_Y"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_None"},
			roll        = {image = "downleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "upleft", flip = "TexCoordFlipMode_None"},
		},
		["FootDownRight"] = {
			tap         = {image = "upleft", rotZ = 180, rotY = 0},
			hold        = {image = "upleft", flip = "TexCoordFlipMode_XY"},
			holdReverse = {image = "upleft", flip = "TexCoordFlipMode_X"},
			roll        = {image = "downleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "upleft", flip = "TexCoordFlipMode_X"},
		},
		["HandUp"] = {
			tap         = {image = "handdown", rotZ = 180, rotY = 0},
			hold        = {image = "handdown", flip = "TexCoordFlipMode_Y"},
			holdReverse = {image = "handdown", flip = "TexCoordFlipMode_None"},
			roll        = {image = "handup", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "handdown", flip = "TexCoordFlipMode_None"},
		},
		["HandDown"] = {
			tap         = {image = "handdown", rotZ = 0, rotY = 0},
			hold        = {image = "handdown", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "handdown", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "handdown", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "handup", flip = "TexCoordFlipMode_None"},
		},
		["HandLeft"] = {
			tap         = {image = "handleft", rotZ = 0, rotY = 0},
			hold        = {image = "handleft", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "handleft", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "handleft", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "handleft", flip = "TexCoordFlipMode_None"},
		},
		["HandRight"] = {
			tap         = {image = "handleft", rotZ = 180, rotY = 0},
			hold        = {image = "handleft", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "handleft", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "handleft", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "handleft", flip = "TexCoordFlipMode_X"},
		},
		["HandUpLeft"] = {
			tap         = {image = "circle", rotZ = 0, rotY = 0},
			hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
		},
		["HandUpRight"] = {
			tap         = {image = "circle", rotZ = 0, rotY = 0},
			hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
		},
		["HandLrLeft"] = {
			tap         = {image = "circle", rotZ = 0, rotY = 0},
			hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
		},
		["HandLrRight"] = {
			tap         = {image = "circle", rotZ = 0, rotY = 0},
			hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
		},
		-- kb7, beat
		["Key1"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["Key2"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["Key3"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["Key4"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["Key5"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["Key6"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["Key7"] = {
			tap         = {image = "key", rotZ = 0, rotY = 0},
			hold        = {image = "key", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "key", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
		},
		["scratch"] = {
			tap         = {image = "scratch", rotZ = 0, rotY = 0},
			hold        = {image = "scratch", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "scratch", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "scratch", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "scratch", flip = "TexCoordFlipMode_None"},
		},
		-- popn
		["Left White"] = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Left Yellow"]  = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Left Green"] = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Left Blue"] = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Red"] = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Right Blue"] = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Right Green"]  = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Right Yellow"] = {
			tap         = {image = "burger", rotZ = 0, rotY = 0},
			hold        = {image = "burger", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		["Right White"]  = {
			tap         = {image = "burger", flip = "TexCoordFlipMode_None"},
			hold        = {image = "burger", rotZ = 0, rotY = 0},
			holdReverse = {image = "burger", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "burger", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "burger", flip = "TexCoordFlipMode_None"},
		},
		-- kickbox
		["DownLeftFoot"]  = { -- Down: blue
			tap         = {image = "rightfoot", rotZ = 0, rotY = 180}, -- Down: blue
			hold        = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "rightfoot", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "reverserightfoot", flip = "TexCoordFlipMode_X"},
		},
		["LeftFoot"] = { -- Any:  yellow
			tap         = {image = "rightfoot", rotZ = 0, rotY = 180}, -- Any:  yellow
			hold        = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "rightfoot", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "reverserightfoot", flip = "TexCoordFlipMode_X"},
		},
		["UpLeftFoot"] = { -- Up:   red
			tap         = {image = "rightfoot", rotZ = 0, rotY = 180}, -- Up:   red
			hold        = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "rightfoot", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "reverserightfoot", flip = "TexCoordFlipMode_X"},
		},
		["UpLeftFist"] = {
			tap         = {image = "rightfist", rotZ = 0, rotY = 180},
			hold        = {image = "rightfist", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "rightfist", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "rightfist", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "reverserightfist", flip = "TexCoordFlipMode_X"},
		},
		["LeftFist"] = {
			tap         = {image = "rightfist", rotZ = 0, rotY = 180},
			hold        = {image = "rightfist", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "rightfist", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "rightfist", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "reverserightfist", flip = "TexCoordFlipMode_X"},
		},
		["DownLeftFist"]  = {
			tap         = {image = "rightfist", rotZ = 0, rotY = 180},
			hold        = {image = "rightfist", flip = "TexCoordFlipMode_X"},
			holdReverse = {image = "rightfist", flip = "TexCoordFlipMode_XY"},
			roll        = {image = "rightfist", flip = "TexCoordFlipMode_X"},
			rollReverse = {image = "reverserightfist", flip = "TexCoordFlipMode_X"},
		},
		["DownRightFist"] = {
			tap         = {image = "rightfist", rotZ = 0, rotY = 0},
			hold        = {image = "rightfist", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "rightfist", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "rightfist", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "reverserightfist", flip = "TexCoordFlipMode_None"},
		},
		["RightFist"] = {
			tap         = {image = "rightfist", rotZ = 0, rotY = 0},
			hold        = {image = "rightfist", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "rightfist", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "rightfist", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "reverserightfist", flip = "TexCoordFlipMode_None"},
		},
		["UpRightFist"] = {
			tap         = {image = "rightfist", rotZ = 0, rotY = 0},
			hold        = {image = "rightfist", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "rightfist", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "rightfist", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "reverserightfist", flip = "TexCoordFlipMode_None"},
		},
		["UpRightFoot"] = {
			tap         = {image = "rightfoot", rotZ = 0, rotY = 0},
			hold        = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "rightfoot", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "reverserightfoot", flip = "TexCoordFlipMode_None"},
		},
		["RightFoot"] = {
			tap         = {image = "rightfoot", rotZ = 0, rotY = 0},
			hold        = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "rightfoot", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "reverserightfoot", flip = "TexCoordFlipMode_None"},
		},
		["DownRightFoot"] = {
			tap         = {image = "rightfoot", rotZ = 0, rotY = 0},
			hold        = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
			holdReverse = {image = "rightfoot", flip = "TexCoordFlipMode_Y"},
			roll        = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
			rollReverse = {image = "reverserightfoot", flip = "TexCoordFlipMode_None"},
		},
	};

	setmetatable(buttonInfoTable, {
		__index = function(table, key, value)
			return {
				tap         = {image = "fallback", rotZ = 0, rotY = 0},
				hold        = {image = "fallback", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "fallback", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "fallback", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "fallback", flip = "TexCoordFlipMode_None"},
			};
		end
	});

	-- Size table for StepsType and column
	local columnSizeTable = {
		-- dance: 64 per column
		StepsType_Dance_Single = {
			width = {64, 64, 64, 64},
		},
		StepsType_Dance_Double = {
			width = {64, 64, 64, 64, 64, 64, 64, 64},
		},
		StepsType_Dance_Couple = {
			width = {64, 64, 64, 64, 64, 64, 64, 64},
		},
		StepsType_Dance_Solo = {
			width = {64, 48, 64, 64, 48, 64},
			-- position = {-96, -96, -32, 32, 96, 96}, -- uncomment for PS3/Wii style solo
		},
		StepsType_Dance_Threepanel = {
			width = {64, 64, 64},
		},
		StepsType_Dance_Routine = {
			width = {64, 64, 64, 64, 64, 64, 64, 64},
		},

		-- pump: 50 per column (2 double margin)
		StepsType_Pump_Single = {
			width = {50, 50, 50, 50, 50},
		},
		StepsType_Pump_Halfdouble = {
			width = {50, 50, 50, 50, 50, 50},
			position = {-126, -76, -26, 26, 76, 126},
		},
		StepsType_Pump_Double = {
			width = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
			position = {-226, -176, -126, -76, -26, 26, 76, 126, 176, 226},
		},
		StepsType_Pump_Couple = {
			width = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
		},
		StepsType_Pump_Routine = {
			width = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
			position = {-226, -176, -126, -76, -26, 26, 76, 126, 176, 226},
		},

		-- kb7: 64 per column
		StepsType_Kb7_Single = {
			width = {64, 64, 64, 64, 64, 64, 64},
		},

		-- ez2: inaccurate
		StepsType_Ez2_Single = {
			width = {44, 44, 44, 44, 44},
		},
		StepsType_Ez2_Double = {
			width = {44, 44, 44, 44, 44, 44, 44, 44, 44, 44},
		},
		StepsType_Ez2_Real = {
			width = {44, 44, 44, 44, 44, 44, 44},
			padding = {0, -24, 0, 0, 0, -24, 0},
		},

		-- para: 55 per column
		StepsType_Para_Single = {
			width = {55, 55, 55, 55, 55},
		},

		-- ds3ddx: inaccurate, overlap HandUp/HandDown
		StepsType_Ds3ddx_Single = {
			width = {36, 44, 44, 40, 40, 44, 44, 36},
			position = {-126, -86, -42, 0, 0, 42, 86, 126},
		},

		-- beat: scratch = 64, key = 32 (SM5 style)
		StepsType_Beat_Single5 = {
			width = {64, 32, 32, 32, 32, 32},
		},
		StepsType_Beat_Versus5 = {
			width = {64, 32, 32, 32, 32, 32},
		},
		StepsType_Beat_Double5 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		},
		StepsType_Beat_Single7 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32},
		},
		StepsType_Beat_Versus7 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32},
		},
		StepsType_Beat_Double7 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		},

		-- bm: alias for beat
		StepsType_Bm_Single5 = {
			width = {64, 32, 32, 32, 32, 32},
		},
		StepsType_Bm_Versus5 = {
			width = {64, 32, 32, 32, 32, 32},
		},
		StepsType_Bm_Double5 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		},
		StepsType_Bm_Single7 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32},
		},
		StepsType_Bm_Versus7 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32},
		},
		StepsType_Bm_Double7 = {
			width = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		},

		-- maniax: 32 per column (4 double margin)
		StepsType_Maniax_Single = {
			width = {32, 32, 32, 32},
		},
		StepsType_Maniax_Double = {
			width = {32, 32, 32, 32, 32, 32, 32, 32},
			position = {-114, -82, -50, -18, 18, 50, 82, 114},
		},

		-- techno: inaccurate
		StepsType_Techno_Single4 = {
			width = {70, 70, 70, 70},
		},
		StepsType_Techno_Single5 = {
			width = {56, 56, 56, 56, 56},
		},
		StepsType_Techno_Single8 = {
			width = {56, 56, 56, 56, 56, 56, 56, 56},
			-- position = {-96, -96, -96, -32, 32, 96, 96, 96}, -- uncomment for DDR's PS3/Wii style
		},
		StepsType_Techno_Double4 = {
			width = {70, 70, 70, 70, 70, 70, 70, 70},
		},
		StepsType_Techno_Double5 = {
			width = {56, 56, 56, 56, 56, 56, 56, 56, 56, 56},
		},
		StepsType_Techno_Double8 = {
			width = {56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56},
			-- position = {-224, -224, -224, -160, -96, -32, -32, -32, 32, 32, 32, 96, 160, 224, 224, 224}, -- uncomment for DDR's PS3/Wii style
		},

		-- popn: not stretched in 5-button mode
		StepsType_Popn_Five = {
			width = {32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36}
			padding = {2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2}
		},
		StepsType_Popn_Nine = {
			width = {32, 32, 32, 32, 32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36, 30, 36, 30, 36}
			padding = {2, 2, 2, 2, 2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2, 0, 2, 0, 2}
		},

		-- pnm: alias for popn
		StepsType_Pnm_Five = {
			width = {32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36}
			padding = {2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2}
		},
		StepsType_Pnm_Nine = {
			width = {32, 32, 32, 32, 32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36, 30, 36, 30, 36}
			padding = {2, 2, 2, 2, 2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2, 0, 2, 0, 2}
		},

		-- lights: is not game
		StepsType_Lights_Cabinet = {
			width = {64, 64, 64, 64, 64, 64, 64, 64},
		},

		-- kickbox: 64 per column
		StepsType_Kickbox_Human = {
			width = {64, 64, 64, 64},
		},
		StepsType_Kickbox_Quadarm = {
			width = {64, 64, 64, 64},
		},
		StepsType_Kickbox_Insect = {
			width = {64, 64, 64, 64, 64, 64},
		},
		StepsType_Kickbox_Arachnid = {
			width = {64, 64, 64, 64, 64, 64, 64, 64},
		},
	};

	setmetatable(columnSizeTable, {
		__index = function(table, key, value)
			return {
				width = {},
			};
		end
	});

	-- Column position table for beat-*
	local beatColumnPositionTable = {
		StepsType_Bm_Single5 = {
			Left = {-80, -32, 0, 32, 64, 96},
			Right = {80, -96, -64, -32, 0, 32},
		},
		StepsType_Bm_Versus5 = {
			Left = {-80, -32, 0, 32, 64, 96},
			Right = {80, -96, -64, -32, 0, 32},
		},
		StepsType_Bm_Double5 = {
			Left = {-224, -176, -144, -112, -80, -48, 48, 80, 112, 144, 176, 224},
			Right = {-64, -240, -208, -176, -144, -112, 48, 80, 112, 144, 176, 224},
		},
		StepsType_Bm_Single7 = {
			Left = {-112, -64, -32, 0, 32, 64, 96, 128},
			Right = {112, -128, -96, -64, -32, 0, 32, 64},
		},
		StepsType_Bm_Versus7 = {
			Left = {-112, -64, -32, 0, 32, 64, 96, 128},
			Right = {112, -128, -96, -64, -32, 0, 32, 64},
		},
		StepsType_Bm_Double7 = {
			Left = {-288, -240, -208, -176, -144, -112, -80, -48, 48, 80, 112, 144, 176, 208, 240, 288},
			Right = {-64, -304, -272, -240, -208, -176, -144, -112, 48, 80, 112, 144, 176, 208, 240, 288},
		},
	};

--[[
Column Color Reference (+1 for white outline):
	 1: Red
	 3: Blue
	 5: Green
	 7: Yellow
	 9: Purple
	11: Teal
	13: Magenta
	15: LightGreen
	17: Gray
	19: Orange
	21: Reserved
	23: Reserved
	25: Reserved
	27: Reserved
	29: Reserved
	31: Reserved
]]
	-- Column color table for StepsTypes
	local columnColorTable = {
		-- dance
		StepsType_Dance_Single = {3, 13, 13, 3},
		StepsType_Dance_Double = {3, 13, 13, 3, 3, 13, 13, 3},
		StepsType_Dance_Couple = {3, 13, 13, 3, 3, 13, 13, 3},
		StepsType_Dance_Solo = {3, 5, 13, 13, 5, 3},
		StepsType_Dance_Threepanel = {5, 13, 5},
		StepsType_Dance_Routine = {3, 13, 13, 3, 3, 13, 13, 3},

		-- pump
		StepsType_Pump_Single = {3, 1, 7, 1, 3},
		StepsType_Pump_Halfdouble = {7, 1, 3, 3, 1, 7},
		StepsType_Pump_Double = {3, 1, 7, 1, 3, 3, 1, 7, 1, 3},
		StepsType_Pump_Couple = {3, 1, 7, 1, 3, 3, 1, 7, 1, 3},
		StepsType_Pump_Routine = {3, 1, 7, 1, 3, 3, 1, 7, 1, 3},

		-- kb7
		StepsType_Kb7_Single = {13, 3, 17, 19, 17, 3, 17},

		-- ez2
		StepsType_Ez2_Single = {1, 3, 7, 3, 1},
		StepsType_Ez2_Double = {1, 3, 7, 3, 1, 1, 3, 7, 3, 1},
		StepsType_Ez2_Real = {1, 5, 3, 7, 3, 5, 1},

		-- para: always magenta
		StepsType_Para_Single = {13, 13, 13, 13, 13},

		-- ds3ddx
		StepsType_Ds3ddx_Single = {19, 3, 1, 5, 5, 1, 3, 19},

		-- beat
		StepsType_Beat_Single5 = {1, 17, 3, 17, 3, 17},
		StepsType_Beat_Versus5 = {1, 17, 3, 17, 3, 17},
		StepsType_Beat_Double5 = {1, 17, 3, 17, 3, 17, 17, 3, 17, 3, 17, 1},
		StepsType_Beat_Single7 = {1, 17, 3, 17, 3, 17, 3, 17},
		StepsType_Beat_Versus7 = {1, 17, 3, 17, 3, 17, 3, 17},
		StepsType_Beat_Double7 = {1, 17, 3, 17, 3, 17, 3, 17, 17, 3, 17, 3, 17, 3, 17, 1},

		-- bm: alias for beat
		StepsType_Bm_Single5 = {1, 17, 3, 17, 3, 17},
		StepsType_Bm_Versus5 = {1, 17, 3, 17, 3, 17},
		StepsType_Bm_Double5 = {1, 17, 3, 17, 3, 17, 17, 3, 17, 3, 17, 1},
		StepsType_Bm_Single7 = {1, 17, 3, 17, 3, 17, 3, 17},
		StepsType_Bm_Versus7 = {1, 17, 3, 17, 3, 17, 3, 17},
		StepsType_Bm_Double7 = {1, 17, 3, 17, 3, 17, 3, 17, 17, 3, 17, 3, 17, 3, 17, 1},

		-- maniax
		StepsType_Maniax_Single = {3, 13, 13, 3},
		StepsType_Maniax_Double = {3, 13, 13, 3, 3, 13, 13, 3},

		-- techno
		StepsType_Techno_Single4 = {5, 7, 7, 5},
		StepsType_Techno_Single5 = {3, 1, 13, 1, 3},
		StepsType_Techno_Single8 = {3, 5, 1, 7, 7, 1, 5, 3},
		StepsType_Techno_Double4 = {5, 7, 7, 5, 5, 7, 7, 5},
		StepsType_Techno_Double5 = {3, 1, 13, 1, 3, 3, 1, 13, 1, 3},
		StepsType_Techno_Double8 = {3, 5, 1, 7, 7, 1, 5, 3, 3, 5, 1, 7, 7, 1, 5, 3},

		-- popn
		StepsType_Popn_Five = {5, 3, 1, 3, 5},
		StepsType_Popn_Nine = {17, 7, 5, 3, 1, 3, 5, 7, 17},

		-- pnm: alias for popn
		StepsType_Pnm_Five = {5, 3, 1, 3, 5},
		StepsType_Pnm_Nine = {17, 7, 5, 3, 1, 3, 5, 7, 17},

		-- lights: is not game
		StepsType_Lights_Cabinet = {1, 1, 1, 1, 1, 1, 1, 1},

		-- kickbox
		StepsType_Kickbox_Human = {7, 7, 7, 7},
		StepsType_Kickbox_Quadarm = {1, 3, 3, 1},
		StepsType_Kickbox_Insect = {7, 1, 3, 3, 1, 7},
		StepsType_Kickbox_Arachnid = {3, 1, 1, 3, 3, 1, 1, 3},
	};

	setmetatable(columnColorTable, {
		__index = function(table, key, value)
			return {};
		end
	});

	-- Mine zoom table for StepsTypes
	local mineZoomTable = {
		-- beat: *0.5
		StepsType_Beat_Single5 = 0.5,
		StepsType_Beat_Versus5 = 0.5,
		StepsType_Beat_Double5 = 0.5,
		StepsType_Beat_Single7 = 0.5,
		StepsType_Beat_Versus7 = 0.5,
		StepsType_Beat_Double7 = 0.5,

		-- bm: alias for beat
		StepsType_Bm_Single5 = 0.5,
		StepsType_Bm_Versus5 = 0.5,
		StepsType_Bm_Double5 = 0.5,
		StepsType_Bm_Single7 = 0.5,
		StepsType_Bm_Versus7 = 0.5,
		StepsType_Bm_Double7 = 0.5,

		-- maniax: *0.5
		StepsType_Maniax_Single = 0.5,
		StepsType_Maniax_Double = 0.5,

		-- popn: not stretched in 5-button mode
		StepsType_Popn_Five = 0.5,
		StepsType_Popn_Nine = 0.5,

		-- pnm: alias for popn
		StepsType_Pnm_Five = 0.5,
		StepsType_Pnm_Nine = 0.5,
	};

	setmetatable(mineZoomTable, {
		__index = function(table, key, value)
			return 1;
		end
	});

	local function generateQuantaState(mode, muliply)
		local quantaModeTable = {
			--            { 4, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192},
			["Default"] = { 1, 3,  5,  7,  9, 11, 13, 15, 15,  15,  15},
			["3.9"]     = { 1, 3,  9,  7, 13, 19, 11,  5, 15,  17,  17},
			["Bold"]    = { 5, 1,  3,  7,  9, 11, 13, 19, 19,  19,  19},
			["Solo"]    = {19, 3, 13,  9,  9,  9,  9,  9,  9,   9,   9},
			["ITG"]     = {19, 3,  9,  5,  9,  7,  9, 11, 19,  19,  19},
			["DDR"]     = { 1, 3,  5,  7,  5,  5,  5,  5,  5,   5,   5},
		};

		local quantaMultiplyTable = {
			["Default"]   = {1, 2, 3, 4, 5, 6, 7, 8, 9, 11},
			["Halved"]    = {1, 1, 3, 2, 3, 4, 5, 6, 7,  9},
			["Thirdsed"]  = {1, 2, 1, 4, 2, 6, 4, 8, 6, 11},
			["Quartered"] = {1, 1, 3, 1, 3, 2, 3, 4, 5,  7},
		};

		local quantaState = {parts_per_beat = 48, quanta = {}};

		local quantam = {1, 2, 3, 4, 6, 8, 12, 16, 24, 28};

		for i, perBeat in ipairs(quantam) do
			local j = quantaMultiplyTable[muliply][i];
			quantaState.quanta[i] = {per_beat = perBeat, states = {quantaModeTable[mode][j]}};
		end

		return quantaState;
	end

	-- State for Tap Note (playerized)
	local routineState = {
		parts_per_beat = 48,
		quanta = {
			{per_beat = 1, states = {13}}, -- P1
			{per_beat = 2, states = {3}}, -- P2
			{per_beat = 3, states = {7}}, -- P3
			{per_beat = 4, states = {5}}, -- P4
		},
	};

	-- State for Tap Lift
	local liftState = {
		parts_per_beat = 1,
		quanta = {
			{per_beat = 1, states = {18}},
		},
	};

	-- State for single image (such as mine, octagon lift)
	local singleState = {
		parts_per_beat = 1,
		quanta = {
			{per_beat = 1, states = {1}},
		},
	};

	-- State for active Hold Body
	local activeState = {
		parts_per_beat = 1,
		quanta = {
			{per_beat = 1, states = {1}},
		},
	};

	-- State for inactive Hold Body
	local inactiveState = {
		parts_per_beat = 1,
		quanta = {
			{per_beat = 1, states = {3}},
		},
	};

	local columns = {};
	for i, button in ipairs(button_list) do
		local noteType = skin_parameters and skin_parameters.note_type or "Normal";
		local liftType = skin_parameters and skin_parameters.lift_type or "Octagon";
		local colorType = skin_parameters and skin_parameters.color_type or "Quantize";
		local quantaMode = skin_parameters and skin_parameters.quanta_mode or "Default";
		local quantaMultiply = skin_parameters and skin_parameters.quanta_multiply or "Default";
		local mineColor = skin_parameters and skin_parameters.mine_color;
		local scratchSide = skin_parameters and skin_parameters.scratch_side or "Left";

		local buttonInfo = buttonInfoTable[button];
		local mineZoom = mineZoomTable[stepstype];

		-- Button info for maniax-*
		if stepstype == "StepsType_Maniax_Single" or stepstype == "StepsType_Maniax_Double" then
			buttonInfo = {
				tap         = {image = "ring", rotZ = 0, rotY = 0},
				hold        = {image = "ring", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "ring", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "ring", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "ring", flip = "TexCoordFlipMode_None"},
			};
		end

		-- Button info for kb7-single
		if stepstype == "StepsType_Kb7_Single" then
			buttonInfo = {
				tap         = {image = "circle", rotZ = 0, rotY = 0},
				hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
			};
		end

		-- Button info for Center in techno-single/double5
		if (stepstype == "StepsType_Techno_Single5" or stepstype == "StepsType_Techno_Double5") and button == "Center" then
			buttonInfo = {
				tap         = {image = "circle", rotZ = 0, rotY = 0},
				hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
			};
		end

		-- Compute column width
		local baseWidth = button == "scratch" and 128 or 64;
		local computedPadding = (columnSizeTable[stepstype].width[i] or 64) + ((columnSizeTable[stepstype].padding and columnSizeTable[stepstype].padding[i]) or 0) - baseWidth;
		local columnPosition = columnSizeTable[stepstype].position and columnSizeTable[stepstype].position[i];

		if beatColumnPositionTable[stepstype] and beatColumnPositionTable[stepstype][scratchSide] then
			columnPosition = beatColumnPositionTable[stepstype][scratchSide][i];
		end

		-- Button info and column width for note type variants
		if noteType == "Bar32" then
			buttonInfo = {
				tap         = {image = "key", rotZ = 0, rotY = 0},
				hold        = {image = "key", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "key", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "key", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "key", flip = "TexCoordFlipMode_None"},
			};

			mineZoom = 0.5;

			baseWidth = 64;
			computedPadding = -28; -- 36 per column
		elseif noteType == "Bar64" then
			buttonInfo = {
				tap         = {image = "scratch", rotZ = 0, rotY = 0},
				hold        = {image = "scratch", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "scratch", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "scratch", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "scratch", flip = "TexCoordFlipMode_None"},
			};

			mineZoom = 1;

			baseWidth = 128;
			computedPadding = -56; -- 72 per column
		elseif noteType == "Circle" then
			buttonInfo = {
				tap         = {image = "circle", rotZ = 0, rotY = 0},
				hold        = {image = "circle", flip = "TexCoordFlipMode_None"},
				holdReverse = {image = "circle", flip = "TexCoordFlipMode_Y"},
				roll        = {image = "circle", flip = "TexCoordFlipMode_None"},
				rollReverse = {image = "circle", flip = "TexCoordFlipMode_None"},
			};

			mineZoom = 1;

			baseWidth = 64;
			computedPadding = -8; -- 56 per column
		end

		-- Column color
		local columnColor = columnColorTable[stepstype][i] or 1;

		if colorType == "Split" then
			columnColor = i <= #button_list / 2 and 17 or 3; -- left or right

			if #button_list % 2 == 1 and i == (#button_list - 1) / 2 + 1 then
				columnColor = 19; -- center
			end
		elseif colorType == "Alternate" then
			columnColor = i % 2 == 1 and 17 or 3; -- odd or even
		elseif colorType == "Symmetric" then
			columnColor = math.min(i, #button_list - i + 1) % 2 == 1 and 17 or 3; -- odd or even
		end

		-- State for column color
		local columnState = {
			parts_per_beat = 1,
			quanta = {
				{per_beat = 1, states = {columnColor}},
			},
		};

		if colorType == "Quantize" then
			columnState = generateQuantaState(quantaMode, quantaMultiply);
		elseif GAMEMAN:stepstype_is_multiplayer(stepstype) then
			columnState = routineState;
		end

--[[
		-- Image name for Minefield
		local minefieldImage = mineZoom < 0.75 and "half" or "fallback";

		if button == "scratch" then
			minefieldImage = "scratch";
		end
]]

		columns[i] = {
			-- width = columnSizeTable[stepstype].width[i] or 64,
			-- padding = (columnSizeTable[stepstype].padding and columnSizeTable[stepstype].padding[i]) or 0,
			-- XXX: "Holds in this column will be stretched to this width."
			width = baseWidth,
			padding = computedPadding,
			custom_x = columnPosition,
			hold_gray_percent = 0.5,
			use_hold_heads_for_taps_on_row = false,
			anim_time = 1,
			quantum_time = 1,
			anim_uses_beats = true,
			taps = {
				NewSkinTapPart_Tap = {
					state_map = columnState,
					actor = Def.Sprite {
						Texture = NEWSKIN:get_path(skin_name, "_" .. buttonInfo.tap.image .. " tap note 2x16 (doubleres).png"),
						InitCommand = function(self)
							self:rotationz(buttonInfo.tap.rotZ):rotationy(buttonInfo.tap.rotY);
						end,
					},
				},
				NewSkinTapPart_Mine = {
					state_map = mineColor and columnState or singleState,
					actor = Def.ActorFrame {
						InitCommand = function(self)
							selfzoom(mineZoom);
						end,
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mine 2x16 (doubleres).png"),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = function(self)
								self:spin():effectclock("beat"):effectmagnitude(0, 0, -60);
							end,
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = function(self)
								self:rotationz(120)
									:spin():effectclock("beat"):effectmagnitude(0, 0, -60);
							end,
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = function(self)
								self:rotationz(240)
									:spin():effectclock("beat"):effectmagnitude(0, 0, -60);
							end,
						},
					},
				},
				NewSkinTapPart_Lift = {
					state_map = liftType == "Arrow" and liftState or liftType == "OctagonColored" and columnState or singleState,
					actor = Def.Sprite {
						Texture = liftType == "Arrow" and NEWSKIN:get_path(skin_name, "_" .. buttonInfo.tap.image .. " tap note 2x16 (doubleres).png")
							or liftType == "OctagonColored" and NEWSKIN:get_path(skin_name, "_lift 2x16 (doubleres).png")
							or NEWSKIN:get_path(skin_name, "_lift 2x1 (doubleres).png"),
						InitCommand = function(self)
							if liftType == "Arrow" then
								self:rotationz(buttonInfo.tap.rotZ):rotationy(buttonInfo.tap.rotY);
							else
								self:zoom(mineZoom);
							end
						end,
					},
				},
			},
			holds = {
				TapNoteSubType_Hold = {
					{
						state_map = inactiveState,
						textures = {"_" .. buttonInfo.hold.image .. " hold 4x1 (doubleres).png"},
						flip = buttonInfo.hold.flip,
						disable_filtering = false,
						length_data = {
							start_note_offset = -0.5,
							end_note_offset = 0.5,
							head_pixs = 32,
							body_pixs = 64,
							tail_pixs = 32,
						},
					},
					{
						state_map = activeState,
						textures = {"_" .. buttonInfo.hold.image .. " hold 4x1 (doubleres).png"},
						flip = buttonInfo.hold.flip,
					},
				},
				TapNoteSubType_Roll = {
					{
						state_map = inactiveState,
						textures = {"_" .. buttonInfo.roll.image .. " roll 4x1 (doubleres).png"},
						flip = buttonInfo.roll.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. buttonInfo.roll.image .. " roll 4x1 (doubleres).png"},
						flip = buttonInfo.roll.flip,
					},
				},
--[[
				TapNoteSubType_CheckpointHold = {
					{
						state_map = inactiveState,
						textures = {"_" .. buttonInfo.hold.image .. " checkpointhold 4x1 (doubleres).png"},
						flip = buttonInfo.hold.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. buttonInfo.hold.image .. " checkpointhold 4x1 (doubleres).png"},
						flip = buttonInfo.hold.flip,
					},
				},
--]]
--[[
				TapNoteSubType_Mine = {
					{
						state_map = inactiveState,
						textures = {"_" .. minefieldImage .. " minefield 4x1 (doubleres).png"},
						flip = "TexCoordFlipMode_None",
					},
					{
						state_map = activeState,
						textures = {"_" .. minefieldImage .. " minefield 4x1 (doubleres).png"},
						flip = "TexCoordFlipMode_None",
					},
				},
--]]
			},
			reverse_holds = {
				TapNoteSubType_Hold = {
					{
						state_map = inactiveState,
						textures = {"_" .. buttonInfo.holdReverse.image .. " hold 4x1 (doubleres).png"},
						flip = buttonInfo.holdReverse.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. buttonInfo.holdReverse.image .. " hold 4x1 (doubleres).png"},
						flip = buttonInfo.holdReverse.flip,
					},
				},
				TapNoteSubType_Roll = {
					{
						state_map = inactiveState,
						textures = {"_" .. buttonInfo.rollReverse.image .. " roll 4x1 (doubleres).png"},
						flip = buttonInfo.rollReverse.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. buttonInfo.rollReverse.image .. " roll 4x1 (doubleres).png"},
						flip = buttonInfo.rollReverse.flip,
					},
				},
--[[
				TapNoteSubType_CheckpointHold = {
					{
						state_map = inactiveState,
						textures = {"_" .. buttonInfo.holdReverse.image .. " checkpointhold 4x1 (doubleres).png"},
						flip = buttonInfo.holdReverse.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. buttonInfo.holdReverse.image .. " checkpointhold 4x1 (doubleres).png"},
						flip = buttonInfo.holdReverse.flip,
					},
				},
--]]
--[[
				TapNoteSubType_Mine = {
					{
						state_map = inactiveState,
						textures = {"_" .. minefieldImage .. " minefield 4x1 (doubleres).png"},
						flip = "TexCoordFlipMode_Y",
					},
					{
						state_map = activeState,
						textures = {"_" .. minefieldImage .. " minefield 4x1 (doubleres).png"},
						flip = "TexCoordFlipMode_Y",
					},
				},
--]]
			},
		};
	end
	return {
		columns = columns,
		vivid_operation = false,
	};
end
