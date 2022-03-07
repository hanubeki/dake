-- hanubeki's SUPER-SPAGHETTI™ NoteSkin lua

local ret = ... or {}

local game = GAMESTATE:GetCurrentGame():GetName()

-- Parameters table for extras
-- Rhythm (bood): colored by rhythm
-- Flat (bool): colored by column
-- ColorMine (bool): mines are colored by rhythm
-- Routine (bool): colored by player number
-- HoldType (string): replace hold/roll bodies by specified name
ret.HanubekiExtras = {
	["Rhythm"] = game == "dance" or game == "smx",
	["Flat"] = not (game == "dance" or game == "smx"),
}

-- Redirect table for buttons
ret.RedirTable =
{
	-- Dance (incl. solo and octo), Pump, pAra, Techno, smX, Horizon, Stepstage
	["Up"]        = game == "para"   and "ParaUp"                                                                               or     "Up",     -- D-ATXH-
	["Down"]      = game == "para"   and "ParaDown"                                                                             or     "Down",   -- D--TXH-
	["Left"]      = game == "para"   and "ParaLeft"                                     or game == "stepstage" and "StepLeft"   or     "Left",   -- D-ATXHS
	["Right"]     = game == "para"   and "ParaRight"                                    or game == "stepstage" and "StepRight"  or     "Right",  -- D-ATXHS
	["UpLeft"]    = game == "para"   and "ParaUpLeft"                                                                           or   "UpLeft",   -- sPAT-H-
	["UpRight"]   = game == "para"   and "ParaUpRight"                                                                          or   "UpRight",  -- sPAT-H-
	["DownLeft"]  = game == "para"   and "ParaDownLeft"                                                                         or "DownLeft",   -- oP-T-H-
	["DownRight"] = game == "para"   and "ParaDownRight"                                                                        or "DownRight",  -- oP-T-H-
	["Center"]    = game == "techno" and "Circle"        or game == "smx" and "Diamond" or game == "stepstage" and "StepCenter" or     "Center", -- -P-TXHS
	-- para 360
	["BackRight"] = game == "para"   and "ParaBackRight"                                                                        or "DownRight",  -- --A----
	["Back"]      = game == "para"   and "ParaBack"                                                                             or     "Down",   -- --A----
	["BackLeft"]  = game == "para"   and "ParaBackLeft"                                                                         or "DownLeft",   -- --A----
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
	-- kb7, kbx, be-mu (beat)
	["Key1"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyWhite",
	["Key2"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyBlue",
	["Key3"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyWhite",
	["Key4"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyBlue",
	["Key5"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyWhite",
	["Key6"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyBlue",
	["Key7"]         = game:match("^kb[7x]$") and "KeyWide" or "KeyWhite",
	["Key8"]         =                            "KeyWide",
	["Key9"]         =                            "KeyWide",
	["Key10"]        =                            "KeyWide",
	["Key11"]        =                            "KeyWide",
	["Key12"]        =                            "KeyWide",
	["Key13"]        =                            "KeyWide",
	["Key14"]        =                            "KeyWide",
	["Key15"]        =                            "KeyWide",
	["scratch"]      =                                         "Scratch",
	["scratch up"]   =                                         "Scratch",
	["scratch down"] =                                         "Scratch",
	-- po-mu (popn)
	["Left White"]   = "BurgerLower",
	["Left Yellow"]  = "BurgerUpper",
	["Left Green"]   = "BurgerLower",
	["Left Blue"]    = "BurgerUpper",
	["Red"]          = "BurgerLower",
	["Right Blue"]   = "BurgerUpper",
	["Right Green"]  = "BurgerLower",
	["Right Yellow"] = "BurgerUpper",
	["Right White"]  = "BurgerLower",
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
	-- guitar, gdgf, gh
	["Fret 1"] = game == "gdgf" and "Fret" or "Gem",
	["Fret 2"] = game == "gdgf" and "Fret" or "Gem",
	["Fret 3"] = game == "gdgf" and "Fret" or "Gem",
	["Fret 4"] = game == "gdgf" and "Fret" or "Gem",
	["Fret 5"] = game == "gdgf" and "Fret" or "Gem",
	["Fret 6"] = game == "gdgf" and "Fret" or "Gem",
	["open short"] = "OpenShort",
	["open long"] = "OpenLong",
	["open six"] = "OpenSix",
	["wailing"] = "Wailing",
	["Strum"] = "Strum",
	["Strum Up"] = "Strum",
	["Strum Down"] = "Strum",
	-- gddm
	["Left Crash"] = "Cymbal",
	["Hi-Hat"] = "Cymbal",
	["Hi-Hat Pedal"] = "Pedal",
	["Snare"] = "Tom",
	["High Tom"] = "Tom",
	["Kick"] = "Pedal",
	["Mid Tom"] = "Tom",
	["Floor Tom"] = "Tom",
	["Ride"] = "Cymbal",
	["Right Crash"] = "Cymbal",
	--taiko
	["Main"] = "Main",
}

local Fallback = {
	__index = function (table, key, value)
		return "_fallback"
	end
}

local FallbackZero = {
	__index = function (table, key, value)
		return 0
	end
}

local FallbackOne = {
	__index = function (table, key, value)
		return 1
	end
}

-- Redirect table for Tap Note/Hold Head
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

	["ParaLeft"]      = "_paraup",
	["ParaUpLeft"]    = "_paraupleft",
	["ParaUp"]        = "_paraup",
	["ParaUpRight"]   = "_paraupleft",
	["ParaRight"]     = "_paraup",
	["ParaDownRight"] = "_paraupleft",
	["ParaDown"]      = "_paraup",
	["ParaDownLeft"]  = "_paraupleft",
	["ParaBackRight"] = "_parabackleft",
	["ParaBack"]      = "_paraback",
	["ParaBackLeft"]  = "_parabackleft",

	["HandLeft"]  = "_handleft",
	["HandRight"] = "_handleft",
	["HandUp"]    = "_handdown",
	["HandDown"]  = "_handdown",

	["Ring"] = "_ring",

	["KeyWhite"] = "_keywhite",
	["KeyBlue"]  = "_keyblue",
	["Scratch"]  = "_scratch",

	["KeyWide"]  = "_scratch",

	["BurgerLower"] = "_burgerlower",
	["BurgerUpper"] = "_burgerupper",

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

	["Fret"] = "_scratch",
	["OpenShort"] = "_openshort",
	["OpenLong"] = "_openlong",
	["OpenSix"] = "_opensix",
	["Wailing"] = "_wailing",

	["Gem"] = "_gem",
	["Strum"] = "_strum",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",

	["Main"] = "_main",

	["StepLeft"]   = "_stepleft",
	["StepCenter"] = "_stepcenter",
	["StepRight"]  = "_stepleft",
}
setmetatable(TapRedir, Fallback)

-- Flip table for Tap Note/Hold Head
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
	["StepLeft"]      =   0,
	["StepRight"]     = 180,
}
setmetatable(TapRotateY, FallbackZero)

-- Rotation table for Tap Note/Hold Head
local TapRotateZ = {
	["Up"]        = 180,
	["Down"]      =   0,
	["Left"]      =  90,
	["Right"]     = 270,

	["UpLeft"]    =   0,
	["UpRight"]   =  90,
	["DownLeft"]  = 270,
	["DownRight"] = 180,

	["ParaLeft"]      =  -90,
	["ParaUp"]        =    0,
	["ParaRight"]     =   90,
	["ParaDown"]      =  180,

	["ParaUpLeft"]    =    0,
	["ParaUpRight"]   =   90,
	["ParaDownLeft"]  =  270,
	["ParaDownRight"] =  180,

	["ParaBack"]      = 0,

	["ParaBackLeft"]  =    0,
	["ParaBackRight"] =  270,

	["HandLeft"]  =   0,
	["HandRight"] = 180,
	["HandUp"]    = 180,
	["HandDown"]  =   0,
}
setmetatable(TapRotateZ, FallbackZero)

-- Rotation table for Tap Note/Hold Head
local WailRotateZ = {
	["Tap Wail Up"] = 0,
	["Tap Wail Down"] = 180,
	["Tap Wail Forward"] = -90,
	["Tap Wail Backward"] = 90,
}
setmetatable(WailRotateZ, FallbackZero)

-- Redirect table for Hold Body
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

	["ParaLeft"]      = "_thin",
	["ParaUpLeft"]    = "_thin",
	["ParaUp"]        = "_thin",
	["ParaUpRight"]   = "_thin",
	["ParaRight"]     = "_thin",
	["ParaDownRight"] = "_thin",
	["ParaDown"]      = "_thin",
	["ParaDownLeft"]  = "_thin",
	["ParaBackRight"] = "_thin",
	["ParaBack"]      = "_thin",
	["ParaBackLeft"]  = "_thin",

	["HandLeft"]  = "_handleft",
	["HandRight"] = "_handright",
	["HandUp"]    = "_handdown",
	["HandDown"]  = "_handdown",

	["Ring"] = "_ring",

	["KeyWhite"] = "_keywhite",
	["KeyBlue"]  = "_keyblue",
	["Scratch"]  = "_down",

	["KeyWide"]  = "_down",

	["BurgerLower"] = "_keywhite",
	["BurgerUpper"] = "_keyblue",

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

	["Fret"] = "_down",
	["OpenShort"] = "_strum",
	["OpenLong"] = "_strum",
	["OpenSix"] = "_strum",
	["Wailing"] = "_down",

	["Gem"] = "_thin",
	["Strum"] = "_strum",

	["Cymbal"] = "_down",
	["Tom"] = "_down",
	["Pedal"] = "_down",

	["Main"] = "_main",

	["StepLeft"]   = "_step",
	["StepCenter"] = "_step",
	["StepRight"]  = "_step",
}
setmetatable(HoldBodyRedir, Fallback)

-- Redirect table for Hold TopCap/BottomCap
local HoldCapRedir = {
--[[
	["ParaLeft"]    = "_paraleft",
	["ParaUpLeft"]  = "_paraupleft",
	["ParaUp"]      = "_paraup",
	["ParaUpRight"] = "_paraupright",
	["ParaRight"]   = "_pararight",
--]]

	["ParaLeft"]      = "_thin",
	["ParaUpLeft"]    = "_thin",
	["ParaUp"]        = "_thin",
	["ParaUpRight"]   = "_thin",
	["ParaRight"]     = "_thin",
	["ParaDownRight"] = "_thin",
	["ParaDown"]      = "_thin",
	["ParaDownLeft"]  = "_thin",
	["ParaBackRight"] = "_thin",
	["ParaBack"]      = "_thin",
	["ParaBackLeft"]  = "_thin",

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

	["KeyWide"] = "_scratch",

	["Fret"] = "_scratch",
	["OpenShort"] = "_strum",
	["OpenLong"] = "_strum",
	["OpenSix"] = "_strum",
	["Wailing"] = "_scratch",

	["Gem"] = "_thin",
	["Strum"] = "_strum",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",

	["StepLeft"]   = "_step",
	["StepCenter"] = "_step",
	["StepRight"]  = "_step",
}
local HoldCapRedirMeta = {
	__index = function (table, key, value)
		return "_" .. key:lower()
	end
}
setmetatable(HoldCapRedir, HoldCapRedirMeta)

-- Zoom table for common graphics in games
local ZoomTable = {
	["maniax"] = 1/2,
	["beat"] = 1/2,
	["be-mu"] = 1/2,
	["popn"] = 1/2,
	["po-mu"] = 1/2,
}
setmetatable(ZoomTable, FallbackOne)

-- Color table for rhythm
local RhythmColors = {
--[[
	 0: Red
	 2: Blue
	 4: Green
	 6: Yellow
	 8: Violet
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
	["4th"] = 0,
	["8th"] = 2,
	["12th"] = 4,
	["16th"] = 6,
	["24th"] = 8,
	["32nd"] = 10,
	["48th"] = 12,
	["64th"] = 14,
	["192nd"] = 16,
}
setmetatable(RhythmColors, FallbackZero)

-- Color table for column
local ColumnColors = {
--[[
	 0: Red
	 2: Blue
	 4: Green
	 6: Yellow
	 8: Violet
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
		["BackRight"] = 0,
		["Back"] = 0,
		["BackLeft"] = 0,
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
	["horizon"] = {
		["DownLeft"] = 2,
		["Left"] = 8,
		["UpLeft"] = 0,
		["Down"] = 4,
		["Center"] = 6,
		["Up"] = 18,
		["UpRight"] = 0,
		["Right"] = 8,
		["DownRight"] = 2,
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
	["kbx"] = { -- XXX: even number columns except Key8 are not final
		["Key1"] = 0, -- L
		["Key2"] = 14,
		["Key3"] = 16, -- 1
		["Key4"] = 14,
		["Key5"] = 2, -- 2
		["Key6"] = 14,
		["Key7"] = 16, -- 3
		["Key8"] = 18, -- 4
		["Key9"] = 16, -- 5
		["Key10"] = 14,
		["Key11"] = 2, -- 6
		["Key12"] = 14,
		["Key13"] = 16, -- 7
		["Key14"] = 14,
		["Key15"] = 0, -- R
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
	["be-mu"] = {
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
	["po-mu"] = {
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
		["DownLeftFoot"] = 2,
		["AnyLeftFoot"] = 6,
		["UpLeftFoot"] = 0,
		["UpLeftFist"] = 0,
		["AnyLeftFist"] = 6,
		["DownLeftFist"] = 2,
		["DownRightFist"] = 2,
		["AnyRightFist"] = 6,
		["UpRightFist"] = 0,
		["UpRightFoot"] = 0,
		["AnyRightFoot"] = 6,
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
	["gdgf"] = {
		["Fret 1"] = 0,
		["Fret 2"] = 4,
		["Fret 3"] = 2,
		["Fret 4"] = 6,
		["Fret 5"] = 12,
		["Fret 6"] = 10, -- not in original game
		["open short"] = 8,
		["open long"] = 8,
		["open six"] = 8,
		["wailing"] = 4,
	},
	["gh"] = {
		["Fret 1"] = 4,
		["Fret 2"] = 0,
		["Fret 3"] = 6,
		["Fret 4"] = 2,
		["Fret 5"] = 18,
		["Fret 6"] = 10, -- not in original game
		["Strum Up"] = 8,
		["Strum Down"] = 8,
	},
--[[
	["gh"] = { -- Alternate Color
		["Fret 1"] = 0,
		["Fret 2"] = 6,
		["Fret 3"] = 2,
		["Fret 4"] = 18
		["Fret 5"] = 4,
		["Fret 6"] = 10, -- not in original game
		["Strum Up"] = 8,
		["Strum Down"] = 8,
	},
--]]
	["gddm"] = {
		["Left Crash"] = 12,
		["Hi-Hat"] = 2,
		["Hi-Hat Pedal"] = 12,
		["Snare"] = 6,
		["High Tom"] = 4,
		["Kick"] = 8,
		["Mid Tom"] = 0,
		["Floor Tom"] = 18,
		["Ride"] = 2,
		["Right Crash"] = 14,
	},
	["taiko"] = {
		["Main"] = 0,
	},
	["stepstage"] = {
		["Left"] = 0,
		["Center"] = 0,
		["Right"] = 0,
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
		["PlayerNumber_P5"] = 8,
	},
}
local ColumnColorsMeta = {
	__index = function (table, key, value)
		local dummy = {}
		setmetatable(dummy, FallbackZero)
		return dummy
	end
}
setmetatable(ColumnColors, ColumnColorsMeta)

local NoteUnderlayTable = {
	["gdgf"] = {
		["wailing"]   = {["texture"] = "guitar", ["rot"] = 0, ["diffuse"] = {0.5, 0.5, 0.5, 1}},
	},
	["gddm"] = {
		["Left Crash"]   = {["texture"] = "cymbal", ["rot"] =   0, ["diffuse"] = {1,    0,   0.5, 1}},
		["Hi-Hat"]       = {["texture"] = "cymbal", ["rot"] = -60, ["diffuse"] = {0,    0.5, 1,   1}},
		["Hi-Hat Pedal"] = {["texture"] = "foot",   ["rot"] =   0, ["diffuse"] = {1,    0,   0.5, 1}},
		["Floor Tom"]    = {["texture"] = "tom",    ["rot"] =   0, ["diffuse"] = {1,    0.5, 0,   1}},
		["Kick"]         = {["texture"] = "foot",   ["rot"] =   0, ["diffuse"] = {0.5,  0,   1,   1}},
		["Ride"]         = {["texture"] = "cymbal", ["rot"] =  45, ["diffuse"] = {0,    0.5, 1,   1}},
		["Right Crash"]  = {["texture"] = "cymbal", ["rot"] =  15, ["diffuse"] = {0.75, 1,   0.5, 1}},
	},
}
local NoteUnderlayMeta = {
	__index = function (table, key, value)
		return {}
	end
}
setmetatable(NoteUnderlayTable, NoteUnderlayMeta)

-- Table for receptor glyph
local ReceptorGlyphTable = {
	["beat"] = {
		["scratch"] = {["texture"] = "_scratch", ["x"] = 0, ["y"] = 44, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key1"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key2"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key3"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key4"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key5"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key6"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key7"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
	},
	["be-mu"] = {
		["scratch"] = {["texture"] = "_scratch", ["x"] = 0, ["y"] = 44, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key1"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key2"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key3"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key4"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key5"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key6"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key7"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
	},
	["popn"] = {
		["Left White"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0.75, 1.0}},
		["Left Yellow"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0,    1.0}},
		["Left Green"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0,    0.5,   0,    1.0}},
		["Left Blue"]    = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0,    0.375, 0.75, 1.0}},
		["Red"]          = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0,     0,    1.0}},
		["Right Blue"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0,    0.375, 0.75, 1.0}},
		["Right Green"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0,    0.5,   0,    1.0}},
		["Right Yellow"] = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0,    1.0}},
		["Right White"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0.75, 1.0}},
	},
	["kb7"] = {
		["Key1"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1, 1,    1, 1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key2"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0, 0.75, 1, 1}, ["glow"] = {0,    0.15, 0.2, 0}},
		["Key3"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1, 1,    1, 1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key4"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1, 0.5,  0, 1}, ["glow"] = {0.2,  0.1,  0,   0}},
		["Key5"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1, 1,    1, 1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key6"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0, 0.75, 1, 1}, ["glow"] = {0,    0.15, 0.2, 0}},
		["Key7"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1, 1,    1, 1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
	},
	["kbx"] = {
		["Key1"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    0.25, 0.25, 1}, ["glow"] = {0.2,  0,    0,   0}},
		["Key2"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key3"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key4"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key5"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0,    0.75, 1,    1}, ["glow"] = {0,    0.15, 0.2, 0}},
		["Key6"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key7"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key8"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    0.5,  0,    1}, ["glow"] = {0.2,  0.1,  0,   0}},
		["Key9"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key10"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key11"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0,    0.75, 1,    1}, ["glow"] = {0,    0.15, 0.2, 0}},
		["Key12"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key13"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key14"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key15"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    0.25, 0.25, 1}, ["glow"] = {0.2,  0,    0,   0}},
	},
	["po-mu"] = {
		["Left White"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0.75, 1.0}},
		["Left Yellow"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0,    1.0}},
		["Left Green"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0,    0.5,   0,    1.0}},
		["Left Blue"]    = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0,    0.375, 0.75, 1.0}},
		["Red"]          = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0,     0,    1.0}},
		["Right Blue"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0,    0.375, 0.75, 1.0}},
		["Right Green"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0,    0.5,   0,    1.0}},
		["Right Yellow"] = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0,    1.0}},
		["Right White"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0.75, 1.0}},
	},
	["gddm"] = {
		["Left Crash"]   = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 48, ["rot"] = -45, ["diffuse"] = {1,    0,   0.5, 1}},
		["Hi-Hat"]       = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 56, ["rot"] = -60, ["diffuse"] = {0,    0.5, 1,   1}},
		["Hi-Hat Pedal"] = {["texture"] = "_pedal",  ["x"] = 0, ["y"] = 60, ["rot"] = -45, ["diffuse"] = {1,    0.8, 0.9, 1}},
		["Snare"]        = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 56, ["rot"] =   0, ["diffuse"] = {1,    1,   0,   1}},
		["High Tom"]     = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 40, ["rot"] =   0, ["diffuse"] = {0,    1,   0,   1}},
		["Kick"]         = {["texture"] = "_pedal",  ["x"] = 0, ["y"] = 60, ["rot"] =   0, ["diffuse"] = {0.9,  0.8, 1,   1}},
		["Mid Tom"]      = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 40, ["rot"] =   0, ["diffuse"] = {1,    0,   0,   1}},
		["Floor Tom"]    = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 56, ["rot"] =   0, ["diffuse"] = {1,    0.5, 0,   1}},
		["Ride"]         = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 48, ["rot"] =  45, ["diffuse"] = {0,    0.5, 1,   1}},
		["Right Crash"]  = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 40, ["rot"] =  15, ["diffuse"] = {0.75, 1,   0.5, 1}},
	},
}
local ReceptorGlyphMeta = {
	__index = function (table, key, value)
		return {}
	end
}
setmetatable(ReceptorGlyphTable, ReceptorGlyphMeta)

-- Table for receptor laser
local ReceptorLaserTable = {
	["para"] = {
		["Left"]      = {["width"] = 48, ["diffuse"] = {1, 0, 0.5, 0.7}},
		["UpLeft"]    = {["width"] = 48, ["diffuse"] = {1, 0, 0.5, 0.7}},
		["Up"]        = {["width"] = 48, ["diffuse"] = {1, 0, 0.5, 0.7}},
		["UpRight"]   = {["width"] = 48, ["diffuse"] = {1, 0, 0.5, 0.7}},
		["Right"]     = {["width"] = 48, ["diffuse"] = {1, 0, 0.5, 0.7}},
		["BackRight"] = {["width"] = 48, ["diffuse"] = {1, 0, 0,   0.7}},
		["Back"]      = {["width"] = 48, ["diffuse"] = {1, 0, 0,   0.7}},
		["BackLeft"]  = {["width"] = 48, ["diffuse"] = {1, 0, 0,   0.7}},
	},
	["maniax"] = {
		["HandLrLeft"]  = {["width"] = 32, ["diffuse"] = {0, 0.5, 1,   0.7}},
		["HandUpLeft"]  = {["width"] = 32, ["diffuse"] = {1, 0,   0.5, 0.7}},
		["HandUpRight"] = {["width"] = 32, ["diffuse"] = {1, 0,   0.5, 0.7}},
		["HandLrRight"] = {["width"] = 32, ["diffuse"] = {0, 0.5, 1,   0.7}},
	},
	["beat"] = {
		["scratch"] = {["width"] = 60, ["diffuse"] = {0.25, 1, 1, 1}},
		["Key1"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
		["Key2"] = {["width"] = 28, ["diffuse"] = {0.5, 0.75, 1, 1}},
		["Key3"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
		["Key4"] = {["width"] = 28, ["diffuse"] = {0.5, 0.75, 1, 1}},
		["Key5"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
		["Key6"] = {["width"] = 28, ["diffuse"] = {0.5, 0.75, 1, 1}},
		["Key7"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
	},
	["be-mu"] = {
		["scratch"] = {["width"] = 60, ["diffuse"] = {0.25, 1, 1, 1}},
		["Key1"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
		["Key2"] = {["width"] = 28, ["diffuse"] = {0.5, 0.75, 1, 1}},
		["Key3"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
		["Key4"] = {["width"] = 28, ["diffuse"] = {0.5, 0.75, 1, 1}},
		["Key5"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
		["Key6"] = {["width"] = 28, ["diffuse"] = {0.5, 0.75, 1, 1}},
		["Key7"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5, 1, 1}},
	},
	["popn"] = {
		["Left White"]   = {["width"] = 36, ["diffuse"] = {1, 1,    1, 1.0}, ["judgecolored"] = true},
		["Left Yellow"]  = {["width"] = 28, ["diffuse"] = {1, 1,    0, 1.0}, ["judgecolored"] = true},
		["Left Green"]   = {["width"] = 36, ["diffuse"] = {0, 0.75, 0, 1.0}, ["judgecolored"] = true},
		["Left Blue"]    = {["width"] = 28, ["diffuse"] = {0, 0.5,  1, 1.0}, ["judgecolored"] = true},
		["Red"]          = {["width"] = 36, ["diffuse"] = {1, 0,    0, 1.0}, ["judgecolored"] = true},
		["Right Blue"]   = {["width"] = 28, ["diffuse"] = {0, 0.5,  1, 1.0}, ["judgecolored"] = true},
		["Right Green"]  = {["width"] = 36, ["diffuse"] = {0, 0.75, 0, 1.0}, ["judgecolored"] = true},
		["Right Yellow"] = {["width"] = 28, ["diffuse"] = {1, 1,    0, 1.0}, ["judgecolored"] = true},
		["Right White"]  = {["width"] = 36, ["diffuse"] = {1, 1,    1, 1.0}, ["judgecolored"] = true},
	},
	["po-mu"] = {
		["Left White"]   = {["width"] = 36, ["diffuse"] = {1, 1,    1, 1.0}, ["judgecolored"] = true},
		["Left Yellow"]  = {["width"] = 28, ["diffuse"] = {1, 1,    0, 1.0}, ["judgecolored"] = true},
		["Left Green"]   = {["width"] = 36, ["diffuse"] = {0, 0.75, 0, 1.0}, ["judgecolored"] = true},
		["Left Blue"]    = {["width"] = 28, ["diffuse"] = {0, 0.5,  1, 1.0}, ["judgecolored"] = true},
		["Red"]          = {["width"] = 36, ["diffuse"] = {1, 0,    0, 1.0}, ["judgecolored"] = true},
		["Right Blue"]   = {["width"] = 28, ["diffuse"] = {0, 0.5,  1, 1.0}, ["judgecolored"] = true},
		["Right Green"]  = {["width"] = 36, ["diffuse"] = {0, 0.75, 0, 1.0}, ["judgecolored"] = true},
		["Right Yellow"] = {["width"] = 28, ["diffuse"] = {1, 1,    0, 1.0}, ["judgecolored"] = true},
		["Right White"]  = {["width"] = 36, ["diffuse"] = {1, 1,    1, 1.0}, ["judgecolored"] = true},
	},
	["kb7"] = {
		["Key1"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key2"] = {["width"] = 60, ["diffuse"] = {0.4,  0.4,  1,   0.7}},
		["Key3"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key4"] = {["width"] = 60, ["diffuse"] = {1,    0.75, 0.4, 0.7}},
		["Key5"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key6"] = {["width"] = 60, ["diffuse"] = {0.4,  0.4,  1,   0.7}},
		["Key7"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
	},
	["kbx"] = {
		["Key1"]  = {["width"] = 60, ["diffuse"] = {1.0,  0.6,  0.4, 0.7}},
		["Key2"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key3"]  = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key4"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key5"]  = {["width"] = 60, ["diffuse"] = {0.4,  0.4,  1,   0.7}},
		["Key6"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key7"]  = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key8"]  = {["width"] = 60, ["diffuse"] = {1,    0.75, 0.4, 0.7}},
		["Key9"]  = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key10"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key11"] = {["width"] = 60, ["diffuse"] = {0.4,  0.4,  1,   0.7}},
		["Key12"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key13"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key14"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key15"] = {["width"] = 60, ["diffuse"] = {1.0,  0.6,  0.4, 0.7}},
	},
	["gddm"] = {
		["Left Crash"]   = {["width"] = 60, ["diffuse"] = {1,    0,   0.5, 0.25}, ["pulse"] = true},
		["Hi-Hat"]       = {["width"] = 60, ["diffuse"] = {0,    0.5, 1,   0.25}, ["pulse"] = true},
		["Hi-Hat Pedal"] = {["width"] = 60, ["diffuse"] = {1,    0,   0.5, 0.25}, ["pulse"] = true},
		["Snare"]        = {["width"] = 60, ["diffuse"] = {1,    1,   0,   0.25}, ["pulse"] = true},
		["High Tom"]     = {["width"] = 60, ["diffuse"] = {0,    1,   0,   0.25}, ["pulse"] = true},
		["Kick"]         = {["width"] = 60, ["diffuse"] = {0.5,  0,   1,   0.25}, ["pulse"] = true},
		["Mid Tom"]      = {["width"] = 60, ["diffuse"] = {1,    0,   0,   0.25}, ["pulse"] = true},
		["Floor Tom"]    = {["width"] = 60, ["diffuse"] = {1,    0.5, 0,   0.25}, ["pulse"] = true},
		["Ride"]         = {["width"] = 60, ["diffuse"] = {0,    0.5, 1,   0.25}, ["pulse"] = true},
		["Right Crash"]  = {["width"] = 60, ["diffuse"] = {0.75, 1,   0.5, 0.25}, ["pulse"] = true},
	},
	["gdgf"] = {
		["Fret 1"] = {["width"] = 60, ["diffuse"] = {1,   0,   0,   0.25}},
		["Fret 2"] = {["width"] = 60, ["diffuse"] = {0,   1,   0,   0.25}},
		["Fret 3"] = {["width"] = 60, ["diffuse"] = {0,   0.5, 1,   0.25}},
		["Fret 4"] = {["width"] = 60, ["diffuse"] = {1,   1,   0,   0.25}},
		["Fret 5"] = {["width"] = 60, ["diffuse"] = {1,   0,   0.5, 0.25}},
		["Fret 6"] = {["width"] = 60, ["diffuse"] = {0,   1,   0.5, 0.25}},
		["Strum"]  = {["width"] = 60, ["diffuse"] = {0.5, 0,   1,   0.25}},
	},
}
local ReceptorLaserMeta = {
	__index = function (table, key, value)
		return {}
	end
}
setmetatable(ReceptorLaserTable, ReceptorLaserMeta)

ret.Redir = function (sButton, sElement)
	-- Instead of separate hold heads, use the tap note graphics.
	if sElement:find("Hold Head") or sElement:find("Roll Head") or
	   sElement == "Tap Fake"
	then
		sElement = "Tap Note"
	end

	-- Instead of separate hold red, use the tap red graphics.
	if (sElement:find("Hold Red") or sElement:find("Roll Red")) and not (sElement:find(" .*cap") or sElement:find(" Body")) then
		sElement = "Tap Red"
	end

	-- Instead of separate hold blues, use the tap blue graphics.
	if (sElement:find("Hold Blue") or sElement:find("Roll Blue")) and not (sElement:find(" .*cap") or sElement:find(" Body")) then
		sElement = "Tap Blue"
	end

	-- Instead of separate hold yellows, use the tap yellow graphics.
	if (sElement:find("Hold Yellow") or sElement:find("Roll Yellow")) and not (sElement:find(" .*cap") or sElement:find(" Body")) then
		sElement = "Tap Yellow"
	end

	-- Instead of separate hold heads, use the tap note graphics.
	if (sElement:find("Hold BigRed") or sElement:find("Roll BigRed")) and not (sElement:find(" .*cap") or sElement:find(" Body")) then
		sElement = "Tap BigRed"
	end

	-- Instead of separate hold blues, use the tap blue graphics.
	if (sElement:find("Hold BigBlue") or sElement:find("Roll BigBlue")) and not (sElement:find(" .*cap") or sElement:find(" Body")) then
		sElement = "Tap BigBlue"
	end

	-- Instead of separate hold yellows, use the tap yellow graphics.
	if (sElement:find("Hold BigYellow") or sElement:find("Roll BigYellow")) and not (sElement:find(" .*cap") or sElement:find(" Body")) then
		sElement = "Tap BigYellow"
	end

	-- Instead of separate hold jumps, use the tap jump graphics.
	if sElement:find("Hold Jump") or sElement:find("Roll Jump") then
		if sElement:find("Red") then
			sElement = "Jump Red"
		elseif sElement:find("Blue") then
			sElement = "Jump Red"
		elseif sElement:find("Yellow") then
			sElement = "Jump Red"
		else
			sElement = "Jump Note"
		end
	end

	-- Instead of separate hold tapsheads, use the tap taps graphics.
	if sElement:find("Hold Tapshead") or sElement:find("Roll Tapshead") then
		sElement = "Tap Taps"
	end

	-- Instead of separate hold hopoheads, use the tap hopo graphics.
	if sElement:find("Hold Hopohead") or sElement:find("Roll Hopohead") then
		sElement = "Tap Hopo"
	end

	-- Instead of separate hold lifttails, use the tap lift graphics.
	if sElement:find("Hold LiftTail") or sElement:find("Roll LiftTail") then
		sElement = "Tap Lift"
	end

	-- Instead of separate mine heads, use the tap mine graphics.
	if sElement == "Mine Head" then
		sElement = "Tap Mine"
	end

	if game == "taiko" then
		sElement = sElement:gsub("Roll", "Hold")
		sElement = sElement:gsub("Inactive", "Active")
	end

	if game == "stepstage" then
		if sElement:find("Hold") then
			sElement = sElement:gsub("Inactive", "Active")
		end

		if sElement:find("Roll") then
			sElement = sElement:gsub(" Red", ""):gsub(" Blue", ""):gsub(" Yellow", "")
		end
	end

	sButton = ret.RedirTable[sButton] or "Fallback"

	return sButton, sElement
end

ret.Blank = {
	["Hold Tail Active"] = true,
	["Hold Tail Inactive"] = true,
	["Roll Tail Active"] = true,
	["Roll Tail Inactive"] = true,
	["Mine Tail Active"] = true,
	["Mine Tail Inactive"] = true,
	["Mine LiftTail Active"] = true,
	["Mine LiftTail Inactive"] = true,
}

local function func()
	local sButton = Var "Button"
	local sGameButton = INPUTFILTER:GameButtonToKeyMapped(Var "GameButton", Var "Player")
	local sElement = Var "Element"
	local sColor = Var "Color"
	local sEffect = Var "Effect"
	local pn = Var "Player" or GAMESTATE:GetMasterPlayerNumber()
	local sPlayer = pn

	if game == "taiko" then
		ret.HanubekiExtras.Rhythm = false
		ret.HanubekiExtras.Flat = false
		ret.HanubekiExtras.ColorMine = false
		ret.HanubekiExtras.Routine = false
		ret.HanubekiExtras.HoldType = nil
	elseif game == "stepstage" then
		ret.HanubekiExtras.Rhythm = false
		ret.HanubekiExtras.Flat = false
		ret.HanubekiExtras.ColorMine = false
		ret.HanubekiExtras.Routine = false
		ret.HanubekiExtras.HoldType = nil
	end

	if ret.HanubekiExtras.Routine then
		sPlayer = "PlayerNumber_" .. (sElement:match("^P%d+") or "P1")
		if sPlayer ~= "PlayerNumber_P1" then
			sElement = sElement:match("^P%d+ (.*)$")
		end
	end

	if GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Kickbox_Human" then
		if sButton:find("LeftFoot") then
			sButton = "AnyLeftFoot"
		end
		if sButton:find("RightFoot") then
			sButton = "AnyRightFoot"
		end

		if sButton:find("LeftFist") then
			sButton = "AnyLeftFist"
		end
		if sButton:find("RightFist") then
			sButton = "AnyRightFist"
		end
	end

	if GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Kickbox_Insect" then
		if sButton:find("LeftFoot") then
			sButton = "AnyLeftFoot"
		end
		if sButton:find("RightFoot") then
			sButton = "AnyRightFoot"
		end
	end

	if ret.Blank[sElement] then
		-- Return a blank element. If SpriteOnly is set,
		-- we need to return a sprite; otherwise just return
		-- a dummy actor.
		local t = Var "SpriteOnly" and LoadActor("_blank") or Def.Actor {}
		return t .. {
			InitCommand = function (self) self:visible(false) end
		}
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

	-- Functions to load Sprite
	local function singleSprite (button, element)
		return Def.Sprite {
			Texture = NOTESKIN:GetPath(button, element),
			Frames = {{Frame = 0, Delay = 1}},
		}
	end

	local GHEffects = {
		["StarInit"] = function (self, params)
			self:visible(false)
		end,
	}
	local GHEffectsMeta = {
		__index = function (table, key, value)
			return function(self, params) end
		end
	}

	if game == "gh" then
		GHEffects.Init = function (self, params)
			if tonumber(sEffect) > 0 then
				self:visible(false)
			else
				self:visible(true)
			end
		end

		GHEffects.Fever = function (self, params)
			if params.pn ~= pn then return end
			if tonumber(sEffect) == 0 then
				if params.Active then
					self:glow({0, 0.5, 1, 0.7})
				else
					self:glow({1, 1, 1, 0})
				end
			end
		end

		GHEffects.FeverMissed = function(self, params)
			if params.pn ~= pn then return end
			if tonumber(sEffect) > 0 then
				if params.Missed then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end

		GHEffects.StarInit = function (self, params)
			if tonumber(sEffect) > 0 then
				self:visible(true)
			else
				self:visible(false)
			end

			if not sButton:find("Strum") then
				self:spin():effectclock("beat"):effectmagnitude(0, 0, 60)
			end
		end

		GHEffects.StarMissed = function(self, params)
			if params.pn ~= pn then return end
			if tonumber(sEffect) > 0 then
				if params.Missed then
					self:visible(false)
				else
					self:visible(true)
				end
			end
		end
	end

	setmetatable(GHEffects, GHEffectsMeta)

	local function colorSprite (button, element, color)
		return Def.Sprite {
			Texture = NOTESKIN:GetPath(button, element),
			Frames = {{Frame = color, Delay = 1}},
		}
	end

	local t = Def.ActorFrame {}

	if sElementToLoad == "Tap Note" or
	   sElementToLoad == "Tap Hopo" or
	   sElementToLoad == "Tap Taps" or
	   sElementToLoad == "Tap Red" or
	   sElementToLoad == "Tap Blue" or
	   sElementToLoad == "Tap Yellow" or
	   sElementToLoad == "Tap BigRed" or
	   sElementToLoad == "Tap BigBlue" or
	   sElementToLoad == "Tap BigYellow"
	then
		local color = 0

		if sButton ~= "wailing" then
			if ret.HanubekiExtras.Routine then
				color = ColumnColors["Routine"][sPlayer]
			elseif ret.HanubekiExtras.Rhythm then
				color = RhythmColors[sColor]
			elseif ret.HanubekiExtras.Flat then
				color = ColumnColors[game][sButton]
			end
		end

		if NoteUnderlayTable[game][sButton] then
			t[#t+1] = singleSprite("_common", "underlay " .. NoteUnderlayTable[game][sButton].texture) .. {
				InitCommand = function (self) self:rotationz(NoteUnderlayTable[game][sButton].rot):diffuse(NoteUnderlayTable[game][sButton].diffuse) end,
			}
		end

		local tapNote = sElementToLoad:lower()

		if sElementToLoad == "Tap Hopo" then
			tapNote = "tap note"
		elseif sElementToLoad == "Tap Taps" then
			tapNote = "tap note"
		end

		t[#t+1] = colorSprite(TapRedir[sButtonToLoad], tapNote, color) .. {
			InitCommand = function (self)
				self:rotationy(rotY):rotationz(rotZ)
				GHEffects.Init(self, {})
			end,
			FeverMessageCommand = GHEffects.Fever,
			FeverMissedMessageCommand = GHEffects.FeverMissed,
		}

		t[#t+1] = colorSprite(sButton:find("Strum") and "_strum" or "_common", "tap star", color) .. {
			InitCommand = function (self)
				self:z(-4):glow({0.5, 1, 1, 1})
				GHEffects.StarInit(self, {})
			end,
			FeverMissedMessageCommand = GHEffects.StarMissed,
		}

		t[#t+1] = colorSprite(sButton:find("Strum") and "_strum" or "_common", "tap star", color) .. {
			InitCommand = function (self)
				GHEffects.StarInit(self, {})
			end,
			FeverMissedMessageCommand = GHEffects.StarMissed,
		}

		if sElementToLoad == "Tap Hopo" then
			t[#t+1] = singleSprite(sButton:find("Strum") and "_strum" or "_common", "overlay hopo") .. {
				InitCommand = function (self)
					self:z(8)
				end,
			}
		elseif sElementToLoad == "Tap Taps" then
			t[#t+1] = singleSprite(sButton:find("Strum") and "_strum" or "_common", "overlay taps") .. {
				InitCommand = function (self)
					self:z(8)
				end,
			}
		end

		if sButton == "Center" and (game == "pump" or game == "techno") then
			t[#t+1] = singleSprite("_common", "overlay feet")
		end

		if sButton == "Main" then
			t[#t+1] = singleSprite(sElement:find("Big") and "_big" or "_common", "overlay smiley")
		end

		if game:match("^kb[7x]$") then
			-- Guidelines for kbx, work in progress
			local guidelineColors = {
				["kb7"] = {
					["Key1"] = {1,   1,    1,   1},
					["Key2"] = {0.5, 0.75, 1,   1},
					["Key3"] = {1,   1,    1,   1},
					["Key4"] = {1,   0.75, 0.5, 1},
					["Key5"] = {1,   1,    1,   1},
					["Key6"] = {0.5, 0.75, 1,   1},
					["Key7"] = {1,   1,    1,   1},
				},
				["kbx"] = {
					["Key1"]  = {1,    0.5,  0.5,  1},
					["Key2"]  = {0.75, 1,    0.5,  1},
					["Key3"]  = {1,    1,    1,    1},
					["Key4"]  = {0.75, 1,    0.5,  1},
					["Key5"]  = {0.5,  0.75, 1,    1},
					["Key6"]  = {0.75, 1,    0.5,  1},
					["Key7"]  = {1,    1,    1,    1},
					["Key8"]  = {1,    0.75, 0.5,  1},
					["Key9"]  = {1,    1,    1,    1},
					["Key10"] = {0.75, 1,    0.5,  1},
					["Key11"] = {0.5,  0.75, 1,    1},
					["Key12"] = {0.75, 1,    0.5,  1},
					["Key13"] = {1,    1,    1,    1},
					["Key14"] = {0.75, 1,    0.5,  1},
					["Key15"] = {1,    0.5,  0.5,  1},
				},
			}

			-- TODO: make guideline height 1.5x of scroll BPM
			t[#t+1] = Def.Quad {
				InitCommand = function (self) self:zoomto(4, 192):halign(0):x(-32):diffuse(guidelineColors[game][sButton]):faderight(0.25):fadetop(0.5):fadebottom(0.5) end,
			}
			t[#t+1] = Def.Quad {
				InitCommand = function (self) self:zoomto(4, 192):halign(1):x(32):diffuse(guidelineColors[game][sButton]):fadeleft(0.25):fadetop(0.5):fadebottom(0.5) end,
			}
		end
	elseif sElementToLoad == "Jump Note" or
		sElementToLoad == "Jump Red" or
		sElementToLoad == "Jump Blue" or
		sElementToLoad == "Jump Yellow" or
		sElementToLoad == "Jump BigRed" or
		sElementToLoad == "Jump BigBlue" or
		sElementToLoad == "Jump BigYellow"
	 then
		local color = 0

		if sButton ~= "wailing" then
			if ret.HanubekiExtras.Routine then
				color = ColumnColors["Routine"][sPlayer]
			elseif ret.HanubekiExtras.Rhythm then
				color = RhythmColors[sColor]
			elseif ret.HanubekiExtras.Flat then
				color = ColumnColors[game][sButton]
			end
		end

		local bodyAlign = 0.5

		if sButtonToLoad == "StepLeft" then
			bodyAlign = 0
		elseif sButtonToLoad == "StepRight" then
			bodyAlign = 1
		end

		local bodyZoom = 1

		if sButtonToLoad == "StepLeft" or sButtonToLoad == "StepRight" or sButtonToLoad == "StepCenter" then
			bodyZoom = 0.75
		end

		local tapNote = "Tap Note"
		if sElementToLoad:find("Red") then
			tapNote = "Tap Red"
		elseif sElementToLoad:find("Blue") then
			tapNote = "Tap Blue"
		elseif sElementToLoad:find("Yellow") then
			tapNote = "Tap Yellow"
		end

		t[#t+1] = singleSprite(TapRedir[sButtonToLoad], sElementToLoad:lower()) .. {
			InitCommand = function (self) self:halign(bodyAlign):zoomx(bodyZoom) end
		}

		t[#t+1] = colorSprite(TapRedir[sButtonToLoad], tapNote:lower(), color) .. {
			InitCommand = function (self)
				self:rotationy(rotY):rotationz(rotZ)
				GHEffects.Init(self, {})
			end,
			FeverMessageCommand = GHEffects.Fever,
			FeverMissedMessageCommand = GHEffects.FeverMissed,
		}
	elseif sElementToLoad == "Tap Mine" then
		local color = 0

		if ret.HanubekiExtras.ColorMine then
			color = RhythmColors[sColor]
		end

		t[#t+1] = colorSprite("_common", "mine base", color) .. {
			InitCommand = function (self)
				self:zoom(zoomValue)
				GHEffects.Init(self, {})
			end,
			FeverMessageCommand = GHEffects.Fever,
			FeverMissedMessageCommand = GHEffects.FeverMissed,
		}
		t[#t+1] = singleSprite("_common", "mine parts") .. {
			InitCommand = function (self) self:zoom(zoomValue):spin():effectclock("beat"):effectmagnitude(0, 0, -60) end,
		}
		t[#t+1] = singleSprite("_common", "mine parts") .. {
			InitCommand = function (self) self:zoom(zoomValue):rotationz(120):spin():effectclock("beat"):effectmagnitude(0, 0, -60) end,
		}
		t[#t+1] = singleSprite("_common", "mine parts") .. {
			InitCommand = function (self) self:zoom(zoomValue):rotationz(240):spin():effectclock("beat"):effectmagnitude(0, 0, -60) end,
		}
	elseif sElementToLoad == "Tap Lift" then
		t[#t+1] = singleSprite("_common", "tap lift") .. {
			InitCommand = function (self)
				self:zoom(zoomValue)
				GHEffects.Init(self, {})
			end,
			FeverMessageCommand = GHEffects.Fever,
			FeverMissedMessageCommand = GHEffects.FeverMissed,
		}
	elseif sElementToLoad:find("Tap Wail") then
		local rotZ = WailRotateZ[sElementToLoad]

		t[#t+1] = singleSprite("_common", "underlay guitar") .. {
			InitCommand = function (self) self:diffuse({0, 1, 0, 0.5}) end,
		}

		t[#t+1] = singleSprite("_wailing", "tap wail up") .. {
			InitCommand = function (self) self:rotationz(rotZ) end,
		}
	elseif sElementToLoad:find("Hold .*cap") or sElementToLoad:find("Roll .*cap") or
	       sElementToLoad:find("Hold Red .*cap") or sElementToLoad:find("Roll Red .*cap") or
	       sElementToLoad:find("Hold Blue .*cap") or sElementToLoad:find("Roll Blue .*cap") or
	       sElementToLoad:find("Hold Yellow .*cap") or sElementToLoad:find("Roll Yellow .*cap") or
	       sElementToLoad:find("Hold BigRed .*cap") or sElementToLoad:find("Roll BigRed .*cap") or
	       sElementToLoad:find("Hold BigBlue .*cap") or sElementToLoad:find("Roll BigBlue .*cap") or
	       sElementToLoad:find("Hold BigYellow .*cap") or sElementToLoad:find("Roll BigYellow .*cap")
	then
		-- TODO: better match
		t = singleSprite(HoldCapRedir[ret.HanubekiExtras.HoldType or sButtonToLoad], sElementToLoad:lower())
	elseif sElementToLoad:find("Hold Body") or sElementToLoad:find("Roll Body") or
	       sElementToLoad:find("Hold Red Body") or sElementToLoad:find("Roll Red Body") or
	       sElementToLoad:find("Hold Blue Body") or sElementToLoad:find("Roll Blue Body") or
	       sElementToLoad:find("Hold Yellow Body") or sElementToLoad:find("Roll Yellow Body") or
	       sElementToLoad:find("Hold BigRed Body") or sElementToLoad:find("Roll BigRed Body") or
	       sElementToLoad:find("Hold BigBlue Body") or sElementToLoad:find("Roll BigBlue Body") or
	       sElementToLoad:find("Hold BigYellow Body") or sElementToLoad:find("Roll BigYellow Body")
	then
		-- TODO: better match
		t = singleSprite(HoldBodyRedir[ret.HanubekiExtras.HoldType or sButtonToLoad], sElementToLoad:lower())
	elseif sElementToLoad:find("Mine .*cap") then
		local sizeToLoad = zoomValue < 0.7 and "_half" or "_common"
		t = singleSprite(sizeToLoad, sElementToLoad:lower())
	elseif sElementToLoad:find("Mine Body") then
		local sizeToLoad = zoomValue < 0.7 and "_half" or "_common"
		t = singleSprite(sizeToLoad, sElementToLoad:lower())
	elseif sElementToLoad == "Receptor" then
		if game == "taiko" then
			local taikoDrum = nil

			local taikoColors = {
				["Taiko Left Outside"] = {0, 0.5, 1, 1},
				["Taiko Right Outside"] = {0, 0.5, 1, 1},
				["Taiko Left Inside"] = {1, 0, 0, 1},
				["Taiko Right Inside"] = {1, 0, 0, 1},
			}

			local taikoLaserColors = {
				["Taiko Left Outside"] = {0.25, 0.75, 1, 0.5},
				["Taiko Right Outside"] = {0.25, 0.75, 1, 0.5},
				["Taiko Left Inside"] = {1, 0.75, 0.5, 0.5},
				["Taiko Right Inside"] = {1, 0.75, 0.5, 0.5},
			}

			local taikoInput = function (event)
				if ToEnumShortString(event.type) == "FirstPress" and event.PlayerNumber == pn then
					if taikoDrum:GetChild("Taiko Drum"):GetChild(event.button) then
						taikoDrum:GetChild("Taiko Drum"):GetChild(event.button):finishtweening():queuecommand("Push")
						taikoDrum:GetChild("Background"):finishtweening():diffuse(taikoLaserColors[event.button]):queuecommand("Push")
					end
				end
			end

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self)
					taikoDrum = self
					SCREENMAN:GetTopScreen():AddInputCallback(taikoInput)
				end,
				Def.ActorFrame {
					Name = "Taiko Drum",
					OnCommand = function (self) self:x(-128) end,
					Def.Sprite {
						Texture = "_taiko receptor glyph",
					},
					Def.Sprite{
						Name = "Taiko Left Outside",
						Texture = "_taiko receptor glow outside",
						OnCommand = function (self) self:diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoColors["Taiko Left Outside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Taiko Right Outside",
						Texture = "_taiko receptor glow outside",
						OnCommand = function (self) self:rotationy(180):diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoColors["Taiko Right Outside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Taiko Left Inside",
						Texture = "_taiko receptor glow inside",
						OnCommand = function (self) self:diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoColors["Taiko Left Inside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Taiko Right Inside",
						Texture = "_taiko receptor glow inside",
						OnCommand = function (self) self:rotationy(180):diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoColors["Taiko Right Inside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
				},
				Def.Quad {
					Name = "Background",
					OnCommand = function (self) self:valign(0):xy(256 - 64, -64):scaletoclipped(512, 128):faderight(1):diffusealpha(0) end,
					PushCommand = function (self) self:diffusealpha(0.5):decelerate(0.4):diffusealpha(0) end,
				},
			}
		end

		if ReceptorLaserTable[game][sButton] then
			local reverseLaser = false
			if (GAMESTATE.GetIsFieldReversed) then
				reverseLaser = GAMESTATE:GetIsFieldReversed()
			end

			if ReceptorLaserTable[game][sButton].pulse then
				t[#t+1] = Def.Quad {
					InitCommand = function (self) self:zoomto(ReceptorLaserTable[game][sButton].width, 0):valign(1):diffuse(ReceptorLaserTable[game][sButton].diffuse):fadebottom(1) end,
					ReverseOnCommand = function (self) reverseLaser = true end,
					ReverseOffCommand = function (self) reverseLaser = false end,
					OnCommand = function (self) self:diffusealpha(0) end,
					PressCommand = function (self) self:finishtweening():zoomto(ReceptorLaserTable[game][sButton].width, 0):y(0):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]):linear(0.025):zoomto(ReceptorLaserTable[game][sButton].width, reverseLaser and 160 or -160):linear(0.175):y(reverseLaser and -1120 or 1120):linear(0.1):y(reverseLaser and -1760 or 1760):diffusealpha(0) end,
				}
			else
				t[#t+1] = Def.Quad {
					InitCommand = function (self) self:zoomto(ReceptorLaserTable[game][sButton].width, reverseLaser and 256 or -256):valign(1):diffuse(ReceptorLaserTable[game][sButton].diffuse):fadetop(0.8):fadebottom(0.05) end,
					ReverseOnCommand = function (self) reverseLaser = true end,
					ReverseOffCommand = function (self) reverseLaser = false end,
					OnCommand = function (self) self:diffusealpha(0) end,
					PressCommand = function (self) self:finishtweening():zoomto(ReceptorLaserTable[game][sButton].width, reverseLaser and 256 or -256):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					LiftCommand = function (self) self:decelerate(0.2):zoomto(0, reverseLaser and 256 or -256):diffusealpha(0) end,
				}
			end

			if ReceptorLaserTable[game][sButton].judgecolored then
				t[#t] = t[#t] .. {
					W5Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_W5")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					W4Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_W4")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					W3Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_W3")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					W2Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_W2")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					W1Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_W1")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					ProW5Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_ProW5")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					ProW4Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_ProW4")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					ProW3Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_ProW3")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					ProW2Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_ProW2")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					ProW1Command = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_ProW1")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					-- HeldCommand = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_Held")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					NoneCommand = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_Miss")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
				}
			end
		end

		if not (sButton:find("Strum") or sButton:find("open")) then
			t[#t+1] = singleSprite(TapRedir[sButtonToLoad], "receptor base") .. {
				InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ):effectclock("beat"):diffuseramp():effectcolor1({0.8, 0.8, 0.8, 1}):effectcolor2({1, 1, 1, 1}):effectoffset(0.05) end,
				NoneCommand = function (self) self:finishtweening():zoom(0.85):diffusealpha(0.9):linear(0.1):diffusealpha(1):zoom(1) end,
				FeverMessageCommand = function(self, params)
					if params.pn ~= pn then return end
					if params.Active then
						self:glow({0, 0.5, 1, 0.7})
					else
						self:glow({1, 1, 1, 0})
					end
				end,
			}
		end

		if sButton == "Center" and (game == "pump" or game == "techno") then
			t[#t+1] = singleSprite("_common", "overlay feet") .. {
				InitCommand = function (self) self:diffusealpha(0.5) end,
			}
		end

		if sButton ~= "wailing" then
			t[#t+1] = singleSprite(TapRedir[sButtonToLoad], "receptor flash") .. {
				InitCommand = function (self) self:blend("BlendMode_Add"):rotationy(rotY):rotationz(rotZ):diffusealpha(0) end,
				PressCommand = function (self) self:finishtweening():zoom(1):diffusealpha(0.6) end,
				LiftCommand = function (self) self:finishtweening():decelerate(0.1):diffusealpha(0):zoom(1.2) end,
				NoneCommand = function (self) self:finishtweening():zoom(0.85):diffusealpha(0.9):linear(0.15):diffusealpha(1):zoom(1) end,
			}
		end

		if game == "gh" and sButton:find("Strum") then
			local isFever = false

			t[#t+1] = Def.ActorFrame{
				OnCommand = function (self) self:xy(80, 56) end,
				Def.Quad {
					OnCommand = function (self) 
						self:zoomto(160, 32):diffuse({0, 0, 0, 0.7})
					end,
				},
				Def.Quad {
					OnCommand = function (self)
						self:zoomto(152, 24):diffuse({0, 0.5, 1, 0.5}):cropright(1)
					end,
					FeverMessageCommand = function (self, params)
						if params.pn ~= pn then return end
						if params.Active then
							self.Active = true
							self:linear((self.Amount / 125) * 15):cropright(1)
						else
							self.Active = false
						end
					end,
					FeverScoreMessageCommand = function (self, params)
						if params.pn ~= pn then return end
						self.Amount = params.Amount
						self:stoptweening():linear(0.1):cropright(1 - (params.Amount / 125))
						if not self.Active then
							if params.Amount >= 50 then
								self:diffuse({0, 0.5, 1, 1})
							else
								self:diffuse({0, 0.5, 1, 0.5}) 
							end
						else
							self:stoptweening():linear((self.Amount / 125) * 15):cropright(1)
						end
					end,
				},
				Def.BitmapText {
					Text = "FEVER READY!",
					Font = "Common Normal",
					OnCommand = function (self) self:diffusealpha(0):zoom(0.7) end,
					FeverMessageCommand = function (self, params)
						if params.pn ~= pn then return end
						self.Active = params.Active
						isFever = params.Active
						if params.Active then
							self:diffusealpha(0)
						end
					end,
					FeverScoreMessageCommand = function (self, params)
						if params.pn ~= pn then return end
						if not self.Active then
							if params.Amount >= 50 then
								self:diffusealpha(1):rainbow():settext("FEVER READY!")
							else
								self:stopeffect():diffuse({1, 1, 1, 1}):settext(math.floor(params.Amount + 0.5))
							end
						end
					end,
				},
			}

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self) self:xy(-80, 56) end,
				Def.Quad {
					OnCommand = function (self)
						self:zoomto(160, 32):diffuse({0, 0, 0, 0.7})
					end,
				},
				Def.BitmapText {
					Text = "1x",
					Font = "Common Normal",
					OnCommand = function (self) self:zoom(0.7):halign(0):x(-72) end,
					ComboChangedMessageCommand = function (self, params)
						if params.Player ~= pn then return end
						local curCombo = params.PlayerStageStats:GetCurrentCombo()
						local percent = 1

						if curCombo >= 30 then percent = 4
						elseif curCombo >= 20 then percent = 3
						elseif curCombo >= 10 then percent = 2
						end

						if isFever then percent = percent * 2 end

						self:settext(percent .. "x")
					end,
				},
				Def.BitmapText {
					Text = "0",
					Font = "Common Normal",
					OnCommand = function (self) self:zoom(0.7):halign(1):x(72) end,
					ComboChangedMessageCommand = function (self, params)
						if params.Player ~= pn then return end
						self:settext(params.PlayerStageStats:GetScore())
					end,
				},
			}
		end
	elseif sElementToLoad == "Ovceptor" then
		if ReceptorGlyphTable[game][sButton] then
			local glyphReverse = false
			if (GAMESTATE.GetIsFieldReversed) then
				glyphReverse = GAMESTATE:GetIsFieldReversed()
			end

			t[#t+1] = singleSprite(ReceptorGlyphTable[game][sButton].texture, "receptor glyph") .. {
				InitCommand = function (self) self:xy(ReceptorGlyphTable[game][sButton].x, ReceptorGlyphTable[game][sButton].y):rotationz(ReceptorGlyphTable[game][sButton].rot):diffuse(ReceptorGlyphTable[game][sButton].diffuse) end,
				ReverseOnCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y) end,
				ReverseOffCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y * (glyphReverse and -1 or 1)) end,
			}

			if ReceptorGlyphTable[game][sButton].glow then
				t[#t+1] = singleSprite(ReceptorGlyphTable[game][sButton].texture, "receptor glow") .. {
					InitCommand = function (self) self:xy(ReceptorGlyphTable[game][sButton].x, ReceptorGlyphTable[game][sButton].y):rotationz(ReceptorGlyphTable[game][sButton].rot):diffuse(ReceptorGlyphTable[game][sButton].glow):diffusealpha(0) end,
					ReverseOnCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y) end,
					ReverseOffCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y * (glyphReverse and -1 or 1)) end,
					PressCommand = function (self) self:finishtweening():diffusealpha(1) end,
					LiftCommand = function (self) self:finishtweening():diffusealpha(1):decelerate(0.2):diffusealpha(0) end,
				}
			end

			-- TODO: support other than kbx?
			if game:match("^kb[7x]$") then
				t[#t+1] = Def.Quad {
					InitCommand = function(self) self:zoomto(64, 48):y(56):valign(0):diffuse({0, 0, 0, 0.5}) end,
				}

				t[#t+1] = Def.BitmapText {
					Font = "Common Normal",
					Text = sGameButton:gsub("Key ", ""),
					InitCommand = function(self) self:y(72):zoom(0.7) end,
				}
			end
		end
	elseif sElementToLoad == "Explosion" then
		-- Function for bright color
		local function BrightColor(col)
			return {(col[1] + 2) / 3, (col[2] + 2) / 3, (col[3] + 2) / 3, col[4]}
		end

		-- Function for glow actor commands
		local glowCommands = function (actor, color)
			return actor:finishtweening():diffuse(color):sleep(0.1):decelerate(0.2):diffusealpha(0)
		end

		if sButton ~= "wailing" then
			t[#t+1] = singleSprite(TapRedir[sButtonToLoad], "glow") .. {
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
				-- JudgmentCommand = function (self) self:finishtweening() end,
				-- BrightCommand = function (self) self:visible(false) end,
				-- DimCommand = function (self) self:visible(true) end,
			}

--[[
			t[#t+1] = singleSprite("_common", "bright") .. {
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
				-- JudgmentCommand = function (self) self:finishtweening() end,
				BrightCommand = function (self) self:visible(true) end,
				DimCommand = function (self) self:visible(false) end,
			}
--]]

			local circleZoom = game == "taiko" and 2 or game == "gh" and 1.5 or 1

			-- Function for circle actor commands
			local circleCommands = function (actor, color)
				-- return actor:finishtweening():zoom(0.5 * circleZoom):diffuse(color):diffusealpha(0):accelerate(0.1):zoom(1 * circleZoom):diffusealpha(1):decelerate(0.1):zoom(1.5 * circleZoom):diffusealpha(0)
				return actor:finishtweening():zoom(0.5 * circleZoom):diffusealpha(0):accelerate(0.1):zoom(1 * circleZoom):diffusealpha(1):decelerate(0.1):zoom(1.5 * circleZoom):diffusealpha(0)
			end

			local circlePositions = {
				["Strum"] = {-128, -64, 0, 64, 128},
				["OpenShort"] = {-64, 0, 64},
				["OpenLong"] = {-128, -64, 0, 64, 128},
				["OpenSix"] = {-160, -96, -32, 32, 96, 160},
			}
			local circlePositionsMeta = {
				__index = function (table, key, value)
					return {0}
				end
			}
			setmetatable(circlePositions, circlePositionsMeta)

			for _, cur_x in pairs(circlePositions[sButtonToLoad]) do
				t[#t+1] = singleSprite("_common", "circle") .. {
					InitCommand = function (self) self:x(cur_x):zoom(0.5 * circleZoom):diffusealpha(0) end,
					W3Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W3"))) end,
					W2Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W2"))) end,
					W1Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_W1"))) end,
					ProW5Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW5"))) end,
					ProW4Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW4"))) end,
					ProW3Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW3"))) end,
					ProW2Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW2"))) end,
					ProW1Command = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_ProW1"))) end,
					HeldCommand = function (self) circleCommands(self, BrightColor(JudgmentLineToColor("JudgmentLine_Held"))) end,
					-- JudgmentCommand = function (self) self:finishtweening() end,
				}
			end

			t[#t+1] = singleSprite("_common", "hold flash") .. {
				HoldingOnCommand = function (self) self:diffusealpha(1):glowshift():effectcolor1({1, 1, 1, 0}):effectcolor2({1, 1, 1, 0.7}):effectperiod(0.1) end,
				HoldingOffCommand = function (self) self:diffusealpha(0) end,
				RollOnCommand = function (self) self:playcommand("HoldingOn") end,
				RollOffCommand = function (self) self:playcommand("HoldingOff") end,
				InitCommand = function (self) self:zoom(zoomValue):playcommand("HoldingOff"):finishtweening() end,
			}
			t[#t+1] = singleSprite("_common", "mine explosion") .. {
				InitCommand = function (self) self:blend("BlendMode_Add"):zoom(zoomValue):diffusealpha(0) end,
				HitMineCommand = function (self) self:finishtweening():diffusealpha(1):rotationz(0):linear(0.25):rotationz(90):linear(0.25):rotationz(180):diffusealpha(0) end,
			}
		end
	end

	return t
end

-- This is the only required function.
ret.Load = func

-- Use this to override the game types' default Load() functions.
ret.CommonLoad = func

return ret
