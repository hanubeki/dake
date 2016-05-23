local skin_name = Var("skin_name");
return function(button_list, stepstype, skin_parameters)
	local tapList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", rotZ = 180, rotY = 0},
		["Down"]      = {image = "down", rotZ = 0, rotY = 0},
		["Left"]      = {image = "down", rotZ = 90, rotY = 0},
		["Right"]     = {image = "down", rotZ = 270, rotY = 0},
		["UpLeft"]    = {image = "upleft", rotZ = 0, rotY = 0},
		["UpRight"]   = {image = "upleft", rotZ = 90, rotY = 0},
		["DownLeft"]  = {image = "upleft", rotZ = 270, rotY = 0},
		["DownRight"] = {image = "upleft", rotZ = 180, rotY = 0},
		["Center"]    = {image = "center", rotZ = 0, rotY = 0},
		-- Para
		["ParaUp"]      = {image = "paraup", rotZ = 0, rotY = 0},
		["ParaLeft"]    = {image = "paraup", rotZ = 270, rotY = 0},
		["ParaRight"]   = {image = "paraup", rotZ = 90, rotY = 0},
		["ParaUpLeft"]  = {image = "paraupleft", rotZ = 0, rotY = 0},
		["ParaUpRight"] = {image = "paraupleft", rotZ = 90, rotY = 0},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", rotZ = 0, rotY = 0},
		["FootUpLeft"]    = {image = "upleft", rotZ = 0, rotY = 0},
		["FootUpRight"]   = {image = "upleft", rotZ = 90, rotY = 0},
		["FootDownLeft"]  = {image = "upleft", rotZ = 270, rotY = 0},
		["FootDownRight"] = {image = "upleft", rotZ = 180, rotY = 0},
		["HandUp"]        = {image = "handdown", rotZ = 180, rotY = 0},
		["HandDown"]      = {image = "handdown", rotZ = 0, rotY = 0},
		["HandLeft"]      = {image = "handleft", rotZ = 0, rotY = 0},
		["HandRight"]     = {image = "handleft", rotZ = 180, rotY = 0},
		["HandUpLeft"]    = {image = "circle", rotZ = 0, rotY = 0},
		["HandUpRight"]   = {image = "circle", rotZ = 0, rotY = 0},
		["HandLrLeft"]    = {image = "circle", rotZ = 0, rotY = 0},
		["HandLrRight"]   = {image = "circle", rotZ = 0, rotY = 0},
		-- kb7, beat
		["Key1"]         = {image = "key", rotZ = 0, rotY = 0},
		["Key2"]         = {image = "key", rotZ = 0, rotY = 0},
		["Key3"]         = {image = "key", rotZ = 0, rotY = 0},
		["Key4"]         = {image = "key", rotZ = 0, rotY = 0},
		["Key5"]         = {image = "key", rotZ = 0, rotY = 0},
		["Key6"]         = {image = "key", rotZ = 0, rotY = 0},
		["Key7"]         = {image = "key", rotZ = 0, rotY = 0},
		["Scratch"]      = {image = "scratch", rotZ = 0, rotY = 0},
		["Scratch up"]   = {image = "scratch", rotZ = 0, rotY = 0},
		["Scratch down"] = {image = "scratch", rotZ = 0, rotY = 0},
		-- popn
		["Left White"]   = {image = "burger", rotZ = 0, rotY = 0},
		["Left Yellow"]  = {image = "burger", rotZ = 0, rotY = 0},
		["Left Green"]   = {image = "burger", rotZ = 0, rotY = 0},
		["Left Blue"]    = {image = "burger", rotZ = 0, rotY = 0},
		["Red"]          = {image = "burger", rotZ = 0, rotY = 0},
		["Right Blue"]   = {image = "burger", rotZ = 0, rotY = 0},
		["Right Green"]  = {image = "burger", rotZ = 0, rotY = 0},
		["Right Yellow"] = {image = "burger", rotZ = 0, rotY = 0},
		["Right White"]  = {image = "burger", rotZ = 0, rotY = 0},
		-- kickbox
		["DownLeftFoot"]  = {image = "rightfoot", rotZ = 0, rotY = 180}, -- Down: blue
		["LeftFoot"]      = {image = "rightfoot", rotZ = 0, rotY = 180}, -- Any:  yellow
		["UpLeftFoot"]    = {image = "rightfoot", rotZ = 0, rotY = 180}, -- Up:   red
		["UpLeftFist"]    = {image = "rightfist", rotZ = 0, rotY = 180},
		["LeftFist"]      = {image = "rightfist", rotZ = 0, rotY = 180},
		["DownLeftFist"]  = {image = "rightfist", rotZ = 0, rotY = 180},
		["DownRightFist"] = {image = "rightfist", rotZ = 0, rotY = 0},
		["RightFist"]     = {image = "rightfist", rotZ = 0, rotY = 0},
		["UpRightFist"]   = {image = "rightfist", rotZ = 0, rotY = 0},
		["UpRightFoot"]   = {image = "rightfoot", rotZ = 0, rotY = 0},
		["RightFoot"]     = {image = "rightfoot", rotZ = 0, rotY = 0},
		["DownRightFoot"] = {image = "rightfoot", rotZ = 0, rotY = 0},
	};

	setmetatable(tapList, {
		__index = function(table, key, value)
			return {image = "fallback", rotZ = 0, rotY = 0};
		end
	});

	local holdList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", flip = "TexCoordFlipMode_Y"},
		["Down"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_None"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_X"},
		["UpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["UpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["DownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["DownRight"] = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_None"},
		-- Para
		["ParaUp"]      = {image = "paraup", flip = "TexCoordFlipMode_None"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		["ParaUpLeft"]  = {image = "paraupleft", flip = "TexCoordFlipMode_None"},
		["ParaUpRight"] = {image = "paraupleft", flip = "TexCoordFlipMode_X"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["FootUpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootUpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["FootDownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["FootDownRight"] = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["HandUp"]        = {image = "handdown", flip = "TexCoordFlipMode_Y"},
		["HandDown"]      = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_None"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_X"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_None"},
		-- popn
		["Left White"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Yellow"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Green"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Blue"]    = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Red"]          = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Blue"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Green"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Yellow"] = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right White"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		-- kickbox
		["DownLeftFoot"]  = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
		["LeftFoot"]      = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
		["UpLeftFoot"]    = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
		["UpLeftFist"]    = {image = "rightfist", flip = "TexCoordFlipMode_X"},
		["LeftFist"]      = {image = "rightfist", flip = "TexCoordFlipMode_X"},
		["DownLeftFist"]  = {image = "rightfist", flip = "TexCoordFlipMode_X"},
		["DownRightFist"] = {image = "rightfist", flip = "TexCoordFlipMode_None"},
		["RightFist"]     = {image = "rightfist", flip = "TexCoordFlipMode_None"},
		["UpRightFist"]   = {image = "rightfist", flip = "TexCoordFlipMode_None"},
		["UpRightFoot"]   = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
		["RightFoot"]     = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
		["DownRightFoot"] = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
	};

	setmetatable(holdList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_None"};
		end
	});

	local reverseHoldList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", flip = "TexCoordFlipMode_None"},
		["Down"]      = {image = "down", flip = "TexCoordFlipMode_Y"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_Y"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_XY"},
		["UpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["UpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["DownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["DownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_Y"},
		-- Para
		["ParaUp"]      = {image = "paraup", flip = "TexCoordFlipMode_Y"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_Y"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_XY"},
		["ParaUpLeft"]  = {image = "paraupleft", flip = "TexCoordFlipMode_Y"},
		["ParaUpRight"] = {image = "paraupleft", flip = "TexCoordFlipMode_XY"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", flip = "TexCoordFlipMode_Y"},
		["FootUpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["FootUpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["FootDownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootDownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["HandUp"]        = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandDown"]      = {image = "handdown", flip = "TexCoordFlipMode_Y"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_Y"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_XY"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_Y"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_Y"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_Y"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_Y"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_Y"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_Y"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_Y"},
		-- popn
		["Left White"]   = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Left Yellow"]  = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Left Green"]   = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Left Blue"]    = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Red"]          = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Right Blue"]   = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Right Green"]  = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Right Yellow"] = {image = "burger", flip = "TexCoordFlipMode_Y"},
		["Right White"]  = {image = "burger", flip = "TexCoordFlipMode_Y"},
		-- kickbox
		["DownLeftFoot"]  = {image = "rightfoot", flip = "TexCoordFlipMode_XY"},
		["LeftFoot"]      = {image = "rightfoot", flip = "TexCoordFlipMode_XY"},
		["UpLeftFoot"]    = {image = "rightfoot", flip = "TexCoordFlipMode_XY"},
		["UpLeftFist"]    = {image = "rightfist", flip = "TexCoordFlipMode_XY"},
		["LeftFist"]      = {image = "rightfist", flip = "TexCoordFlipMode_XY"},
		["DownLeftFist"]  = {image = "rightfist", flip = "TexCoordFlipMode_XY"},
		["DownRightFist"] = {image = "rightfist", flip = "TexCoordFlipMode_Y"},
		["RightFist"]     = {image = "rightfist", flip = "TexCoordFlipMode_Y"},
		["UpRightFist"]   = {image = "rightfist", flip = "TexCoordFlipMode_Y"},
		["UpRightFoot"]   = {image = "rightfoot", flip = "TexCoordFlipMode_Y"},
		["RightFoot"]     = {image = "rightfoot", flip = "TexCoordFlipMode_Y"},
		["DownRightFoot"] = {image = "rightfoot", flip = "TexCoordFlipMode_Y"},
	};

	setmetatable(reverseHoldList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_Y"};
		end
	});

	local rollList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "up", flip = "TexCoordFlipMode_None"},
		["Down"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_None"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_X"},
		["UpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["UpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["DownLeft"]  = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["DownRight"] = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_None"},
		-- Para
		["ParaUp"]      = {image = "paraup", flip = "TexCoordFlipMode_None"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		["ParaUpLeft"]  = {image = "paraupleft", flip = "TexCoordFlipMode_None"},
		["ParaUpRight"] = {image = "paraupleft", flip = "TexCoordFlipMode_X"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["FootUpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootUpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["FootDownLeft"]  = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["FootDownRight"] = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["HandUp"]        = {image = "handup", flip = "TexCoordFlipMode_None"},
		["HandDown"]      = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_None"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_X"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_None"},
		-- popn
		["Left White"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Yellow"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Green"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Blue"]    = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Red"]          = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Blue"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Green"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Yellow"] = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right White"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		-- kickbox
		["DownLeftFoot"]  = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
		["LeftFoot"]      = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
		["UpLeftFoot"]    = {image = "rightfoot", flip = "TexCoordFlipMode_X"},
		["UpLeftFist"]    = {image = "rightfist", flip = "TexCoordFlipMode_X"},
		["LeftFist"]      = {image = "rightfist", flip = "TexCoordFlipMode_X"},
		["DownLeftFist"]  = {image = "rightfist", flip = "TexCoordFlipMode_X"},
		["DownRightFist"] = {image = "rightfist", flip = "TexCoordFlipMode_None"},
		["RightFist"]     = {image = "rightfist", flip = "TexCoordFlipMode_None"},
		["UpRightFist"]   = {image = "rightfist", flip = "TexCoordFlipMode_None"},
		["UpRightFoot"]   = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
		["RightFoot"]     = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
		["DownRightFoot"] = {image = "rightfoot", flip = "TexCoordFlipMode_None"},
	};

	setmetatable(rollList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_None"};
		end
	});

	local reverseRollList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", flip = "TexCoordFlipMode_None"},
		["Down"]      = {image = "up", flip = "TexCoordFlipMode_None"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_None"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_X"},
		["UpLeft"]    = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["UpRight"]   = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["DownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["DownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_None"},
		-- Para
		["ParaUp"]      = {image = "paradown", flip = "TexCoordFlipMode_None"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		["ParaUpLeft"]  = {image = "paradownleft", flip = "TexCoordFlipMode_None"},
		["ParaUpRight"] = {image = "paradownleft", flip = "TexCoordFlipMode_X"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "up", flip = "TexCoordFlipMode_None"},
		["FootUpLeft"]    = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["FootUpRight"]   = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["FootDownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootDownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["HandUp"]        = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandDown"]      = {image = "handup", flip = "TexCoordFlipMode_None"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_None"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_X"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_None"},
		-- popn
		["Left White"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Yellow"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Green"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Left Blue"]    = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Red"]          = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Blue"]   = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Green"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right Yellow"] = {image = "burger", flip = "TexCoordFlipMode_None"},
		["Right White"]  = {image = "burger", flip = "TexCoordFlipMode_None"},
		-- kickbox
		["DownLeftFoot"]  = {image = "reverserightfoot", flip = "TexCoordFlipMode_X"},
		["LeftFoot"]      = {image = "reverserightfoot", flip = "TexCoordFlipMode_X"},
		["UpLeftFoot"]    = {image = "reverserightfoot", flip = "TexCoordFlipMode_X"},
		["UpLeftFist"]    = {image = "reverserightfist", flip = "TexCoordFlipMode_X"},
		["LeftFist"]      = {image = "reverserightfist", flip = "TexCoordFlipMode_X"},
		["DownLeftFist"]  = {image = "reverserightfist", flip = "TexCoordFlipMode_X"},
		["DownRightFist"] = {image = "reverserightfist", flip = "TexCoordFlipMode_None"},
		["RightFist"]     = {image = "reverserightfist", flip = "TexCoordFlipMode_None"},
		["UpRightFist"]   = {image = "reverserightfist", flip = "TexCoordFlipMode_None"},
		["UpRightFoot"]   = {image = "reverserightfoot", flip = "TexCoordFlipMode_None"},
		["RightFoot"]     = {image = "reverserightfoot", flip = "TexCoordFlipMode_None"},
		["DownRightFoot"] = {image = "reverserightfoot", flip = "TexCoordFlipMode_None"},
	};

	setmetatable(reverseRollList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_None"};
		end
	});

	local columnWidth = {
		-- dance: 64 per column
		StepsType_Dance_Single = {64, 64, 64, 64},
		StepsType_Dance_Double = {64, 64, 64, 64, 64, 64, 64, 64},
		StepsType_Dance_Couple = {64, 64, 64, 64, 64, 64, 64, 64},
		StepsType_Dance_Solo = {64, 48, 64, 64, 48, 64},
		StepsType_Dance_Threepanel = {64, 64, 64},
		StepsType_Dance_Routine = {64, 64, 64, 64, 64, 64, 64, 64},

		-- pump: 50 per column (2px double margin)
		StepsType_Pump_Single = {50, 50, 50, 50, 50},
		StepsType_Pump_Halfdouble = {50, 50, 50, 50, 50, 50},
		StepsType_Pump_Double = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
		StepsType_Pump_Couple = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
		StepsType_Pump_Routine = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},

		-- kb7: 64 per column
		StepsType_Kb7_Single = {64, 64, 64, 64, 64, 64, 64},

		-- ez2: inaccurate
		StepsType_Ez2_Single = {44, 44, 44, 44, 44},
		StepsType_Ez2_Double = {44, 44, 44, 44, 44, 44, 44, 44, 44, 44},
		StepsType_Ez2_Real = {44, 44, 44, 44, 44, 44, 44},

		-- para: 55 per column
		StepsType_Para_Single = {55, 55, 55, 55, 55},

		-- ds3ddx: inaccurate
		StepsType_Ds3ddx_Single = {36, 44, 44, 40, 40, 44, 44, 36},

		-- beat: scratch = 64, key = 32 (SM5 style)
		StepsType_Beat_Single5 = {64, 32, 32, 32, 32, 32},
		StepsType_Beat_Versus5 = {64, 32, 32, 32, 32, 32},
		StepsType_Beat_Double5 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		StepsType_Beat_Single7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Beat_Versus7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Beat_Double7 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},

		-- bm: alias for beat
		StepsType_Bm_Single5 = {64, 32, 32, 32, 32, 32},
		StepsType_Bm_Versus5 = {64, 32, 32, 32, 32, 32},
		StepsType_Bm_Double5 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		StepsType_Bm_Single7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Bm_Versus7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Bm_Double7 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},

		-- maniax: 32 per column (4px double margin)
		StepsType_Maniax_Single = {32, 32, 32, 32},
		StepsType_Maniax_Double = {32, 32, 32, 32, 32, 32, 32, 32},

		-- techno: inaccurate
		StepsType_Techno_Single4 = {70, 70, 70, 70},
		StepsType_Techno_Single5 = {56, 56, 56, 56, 56},
		StepsType_Techno_Single8 = {56, 56, 56, 56, 56, 56, 56, 56},
		StepsType_Techno_Double4 = {70, 70, 70, 70, 70, 70, 70, 70},
		StepsType_Techno_Double5 = {56, 56, 56, 56, 56, 56, 56, 56, 56, 56},
		StepsType_Techno_Double8 = {56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56},

		-- popn: not streched in 5buttons
		StepsType_Popn_Five = {32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36}
		StepsType_Popn_Nine = {32, 32, 32, 32, 32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36, 30, 36, 30, 36}

		-- pnm: alias for popn
		StepsType_Pnm_Five = {32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36}
		StepsType_Pnm_Nine = {32, 32, 32, 32, 32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36, 30, 36, 30, 36}

		-- lights: is not game
		StepsType_Lights_Cabinet = {64, 64, 64, 64, 64, 64, 64, 64},

		-- kickbox: 64 per column
		StepsType_Kickbox_Human = {64, 64, 64, 64},
		StepsType_Kickbox_Quadarm = {64, 64, 64, 64},
		StepsType_Kickbox_Insect = {64, 64, 64, 64, 64, 64},
		StepsType_Kickbox_Arachnid = {64, 64, 64, 64, 64, 64, 64, 64},
	};

	setmetatable(columnWidth, {
		__index = function(table, key, value)
			return {};
		end
	});

	local columnPadding = {
		-- ez2: inaccurate
		StepsType_Ez2_Real = {0, -24, 0, 0, 0, -24, 0},

		-- kb7: 16 paddings at middle
		StepsType_Kb7_Single = {0, 0, 0, 32, 0, 0, 0},

		-- ds3ddx: overlap HandUp/HandDown
		StepsType_Ds3ddx_Single = {40, -40, 40, -40, -40, 40, -40, 40},

		-- popn
		StepsType_Popn_Five = {2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2}
		StepsType_Popn_Nine = {2, 2, 2, 2, 2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2, 0, 2, 0, 2}

		-- pnm: alias for popn
		StepsType_Pnm_Five = {2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2}
		StepsType_Pnm_Nine = {2, 2, 2, 2, 2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2, 0, 2, 0, 2}
	};

	setmetatable(columnPadding, {
		__index = function(table, key, value)
			return {};
		end
	});

--[[
Column Color List:
	 1: Red
	 3: Blue
	 5: Green
	 7: Yellow
	 9: Purple
	11: Emerald
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
	local columnColorList = {
		-- dance: always red
		StepsType_Dance_Single = {1, 1, 1, 1},
		StepsType_Dance_Double = {1, 1, 1, 1, 1, 1, 1, 1},
		StepsType_Dance_Couple = {1, 1, 1, 1, 1, 1, 1, 1},
		StepsType_Dance_Solo = {1, 1, 1, 1, 1, 1},
		StepsType_Dance_Threepanel = {1, 1, 1},
		StepsType_Dance_Routine = {1, 1, 1, 1, 1, 1, 1, 1},

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

	setmetatable(columnColorList, {
		__index = function(table, key, value)
			return {};
		end
	});

	local mineZoomList = {
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

		-- popn: not streched in 5buttons
		StepsType_Popn_Five = 0.5,
		StepsType_Popn_Nine = 0.5,

		-- pnm: alias for popn
		StepsType_Pnm_Five = 0.5,
		StepsType_Pnm_Nine = 0.5,
	};

	setmetatable(mineZoomList, {
		__index = function(table, key, value)
			return 1;
		end
	});

	local tapState = {
		parts_per_beat = 48,
		quanta = {
			{per_beat = 1, states = {1}}, -- 4th
			{per_beat = 2, states = {3}}, -- 8th
			{per_beat = 3, states = {5}}, -- 12th
			{per_beat = 4, states = {7}}, -- 16th
			{per_beat = 6, states = {9}}, -- 24th
			{per_beat = 8, states = {11}}, -- 32nd
			{per_beat = 12, states = {13}}, -- 48th
			{per_beat = 16, states = {15}}, -- 64th
		},
	};

	if GAMEMAN:stepstype_is_multiplayer(stepstype) then
		tapState = {
			parts_per_beat = 48,
			quanta = {
				{per_beat = 1, states = {13}}, -- P1
				{per_beat = 2, states = {3}}, -- P2
				{per_beat = 3, states = {7}}, -- P3
				{per_beat = 4, states = {5}}, -- P4
			},
		};
	end

	local liftState = {
		parts_per_beat = 1, quanta = {{per_beat = 1, states = {17}}}
	};

	local singleState = {
		parts_per_beat = 1, quanta = {{per_beat = 1, states = {1}}}
	};

	local activeState = {
		parts_per_beat = 1, quanta = {{per_beat = 1, states = {1}}}
	};

	local inactiveState = {
		parts_per_beat = 1, quanta = {{per_beat = 1, states = {3}}}
	};

	local columns = {};
	for i, button in ipairs(button_list) do
		local noteType = skin_parameters and skin_parameters.note_type or "Normal";
		local liftType = skin_parameters and skin_parameters.lift_type or "Octagon";
		local colorType = skin_parameters and skin_parameters.color_type or "Quantize";

		local tap = tapList[button];
		local hold = holdList[button];
		local reverseHold = reverseHoldList[button];
		local roll = rollList[button];
		local reverseRoll = reverseRollList[button];
		local mineZoom = mineZoomList[stepstype];

		if stepstype == "StepsType_Maniax_Single" or stepstype == "StepsType_Maniax_Double" then
			tap = {image = "ring", rotZ = 0, rotY = 0};
			hold = {image = "ring", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "ring", flip = "TexCoordFlipMode_Y"};
			roll = {image = "ring", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "ring", flip = "TexCoordFlipMode_None"};
		end

		if stepstype == "StepsType_Kb7_Single" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			hold = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "circle", flip = "TexCoordFlipMode_Y"};
			roll = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "circle", flip = "TexCoordFlipMode_None"};
		end

		if (stepstype == "StepsType_Techno_Single5" or stepstype == "StepsType_Techno_Double5") and button == "Center" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			hold = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "circle", flip = "TexCoordFlipMode_Y"};
			roll = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "circle", flip = "TexCoordFlipMode_None"};
		end

		local baseWidth = (button == "Scratch" or button == "Scratch up" or button == "Scratch down") and 128 or 64;
		local computedPadding = (columnWidth[stepstype][i] or 64) + (columnPadding[stepstype][i] or 0) - baseWidth;

		if noteType == "Bar32" then
			tap = {image = "key", rotZ = 0, rotY = 0};
			hold = {image = "key", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "key", flip = "TexCoordFlipMode_Y"};
			roll = {image = "key", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "key", flip = "TexCoordFlipMode_None"};
			mineZoom = 0.5;

			baseWidth = 64;
			computedPadding = -28; -- 36 per column
		elseif noteType == "Bar64" then
			tap = {image = "scratch", rotZ = 0, rotY = 0};
			hold = {image = "scratch", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "scratch", flip = "TexCoordFlipMode_Y"};
			roll = {image = "scratch", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "scratch", flip = "TexCoordFlipMode_None"};
			mineZoom = 1;

			baseWidth = 128;
			computedPadding = -56; -- 72 per column
		elseif noteType == "Circle" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			hold = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "circle", flip = "TexCoordFlipMode_Y"};
			roll = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "circle", flip = "TexCoordFlipMode_None"};
			mineZoom = 1;

			baseWidth = 64;
			computedPadding = -8; -- 56 per column
		end

		local columnColor = columnColorList[stepstype][i] or 1;

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

		local columnState = {
			parts_per_beat = 1, quanta = {{per_beat = 1, states = {columnColor}}}
		}

		columns[i] = {
			-- width = columnWidth[stepstype][i] or 64,
			-- padding = columnPadding[stepstype][i] or 0,
			-- XXX: "Holds in this column will be stretched to this width."
			width = baseWidth,
			padding = computedPadding,
			anim_time = 1,
			quantum_time= 1,
			anim_uses_beats = true,
			taps = {
				NewSkinTapPart_Tap = {
					state_map = (colorType == "Quantize" or GAMEMAN:stepstype_is_multiplayer(stepstype)) and tapState or columnState,
					actor = Def.Sprite {
						Texture = NEWSKIN:get_path(skin_name, "_" .. tap.image .. " tap note 2x16 (doubleres).png"),
						InitCommand = cmd(rotationz,tap.rotZ;rotationy,tap.rotY),
					}
				},
				NewSkinTapPart_Mine = {
					state_map = singleState,
					actor = Def.ActorFrame {
						InitCommand = cmd(zoom,mineZoom),
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mine 2x16 (doubleres).png"),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = cmd(spin;effectclock,"beat";effectmagnitude,0,0,-60),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = cmd(rotationz,120;spin;effectclock,"beat";effectmagnitude,0,0,-60),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = cmd(rotationz,240;spin;effectclock,"beat";effectmagnitude,0,0,-60),
						},
					}
				},
				NewSkinTapPart_Lift = {
					state_map = liftType == "Arrow" and liftState or singleState,
					actor = Def.Sprite {
						Texture = liftType == "Arrow" and NEWSKIN:get_path(skin_name, "_" .. tap.image .. " tap note 2x16 (doubleres).png")
							or NEWSKIN:get_path(skin_name, "_fallback tap lift 2x1 (doubleres).png"),
						InitCommand = liftType == "Arrow" and cmd(rotationz,tap.rotZ;rotationy,tap.rotY) or cmd(zoom,mineZoom),
					}
				},
			},
			holds = {
				TapNoteSubType_Hold = {
					{
						state_map = inactiveState,
						textures = {"_" .. hold.image .. " hold 4x1 (doubleres).png"},
						flip = hold.flip,
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
						textures = {"_" .. hold.image .. " hold 4x1 (doubleres).png"},
						flip = hold.flip,
					},
				},
				TapNoteSubType_Roll = {
					{
						state_map = inactiveState,
						textures = {"_" .. roll.image .. " roll 4x1 (doubleres).png"},
						flip = roll.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. roll.image .. " roll 4x1 (doubleres).png"},
						flip = roll.flip,
					},
				},
			},
			reverse_holds = {
				TapNoteSubType_Hold = {
					{
						state_map = inactiveState,
						textures = {"_" .. reverseHold.image .. " hold 4x1 (doubleres).png"},
						flip = reverseHold.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. reverseHold.image .. " hold 4x1 (doubleres).png"},
						flip = reverseHold.flip,
					},
				},
				TapNoteSubType_Roll = {
					{
						state_map = inactiveState,
						textures = {"_" .. reverseRoll.image .. " roll 4x1 (doubleres).png"},
						flip = reverseRoll.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. reverseRoll.image .. " roll 4x1 (doubleres).png"},
						flip = reverseRoll.flip,
					},
				},
			},
			rotations = {
				NewSkinTapPart_Tap = 0,
				NewSkinTapPart_Mine = 0,
				NewSkinTapPart_Lift = 0,
			},
		};
	end
	return {
		columns = columns,
		vivid_operation = false,
	};
end
