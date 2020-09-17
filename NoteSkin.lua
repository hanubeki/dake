local ret = ... or {}

local game = GAMESTATE:GetCurrentGame():GetName()

-- [ja] Receptorの明るい色の関数
local function BrightColor(col)
	return {(col[1] + 2) / 3, (col[2] + 2) / 3, (col[3] + 2) / 3, col[4]}
end

-- [ja] Extras用変数テーブル
-- Flat (bool): colored by column
-- Routine (bool): colored by player number (actually not working on routine because of my mistake in sm5)
-- HoldType (string): replace holds by specified name
ret.HanubekiExtras = {}

-- [ja] 各ボタンのリダイレクトテーブル
ret.RedirTable =
{
	-- Dance (incl. solo and octo), Pump, pAra, Techno, smX
	["Up"]        = game == "para"   and "ParaUp"                                     or     "Up",     -- D-ATX
	["Down"]      =                                                                          "Down",   -- D--TX
	["Left"]      = game == "para"   and "ParaLeft"                                   or     "Left",   -- D-ATX
	["Right"]     = game == "para"   and "ParaRight"                                  or     "Right",  -- D-ATX
	["UpLeft"]    = game == "para"   and "ParaUpLeft"                                 or   "UpLeft",   -- sPAT-
	["UpRight"]   = game == "para"   and "ParaUpRight"                                or   "UpRight",  -- sPAT-
	["DownLeft"]  =                                                                      "DownLeft",   -- oP-T-
	["DownRight"] =                                                                      "DownRight",  -- oP-T-
	["Center"]    = game == "techno" and "Circle"      or game == "smx" and "Diamond" or     "Center", -- -P-TX
	-- ez2, ds3ddx, Maniax
	["FootDown"]      =                                    "Down",  -- 2--
	["FootUpLeft"]    =                                  "UpLeft",  -- 23-
	["FootUpRight"]   =                                  "UpRight", -- 23-
	["FootDownLeft"]  =                                "DownLeft",  -- -3-
	["FootDownRight"] =                                "DownRight", -- -3-
	["HandUp"]        =                                "HandUp",    -- -3-
	["HandDown"]      =                                "HandDown",  -- -3-
	["HandLeft"]      =                                "HandLeft",  -- -3-
	["HandRight"]     =                                "HandRight", -- -3-
	["HandUpLeft"]    = game == "maniax" and "Ring" or "Circle",    -- 2-M
	["HandUpRight"]   = game == "maniax" and "Ring" or "Circle",    -- 2-M
	["HandLrLeft"]    = game == "maniax" and "Ring" or "Circle",    -- 2-M
	["HandLrRight"]   = game == "maniax" and "Ring" or "Circle",    -- 2-M
	-- kb7, beat
	["Key1"]         = game == "kb7" and "Circle" or "Key",
	["Key2"]         = game == "kb7" and "Circle" or "Key",
	["Key3"]         = game == "kb7" and "Circle" or "Key",
	["Key4"]         = game == "kb7" and "Circle" or "Key",
	["Key5"]         = game == "kb7" and "Circle" or "Key",
	["Key6"]         = game == "kb7" and "Circle" or "Key",
	["Key7"]         = game == "kb7" and "Circle" or "Key",
	["scratch"]      =                               "Scratch",
	["scratch up"]   =                               "Scratch",
	["scratch down"] =                               "Scratch",
	-- popn
	["Left White"]   = "Burger",
	["Left Yellow"]  = "Burger",
	["Left Green"]   = "Burger",
	["Left Blue"]    = "Burger",
	["Red"]          = "Burger",
	["Right Blue"]   = "Burger",
	["Right Green"]  = "Burger",
	["Right Yellow"] = "Burger",
	["Right White"]  = "Burger",
	-- kickbox
	["DownLeftFoot"]  = "DownLeftFoot", -- Down: blue
	["AnyLeftFoot"]   =  "AnyLeftFoot", -- Any:  yellow
	["UpLeftFoot"]    =   "UpLeftFoot", -- Up:   red
	["UpLeftFist"]    =   "UpLeftFist",
	["AnyLeftFist"]   =  "AnyLeftFist",
	["DownLeftFist"]  = "DownLeftFist",
	["DownRightFist"] = "DownRightFist",
	["AnyRightFist"]  =  "AnyRightFist",
	["UpRightFist"]   =   "UpRightFist",
	["UpRightFoot"]   =   "UpRightFoot",
	["AnyRightFoot"]  =  "AnyRightFoot",
	["DownRightFoot"] = "DownRightFoot",
	-- guitar
	["Fret 1"] = "Fret",
	["Fret 2"] = "Fret",
	["Fret 3"] = "Fret",
	["Fret 4"] = "Fret",
	["Fret 5"] = "Fret",
	["Fret 6"] = "Fret",
	["Strum Up"] = "Strum",
	["Strum Down"] = "Strum",
	-- gddm
	["Crash"] = "Cymbal",
	["Hi-Hat"] = "Cymbal",
	["Hi-Hat Pedal"] = "Pedal",
	["Snare"] = "Tom",
	["Tom1"] = "Tom",
	["Kick"] = "Pedal",
	["Tom2"] = "Tom",
	["Tom3"] = "Tom",
	["Ride"] = "Cymbal",
}

local Fallback = {
	__index = function(table, key, value)
		return "_fallback"
	end
}

local FallbackZero = {
	__index = function(table, key, value)
		return 0
	end
}

local FallbackOne = {
	__index = function(table, key, value)
		return 1
	end
}

-- [ja] Tap Note/Hold Head用のリダイレクトテーブル
local TapRedir = {
	["Up"]        = "_down",
	["Down"]      = "_down",
	["Left"]      = "_down",
	["Right"]     = "_down",
	["UpLeft"]    = "_upleft",
	["UpRight"]   = "_upleft",
	["DownLeft"]  = "_upleft",
	["DownRight"] = "_upleft",
	["Center"]    = "_center",
	["Circle"]    = "_circle",
	["Diamond"]   = "_diamond",

	["ParaLeft"]    = "_paraup",
	["ParaUpLeft"]  = "_paraupleft",
	["ParaUp"]      = "_paraup",
	["ParaUpRight"] = "_paraupleft",
	["ParaRight"]   = "_paraup",

	["HandLeft"]  = "_handleft",
	["HandRight"] = "_handleft",
	["HandUp"]    = "_handdown",
	["HandDown"]  = "_handdown",

	["Ring"] = "_ring",

	["Key"]      = "_key",
	["Scratch"]  = "_scratch",

	["Burger"] = "_burger",

	["DownLeftFoot"]  = "_rightfoot",
	["AnyLeftFoot"]   = "_rightfoot",
	["UpLeftFoot"]    = "_rightfoot",
	["UpLeftFist"]    = "_rightfist",
	["AnyLeftFist"]   = "_rightfist",
	["DownLeftFist"]  = "_rightfist",
	["DownRightFist"] = "_rightfist",
	["AnyRightFist"]  = "_rightfist",
	["UpRightFist"]   = "_rightfist",
	["UpRightFoot"]   = "_rightfoot",
	["AnyRightFoot"]  = "_rightfoot",
	["DownRightFoot"] = "_rightfoot",

	["Fret"] = "_circle",
	["Strum"] = "_strum",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",
}
setmetatable(TapRedir, Fallback)

-- [ja] Tap Note/Hold Head用の反転テーブル
local TapRotateY = {
	["DownLeftFoot"]  = 180,
	["AnyLeftFoot"]   = 180,
	["UpLeftFoot"]    = 180,
	["UpLeftFist"]    = 180,
	["AnyLeftFist"]   = 180,
	["DownLeftFist"]  = 180,
	["DownRightFist"] =   0,
	["AnyRightFist"]  =   0,
	["UpRightFist"]   =   0,
	["UpRightFoot"]   =   0,
	["AnyRightFoot"]  =   0,
	["DownRightFoot"] =   0,
}
setmetatable(TapRotateY, FallbackZero)

-- [ja] Tap Note/Hold Head用の回転テーブル
local TapRotateZ = {
	["Up"]        = 180,
	["Down"]      =   0,
	["Left"]      =  90,
	["Right"]     = 270,

	["UpLeft"]    =   0,
	["UpRight"]   =  90,
	["DownLeft"]  = 270,
	["DownRight"] = 180,

	["ParaLeft"]    = -90,
	["ParaUp"]      =   0,
	["ParaRight"]   =  90,

	["ParaUpLeft"]  =   0,
	["ParaUpRight"] =  90,

	["HandLeft"]  =   0,
	["HandRight"] = 180,
	["HandUp"]    = 180,
	["HandDown"]  =   0,
}
setmetatable(TapRotateZ, FallbackZero)

-- [ja] Hold Body用のリダイレクトテーブル
local HoldBodyRedir = {
	["Up"]        = "_down",
	["Down"]      = "_down",
	["Left"]      = "_down",
	["Right"]     = "_down",
	["UpLeft"]    = "_upleft",
	["UpRight"]   = "_upright",
	["DownLeft"]  = "_upleft",
	["DownRight"] = "_upright",

	["Center"]    = "_center",
	["Circle"]    = "_center",
	["Diamond"]   = "_diamond",

--[[
	["ParaLeft"]    = "_paraleft",
	["ParaUpLeft"]  = "_paraupleft",
	["ParaUp"]      = "_paraup",
	["ParaUpRight"] = "_paraupright",
	["ParaRight"]   = "_pararight",
--]]

	["ParaLeft"]    = "_thin",
	["ParaUpLeft"]  = "_thin",
	["ParaUp"]      = "_thin",
	["ParaUpRight"] = "_thin",
	["ParaRight"]   = "_thin",

	["HandLeft"]  = "_handleft",
	["HandRight"] = "_handright",
	["HandUp"]    = "_handdown",
	["HandDown"]  = "_handdown",

	["Ring"] = "_ring",

	["Key"]      = "_key",
	["Scratch"]  = "_scratch",

	["Burger"] = "_key",

	["DownLeftFoot"]  = "_leftfoot",
	["AnyLeftFoot"]   = "_leftfoot",
	["UpLeftFoot"]    = "_leftfoot",
	["UpLeftFist"]    = "_center",
	["AnyLeftFist"]   = "_center",
	["DownLeftFist"]  = "_center",
	["DownRightFist"] = "_center",
	["AnyRightFist"]  = "_center",
	["UpRightFist"]   = "_center",
	["UpRightFoot"]   = "_rightfoot",
	["AnyRightFoot"]  = "_rightfoot",
	["DownRightFoot"] = "_rightfoot",

	["Fret"] = "_thin",
	["Strum"] = "_strum",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",
}
setmetatable(HoldBodyRedir, Fallback)

-- [ja] Hold TopCap/BottomCap用のリダイレクトテーブル
local HoldCapRedir = {
--[[
	["ParaLeft"]    = "_paraleft",
	["ParaUpLeft"]  = "_paraupleft",
	["ParaUp"]      = "_paraup",
	["ParaUpRight"] = "_paraupright",
	["ParaRight"]   = "_pararight",
--]]

	["ParaLeft"]    = "_thin",
	["ParaUpLeft"]  = "_thin",
	["ParaUp"]      = "_thin",
	["ParaUpRight"] = "_thin",
	["ParaRight"]   = "_thin",

	["DownLeftFoot"]  = "_leftfoot",
	["AnyLeftFoot"]   = "_leftfoot",
	["UpLeftFoot"]    = "_leftfoot",
	["UpLeftFist"]    = "_leftfist",
	["AnyLeftFist"]   = "_leftfist",
	["DownLeftFist"]  = "_leftfist",
	["DownRightFist"] = "_rightfist",
	["AnyRightFist"]  = "_rightfist",
	["UpRightFist"]   = "_rightfist",
	["UpRightFoot"]   = "_rightfoot",
	["AnyRightFoot"]  = "_rightfoot",
	["DownRightFoot"] = "_rightfoot",

	["Fret"] = "_thin",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",
}
local HoldCapRedirMeta = {
	__index = function(table, key, value)
		return "_" .. string.lower(key)
	end
}
setmetatable(HoldCapRedir, HoldCapRedirMeta)

-- [ja] 共通画像の各Game用の拡大テーブル
local ZoomTable = {
	["maniax"] = 1/2,
	["beat"] = 1/2,
	["popn"] = 1/2,
}
setmetatable(ZoomTable, FallbackOne)

local ColorTable = {
--[[
	 0: Red
	 2: Blue
	 4: Green
	 6: Yellow
	 8: Purple
	10: Teal
	12: Magenta
	14: Seafoam
	16: Gray
	18: Orange
	20: Reserved
	22: Reserved
	24: Reserved
	26: Reserved
	28: Reserved
	30: Reserved
--]]
	["dance"] = {
		["Left"] = 8,
		["UpLeft"] = 8,
		["Down"] = 8,
		["Up"] = 8,
		["UpRight"] = 8,
		["Right"] = 8,
	},
--[[
	["dance"] = { -- Panel Color
		["Left"] = 2,
		["UpLeft"] = 4,
		["Down"] = 0,
		["Up"] = 0,
		["UpRight"] = 4,
		["Right"] = 2,
	},
--]]
	["pump"] = {
		["DownLeft"] = 2,
		["UpLeft"] = 18,
		["Center"] = 6,
		["UpRight"] = 18,
		["DownRight"] = 2,
	},
--[[
	["pump"] = { -- pop'n stage Color
		["DownLeft"] = 4,
		["UpLeft"] = 6,
		["Center"] = 0,
		["UpRight"] = 2,
		["DownRight"] = 16,
	},
--]]
	["para"] = {
		["Left"] = 12,
		["UpLeft"] = 12,
		["Up"] = 12,
		["UpRight"] = 12,
		["Right"] = 12,
	},
	["techno"] = {
		["DownLeft"] = 2,
		["Left"] = 4,
		["UpLeft"] = 0,
		["Down"] = 6,
		["Center"] = 12,
		["Up"] = 6,
		["UpRight"] = 0,
		["Right"] = 4,
		["DownRight"] = 2,
	},
	["smx"] = { -- I'm not sure
		["Left"] = 2,
		["Down"] = 0,
		["Center"] = 12,
		["Up"] = 0,
		["Right"] = 2,
	},
	["ez2"] = {
		["FootUpLeft"] = 0,
		["HandLrLeft"] = 4,
		["HandUpLeft"] = 2,
		["FootDown"] = 6,
		["HandUpRight"] = 2,
		["HandLrRight"] = 4,
		["FootUpRight"] = 0,
	},
	["maniax"] = {
		["HandLrLeft"] = 2,
		["HandUpLeft"] = 12,
		["HandUpRight"] = 12,
		["HandLrRight"] = 2,
	},
	["ds3ddx"] = {
		["HandLeft"] = 18,
		["FootDownLeft"] = 2,
		["FootUpLeft"] = 0,
		["HandUp"] = 4,
		["HandDown"] = 4,
		["FootUpRight"] = 0,
		["FootDownRight"] = 2,
		["HandRight"] = 18,
	},
	["kb7"] = {
		["Key1"] = 16,
		["Key2"] = 2,
		["Key3"] = 16,
		["Key4"] = 18,
		["Key5"] = 16,
		["Key6"] = 2,
		["Key7"] = 16,
	},
	["beat"] = {
		["Key1"] = 16,
		["Key2"] = 2,
		["Key3"] = 16,
		["Key4"] = 2,
		["Key5"] = 16,
		["Key6"] = 2,
		["Key7"] = 16,
		["scratch"] = 0,
		["scratch up"] = 0,
		["scratch down"] = 0,
	},
	["popn"] = {
		["Left White"] = 16,
		["Left Yellow"] = 6,
		["Left Green"] = 4,
		["Left Blue"] = 2,
		["Red"] = 0,
		["Right Blue"] = 2,
		["Right Green"] = 4,
		["Right Yellow"] = 6,
		["Right White"] = 16,
	},
	["kickbox"] = {
		["DownLeftFoot"]  = 2, -- Down: blue
		["AnyLeftFoot"]   = 6, -- Any:  yellow
		["UpLeftFoot"]    = 0, -- Up:   red
		["UpLeftFist"]    = 0,
		["AnyLeftFist"]   = 6,
		["DownLeftFist"]  = 2,
		["DownRightFist"] = 2,
		["AnyRightFist"]  = 6,
		["UpRightFist"]   = 0,
		["UpRightFoot"]   = 0,
		["AnyRightFoot"]  = 6,
		["DownRightFoot"] = 2,
	},
	["guitar"] = {
		["Fret 1"] = 6,
		["Fret 2"] = 8,
		["Fret 3"] = 4,
		["Fret 4"] = 0,
		["Fret 5"] = 2,
		["Fret 6"] = 16,
		["Strum Up"] = 16,
		["Strum Down"] = 16,
	},
	["gddm"] = {
		["Crash"]        = 12,
		["Hi-Hat"]       = 2,
		["Hi-Hat Pedal"] = 12,
		["Snare"]        = 6,
		["Tom1"]         = 4,
		["Kick"]         = 8,
		["Tom2"]         = 0,
		["Tom3"]         = 18,
		["Ride"]         = 2,
	},
	["lights"] = { -- isn't game
		["MarqueeUpLeft"] = 0,
		["MarqueeUpRight"] = 0,
		["MarqueeLrLeft"] = 0,
		["MarqueeLrRight"] = 0,
		["ButtonsLeft"] = 0,
		["ButtonsRight"] = 0,
		["BassLeft"] = 0,
		["BassRight"] = 0,
	},
	["Routine"] = { -- for Routine mode
		["PlayerNumber_P1"] = 12,
		["PlayerNumber_P2"] = 2,
		["PlayerNumber_P3"] = 6,
		["PlayerNumber_P4"] = 4,
	},
}
local ColorTableMeta = {
	__index = function(table, key, value)
		local dummy = {}
		setmetatable(dummy, FallbackZero)
		return dummy
	end
}
setmetatable(ColorTable, ColorTableMeta)

ret.Redir = function(sButton, sElement)
	-- Instead of separate hold heads, use the tap note graphics.
	if sElement == "Hold Head Inactive" or
	   sElement == "Hold Head Active" or
	   sElement == "Roll Head Inactive" or
	   sElement == "Roll Head Active" or
	   sElement == "Tap Fake"
	then
		sElement = "Tap Note"
	end

	sButton = ret.RedirTable[sButton] or "Fallback"

	return sButton, sElement
end

ret.Blank = {
	["Hold Tail Active"] = true,
	["Hold Tail Inactive"] = true,
	["Roll Tail Active"] = true,
	["Roll Tail Inactive"] = true,
}

local function func()
	local sButton = Var "Button"
	local sElement = Var "Element"
	local pn = Var "Player" or GAMESTATE:GetMasterPlayerNumber()

	if GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Kickbox_Human" then
		if string.find(sButton, "LeftFoot") then
			sButton = "AnyLeftFoot"
		end
		if string.find(sButton, "RightFoot") then
			sButton = "AnyRightFoot"
		end
		--
		if string.find(sButton, "LeftFist") then
			sButton = "AnyLeftFist"
		end
		if string.find(sButton, "RightFist") then
			sButton = "AnyRightFist"
		end
	end

	if GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Kickbox_Insect" then
		if string.find(sButton, "LeftFoot") then
			sButton = "AnyLeftFoot"
		end
		if string.find(sButton, "RightFoot") then
			sButton = "AnyRightFoot"
		end
	end

	if ret.Blank[sElement] then
		-- Return a blank element.  If SpriteOnly is set,
		-- we need to return a sprite; otherwise just return
		-- a dummy actor.
		local t

		if Var "SpriteOnly" then
			t = LoadActor("_blank")
		else
			t = Def.Actor {}
		end

		return t .. {
			InitCommand = function (self) self:visible(false) end
		}
	end

	if string.find(sButton, "Strum") then
		if string.find(sElement, "Tap Note") then
			local strumLength = string.find(GAMESTATE:GetCurrentStyle(pn):GetName(), "6") and 320 or 192

			return Def.Quad {
				InitCommand = function (self) self:setsize(strumLength, 8):diffuse({1, 1, 1, 1}) end
			}
		else
			local t

			if Var "SpriteOnly" then
				t = LoadActor("_blank")
			else
				t = Def.Actor {}
			end

			return t .. {
				InitCommand = function (self) self:visible(false) end
			}
		end
	end

	local sButtonToLoad, sElementToLoad = ret.Redir(sButton, sElement)
	assert(sButtonToLoad)
	assert(sElementToLoad)

	-- Don't use TOO MANY LUAS AND REDIRS
	-- local sPath = NOTESKIN:GetPath(sButtonToLoad, sElementToLoad)

	-- local t = LoadActor(sPath)

	local rotY = TapRotateY[sButtonToLoad]
	local rotZ = TapRotateZ[sButtonToLoad]
	local zoomValue = ZoomTable[game]

	local t = Def.ActorFrame {}

	if sElementToLoad == "Tap Note" then
		local color = 0

		if ret.HanubekiExtras.Routine then
			color = ColorTable["Routine"][pn]
		elseif ret.HanubekiExtras.Flat then
			color = ColorTable[game][sButton]
		end

		if sButtonToLoad == "Pedal" then
			t[#t+1] = Def.Sprite {
				Texture = NOTESKIN:GetPath("_common", "underlay foot"),
				Frames = {{Frame = 0, Delay = 1}},
			}
		elseif sButtonToLoad == "Cymbal" then
			local cymRot = sButton == "Hi-Hat" and -60 or -45

			t[#t+1] = Def.Sprite {
				Texture = NOTESKIN:GetPath("_common", "underlay cymbal"),
				Frames = {{Frame = 0, Delay = 1}},
				InitCommand = function (self) self:rotationz(cymRot) end,
			}
		end

		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath(TapRedir[sButtonToLoad], "tap note"),
			Frames = {{Frame = color, Delay = 1}},
			InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ) end,
		}

		if sButton == "Center" and (not string.find(GAMESTATE:GetCurrentStyle(pn):GetStepsType(), "StepsType_Smx_")) then
			t[#t+1] = Def.Sprite {
				Texture = NOTESKIN:GetPath("_common", "overlay feet"),
				Frames = {{Frame = 0, Delay = 1}},
			}
		end
	elseif sElementToLoad == "Tap Mine" then
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "mine base"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:zoom(zoomValue) end,
		}
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "mine parts"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:zoom(zoomValue):spin():effectclock("beat"):effectmagnitude(0, 0, -60) end,
		}
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "mine parts"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:zoom(zoomValue):rotationz(120):spin():effectclock("beat"):effectmagnitude(0, 0, -60) end,
		}
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "mine parts"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:zoom(zoomValue):rotationz(240):spin():effectclock("beat"):effectmagnitude(0, 0, -60) end,
		}
	elseif sElementToLoad == "Tap Lift" then
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "tap lift"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:zoom(zoomValue) end,
		}
	elseif string.find(sElementToLoad, "Hold .*cap") or
	       string.find(sElementToLoad, "Roll .*cap") then
		t = Def.Sprite {
			Texture = NOTESKIN:GetPath(ret.HanubekiExtras.HoldType or HoldCapRedir[sButtonToLoad], string.lower(sElementToLoad)),
			Frames = {{Frame = 0, Delay = 1}},
		}
	elseif string.find(sElementToLoad, "Hold Body") or
	       string.find(sElementToLoad, "Roll Body") then
		t = Def.Sprite {
			Texture = NOTESKIN:GetPath(ret.HanubekiExtras.HoldType or HoldBodyRedir[sButtonToLoad], string.lower(sElementToLoad)),
			Frames = {{Frame = 0, Delay = 1}},
		}
	elseif sElementToLoad == "Receptor" then
		if sButtonToLoad == "Pedal" then
			t[#t+1] = Def.Sprite {
				Texture = NOTESKIN:GetPath("_common", "underlay foot"),
				Frames = {{Frame = 0, Delay = 1}},
				InitCommand = function (self) self:diffusealpha(0.5) end,
			}
		elseif sButtonToLoad == "Cymbal" then
			local cymRot = sButton == "Hi-Hat" and -60 or -45

			t[#t+1] = Def.Sprite {
				Texture = NOTESKIN:GetPath("_common", "underlay cymbal"),
				Frames = {{Frame = 0, Delay = 1}},
				InitCommand = function (self) self:diffusealpha(0.5):rotationz(cymRot) end,
			}
		end

		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath(TapRedir[sButtonToLoad], "receptor base"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ):effectclock("beat"):diffuseramp():effectcolor1({0.8, 0.8, 0.8, 1}):effectcolor2({1, 1, 1, 1}):effectoffset(0.05) end,
			NoneCommand = function (self) self:finishtweening():zoom(0.85):diffusealpha(0.9):linear(0.1):diffusealpha(1):zoom(1) end,
		}

		if sButton == "Center" and (not string.find(GAMESTATE:GetCurrentStyle(pn):GetStepsType(), "StepsType_Smx_")) then
			t[#t+1] = Def.Sprite {
				Texture = NOTESKIN:GetPath("_common", "overlay feet"),
				Frames = {{Frame = 0, Delay = 1}},
				InitCommand = function (self) self:diffusealpha(0.5) end,
			}
		end

		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath(TapRedir[sButtonToLoad], "receptor flash"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:blend("BlendMode_Add"):rotationy(rotY):rotationz(rotZ):diffusealpha(0) end,
			PressCommand = function (self) self:finishtweening():zoom(1):diffusealpha(0.6) end,
			LiftCommand = function (self) self:finishtweening():decelerate(0.1):diffusealpha(0):zoom(1.2) end,
			NoneCommand = function (self) self:finishtweening():zoom(0.85):diffusealpha(0.9):linear(0.15):diffusealpha(1):zoom(1) end,
		}
	elseif sElementToLoad == "Explosion" then
		local glowCommands = function(actor, color)
			return actor:finishtweening():diffuse(color):sleep(0.1):decelerate(0.2):diffusealpha(0)
		end

		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath(TapRedir[sButtonToLoad], "glow"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ):diffusealpha(0) end,
			W5Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_W5")) end,
			W4Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_W4")) end,
			W3Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_W3")) end,
			W2Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_W2")) end,
			W1Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_W1")) end,
			ProW5Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_ProW5")) end,
			ProW4Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_ProW4")) end,
			ProW3Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_ProW3")) end,
			ProW2Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_ProW2")) end,
			ProW1Command = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_ProW1")) end,
			HeldCommand = function (self) glowCommands(self, JudgmentLineToColor("JudgmentLine_Held")) end,
			JudgmentCommand = function (self) self:finishtweening() end,
			-- BrightCommand = function (self) self:visible(false) end,
			-- DimCommand = function (self) self:visible(true) end,
		}
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "bright"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:zoom(zoomValue):diffusealpha(0) end,
			W5Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W5"))) end,
			W4Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W4"))) end,
			W3Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W3"))) end,
			W2Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W2"))) end,
			W1Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W1"))) end,
			ProW5Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW5"))) end,
			ProW4Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW4"))) end,
			ProW3Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW3"))) end,
			ProW2Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW2"))) end,
			ProW1Command = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW1"))) end,
			HeldCommand = function (self) glowCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_Held"))) end,
			JudgmentCommand = function (self) self:finishtweening() end,
			BrightCommand = function (self) self:visible(true) end,
			DimCommand = function (self) self:visible(false) end,
		}
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "hold flash"),
			Frames = {{Frame = 0, Delay = 1}},
			HoldingOnCommand = function (self) self:diffusealpha(1):glowshift():effectcolor1({1, 1, 1, 0}):effectcolor2({1, 1, 1, 0.7}):effectperiod(0.1) end,
			HoldingOffCommand = function (self) self:diffusealpha(0) end,
			RollOnCommand = function (self) self:playcommand("HoldingOn") end,
			RollOffCommand = function (self) self:playcommand("HoldingOff") end,
			InitCommand = function (self) self:playcommand("HoldingOff"):finishtweening() end,
		}
		t[#t+1] = Def.Sprite {
			Texture = NOTESKIN:GetPath("_common", "mine explosion"),
			Frames = {{Frame = 0, Delay = 1}},
			InitCommand = function (self) self:blend("BlendMode_Add"):zoom(zoomValue):diffusealpha(0) end,
			HitMineCommand = function (self) self:finishtweening():diffusealpha(1):rotationz(0):linear(0.25):rotationz(90):linear(0.25):rotationz(180):diffusealpha(0) end,
		}
	end

	return t
end

-- This is the only required function.
ret.Load = func

-- Use this to override the game types' default Load() functions.
ret.CommonLoad = func

return ret
