-- hanubeki's SUPER-SPAGHETTI™ NoteSkin lua

local ret = ... or {}

-- An old unused table
ret.RedirTable =
{
}

local Fallback = {
	__index = function (table, key, value)
		return "_fallback"
	end,
}

local FallbackZero = {
	__index = function (table, key, value)
		return 0
	end,
}

local FallbackOne = {
	__index = function (table, key, value)
		return 1
	end,
}

-- Redirect table for buttons
local ButtonRedirTable =
{
	["dance"] = {
		["Left"] = "Left",
		["UpLeft"] = "UpLeft",
		["Down"] = "Down",
		["Up"] = "Up",
		["UpRight"] = "UpRight",
		["Right"] = "Right",
	},
	["groove"] = {
		["Left"] = "Left",
		["UpLeft"] = "UpLeft",
		["Down"] = "Down",
		["Up"] = "Up",
		["UpRight"] = "UpRight",
		["Right"] = "Right",
	},
	["pump"] = {
		["DownLeft"] = "DownLeft",
		["UpLeft"] = "UpLeft",
		["Center"] = "Center",
		["UpRight"] = "UpRight",
		["DownRight"] = "DownRight",
	},
	["piu"] = {
		["DownLeft"] = "DownLeft",
		["UpLeft"] = "UpLeft",
		["Center"] = "Center",
		["UpRight"] = "UpRight",
		["DownRight"] = "DownRight",
	},
	["para"] = {
		["Left"] = "ParaLeft",
		["DownLeft"] = "ParaDownLeft",
		["UpLeft"] = "ParaUpLeft",
		["Down"] = "ParaDown",
		["Up"] = "ParaUp",
		["UpRight"] = "ParaUpRight",
		["DownRight"] = "ParaDownRight",
		["Right"] = "ParaRight",
		["BackRight"] = "ParaBackRight",
		["Back"] = "ParaBack",
		["BackLeft"] = "ParaBackLeft",
	},
	["techno"] = {
		["Left"] = "Left",
		["DownLeft"] = "DownLeft",
		["UpLeft"] = "UpLeft",
		["Down"] = "Down",
		["Center"] = "Circle",
		["Up"] = "Up",
		["UpRight"] = "UpRight",
		["DownRight"] = "DownRight",
		["Right"] = "Right",
	},
	["smx"] = {
		["Left"] = "Left",
		["Down"] = "Down",
		["Center"] = "Diamond",
		["Up"] = "Up",
		["Right"] = "Right",
	},
	["horizon"] = {
		["Left"] = "Left",
		["DownLeft"] = "DownLeft",
		["UpLeft"] = "UpLeft",
		["Down"] = "Down",
		["Center"] = "Center",
		["Up"] = "Up",
		["UpRight"] = "UpRight",
		["DownRight"] = "DownRight",
		["Right"] = "Right",
	},
	["ez2"] = {
		["FootDown"] = "Down",
		["FootUpLeft"] = "UpLeft",
		["FootUpRight"] = "UpRight",
		["FootCenter"] =  "Center",
		["HandUpLeft"] = "Circle",
		["HandUpRight"] = "Circle",
		["HandLrLeft"] = "Circle",
		["HandLrRight"] = "Circle",
	},
	["maniax"] = {
		["HandUpLeft"] = "Ring",
		["HandUpRight"] = "Ring",
		["HandLrLeft"] = "Ring",
		["HandLrRight"] = "Ring",
	},
	["ds3ddx"] = {
		["FootUpLeft"] = "UpLeft",
		["FootUpRight"] = "UpRight",
		["FootCenter"] = "Center",
		["FootDownLeft"] = "DownLeft",
		["FootDownRight"] = "DownRight",
		["HandUp"] = "HandUp",
		["HandDown"] = "HandDown",
		["HandLeft"] = "HandLeft",
		["HandRight"] = "HandRight",
	},
	["kbx"] = {
		["Key1"] = "KeyWide",
		["Key2"] = "KeyWide",
		["Key3"] = "KeyWide",
		["Key4"] = "KeyWide",
		["Key5"] = "KeyWide",
		["Key6"] = "KeyWide",
		["Key7"] = "KeyWide",
		["Key8"] = "KeyWide",
		["Key9"] = "KeyWide",
		["Key10"] = "KeyWide",
		["Key11"] = "KeyWide",
		["Key12"] = "KeyWide",
		["Key13"] = "KeyWide",
		["Key14"] = "KeyWide",
		["Key15"] = "KeyWide",
		["Key16"] = "KeyWide",
		["Key17"] = "KeyWide",
		["Key18"] = "KeyWide",
		["Key19"] = "KeyWide",
	},
	["be-mu"] = {
		["Key1"] = "KeyWhite",
		["Key2"] = "KeyBlue",
		["Key3"] = "KeyWhite",
		["Key4"] = "KeyBlue",
		["Key5"] = "KeyWhite",
		["Key6"] = "KeyBlue",
		["Key7"] = "KeyWhite",
		["scratch"] = "Scratch",
		["scratch up"] = "Scratch",
		["scratch down"] = "Scratch",
		["Foot"] = "Foot",
	},
	["po-mu"] = {
		["Left White"] = "BurgerLower",
		["Left Yellow"] = "BurgerUpper",
		["Left Green"] = "BurgerLower",
		["Left Blue"] = "BurgerUpper",
		["Red"] = "BurgerLower",
		["Right Blue"] = "BurgerUpper",
		["Right Green"] = "BurgerLower",
		["Right Yellow"] = "BurgerUpper",
		["Right White"] = "BurgerLower",
	},
	["kickbox"] = {
		["DownLeftFoot"] = "DownLeftFoot",
		["AnyLeftFoot"] = "AnyLeftFoot",
		["UpLeftFoot"] = "UpLeftFoot",
		["UpLeftFist"] = "UpLeftFist",
		["AnyLeftFist"] = "AnyLeftFist",
		["DownLeftFist"] = "DownLeftFist",
		["DownRightFist"] = "DownRightFist",
		["AnyRightFist"] = "AnyRightFist",
		["UpRightFist"] = "UpRightFist",
		["UpRightFoot"] = "UpRightFoot",
		["AnyRightFoot"] = "AnyRightFoot",
		["DownRightFoot"] = "DownRightFoot",
	},
	["gdgf"] = {
		["Fret 1"] = "Fret",
		["Fret 2"] = "Fret",
		["Fret 3"] = "Fret",
		["Fret 4"] = "Fret",
		["Fret 5"] = "Fret",
		["Fret 6"] = "Fret",
		["open short"] = "OpenShort",
		["open long"] = "OpenLong",
		["open six"] = "OpenSix",
		["wailing"] = "Wailing",
	},
	["gddm"] = {
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
	},
	["gh"] = {
		["Fret 1"] = "Gem",
		["Fret 2"] = "Gem",
		["Fret 3"] = "Gem",
		["Fret 4"] = "Gem",
		["Fret 5"] = "Gem",
		["Fret 6"] = "Gem",
		["Strum"] = "Strum",
		["Strum Up"] = "Strum",
		["Strum Down"] = "Strum",
	},
	["rb"] = {
		["Snare"] = "Brick",
		["Tom1"] = "Brick",
		["Tom2"] = "Brick",
		["Tom3"] = "Brick",
		["Kick"] = "RBKick",

		["GHSnare"] = "Brick",
		["GHCym1"] = "Brick",
		["GHTom1"] = "Brick",
		["GHCym2"] = "Brick",
		["GHTom2"] = "Brick",
		["GHKick"] = "GHKick",
	},
	["taiko"] = {
		["Main"] = "Taiko",
	},
	["bongo"] = {
		["Main"] = "Bongo",
	},
	["stepstage"] = {
		["Left"] = "StepLeft",
		["Center"] = "StepCenter",
		["Right"] = "StepRight",
	},
	["boxing"] = {
		["Receptor"] = "Boxing",
		["Left Hook"] = "Left Hook",
		["Left Jab"] = "Left Jab",
		["Left UpperCut"] = "Left UpperCut",
		["Right Hook"] = "Right Hook",
		["Right Jab"] = "Right Jab",
		["Right UpperCut"] = "Right UpperCut",
	},
}

local ButtonRedirChildMeta = {
	__index = function (table, key, value)
		return "Fallback"
	end,
}
for cur_k, _ in pairs(ButtonRedirTable) do
	setmetatable(ButtonRedirTable[cur_k], ButtonRedirChildMeta)
end
local ButtonRedirMeta = {
	__index = function (table, key, value)
		local dummy = {}
		setmetatable(dummy, ButtonRedirChildMeta)
		return dummy
	end,
}
setmetatable(ButtonRedirTable, ButtonRedirMeta)

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
	["Foot"]     = "_keywhite",

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

	["Brick"] = "_brick",
	["BrickStrum"] = "_brickstrum",
	["RBKick"] = "_rbkick",
	["GHKick"] = "_ghkick",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",

	["Taiko"] = "_taiko",
	["Bongo"] = "_bongo",

	["StepLeft"]   = "_stepleft",
	["StepCenter"] = "_stepcenter",
	["StepRight"]  = "_stepleft",

	["Boxing"]         = "_boxing",
	["Left Hook"]      = "_lefthook",
	["Left Jab"]       = "_leftjab",
	["Left UpperCut"]  = "_leftuppercut",
	["Right Hook"]     = "_lefthook",
	["Right Jab"]      = "_leftjab",
	["Right UpperCut"] = "_leftuppercut",
}
setmetatable(TapRedir, Fallback)

-- Flip table for Tap Note/Hold Head
local TapRotateY = {
	["DownLeftFoot"]   = 180,
	["AnyLeftFoot"]    = 180,
	["UpLeftFoot"]     = 180,
	["UpLeftFist"]     = 180,
	["AnyLeftFist"]    = 180,
	["DownLeftFist"]   = 180,
	["DownRightFist"]  =   0,
	["AnyRightFist"]   =   0,
	["UpRightFist"]    =   0,
	["UpRightFoot"]    =   0,
	["AnyRightFoot"]   =   0,
	["DownRightFoot"]  =   0,
	["StepLeft"]       =   0,
	["StepRight"]      = 180,
	["Left Hook"]      =   0,
	["Left Jab"]       =   0,
	["Left UpperCut"]  =   0,
	["Right Hook"]     = 180,
	["Right Jab"]      = 180,
	["Right UpperCut"] = 180,
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

-- Rotation table for Tap Wail
local WailRotateZ = {
	["Tap Wail Up"] = 0,
	["Tap Wail Down"] = 180,
	["Tap Wail Forward"] = 90,
	["Tap Wail Backward"] = -90,
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

--[[
	["HandLeft"]  = "_handleft",
	["HandRight"] = "_handright",
	["HandUp"]    = "_handdown",
	["HandDown"]  = "_handdown",
--]]

	["HandLeft"]  = "_thin",
	["HandRight"] = "_thin",
	["HandUp"]    = "_thin",
	["HandDown"]  = "_thin",

	["Ring"] = "_ring",

	["KeyWhite"] = "_keywhite",
	["KeyBlue"]  = "_keyblue",
	["Scratch"]  = "_down",
	["Foot"]     = "_keywhite",

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

	["Brick"] = "_thin",
	["BrickStrum"] = "_strum",
	["RBKick"] = "_strum",
	["GHKick"] = "_strum",

	["Cymbal"] = "_down",
	["Tom"] = "_down",
	["Pedal"] = "_down",

	["Taiko"] = "_taiko",
	["Bongo"] = "_bongo",

	["StepLeft"]   = "_step",
	["StepCenter"] = "_step",
	["StepRight"]  = "_step",

	["Boxing"]         = "_thin",
	["Left Hook"]      = "_thin",
	["Left Jab"]       = "_thin",
	["Left UpperCut"]  = "_thin",
	["Right Hook"]     = "_thin",
	["Right Jab"]      = "_thin",
	["Right UpperCut"] = "_thin",
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

	["HandLeft"]  = "_thin",
	["HandRight"] = "_thin",
	["HandUp"]    = "_thin",
	["HandDown"]  = "_thin",

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

	["Foot"] = "_keywhite",

	["KeyWide"] = "_scratch",

	["Fret"] = "_scratch",
	["OpenShort"] = "_strum",
	["OpenLong"] = "_strum",
	["OpenSix"] = "_strum",
	["Wailing"] = "_scratch",

	["Gem"] = "_thin",
	["Strum"] = "_strum",

	["Brick"] = "_thin",
	["BrickStrum"] = "_strum",
	["RBKick"] = "_strum",
	["GHKick"] = "_strum",

	["Cymbal"] = "_scratch",
	["Tom"] = "_scratch",
	["Pedal"] = "_scratch",

	["StepLeft"]   = "_step",
	["StepCenter"] = "_step",
	["StepRight"]  = "_step",

	["Boxing"]         = "_thin",
	["Left Hook"]      = "_thin",
	["Left Jab"]       = "_thin",
	["Left UpperCut"]  = "_thin",
	["Right Hook"]     = "_thin",
	["Right Jab"]      = "_thin",
	["Right UpperCut"] = "_thin",
}
local HoldCapRedirMeta = {
	__index = function (table, key, value)
		return "_" .. key:lower()
	end,
}
setmetatable(HoldCapRedir, HoldCapRedirMeta)

-- Zoom table for common graphics in games
local ZoomTable = {
	["maniax"] = 1/2,
	["be-mu"] = 1/2,
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
	20: Cyan
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
local RhythmColorsMeta = {
	__index = function (table, key, value)
		return 16
	end,
}
setmetatable(RhythmColors, RhythmColorsMeta)

-- Color table for progress
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
	20: Cyan
	22: Reserved
	24: Reserved
	26: Reserved
	28: Reserved
	30: Reserved
--]]
local ProgressColors = {18, 8, 2, 8}

-- Color table for column
local ColumnColorsTable = {
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
	20: Cyan
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
	["groove"] = {
		["Left"] = 0,
		["UpLeft"] = 0,
		["Down"] = 0,
		["Up"] = 0,
		["UpRight"] = 0,
		["Right"] = 0,
	},
	["pump"] = {
		["DownLeft"] = 2,
		["UpLeft"] = 0,
		["Center"] = 6,
		["UpRight"] = 0,
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
	["piu"] = {
		["DownLeft"] = 2,
		["UpLeft"] = 0,
		["Center"] = 6,
		["UpRight"] = 0,
		["DownRight"] = 2,
	},
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
		["FootCenter"] = 6,
		["HandDown"] = 4,
		["FootUpRight"] = 0,
		["FootDownRight"] = 2,
		["HandRight"] = 18,
	},
	["kbx"] = { -- XXX: even number columns except Key10 are not final
		["Key1"] = 20, -- L2
		["Key2"] = 14,
		["Key3"] = 0, -- L
		["Key4"] = 14,
		["Key5"] = 16, -- 1
		["Key6"] = 14,
		["Key7"] = 2, -- 2
		["Key8"] = 14,
		["Key9"] = 16, -- 3
		["Key10"] = 18, -- 4
		["Key11"] = 16, -- 5
		["Key12"] = 14,
		["Key13"] = 2, -- 6
		["Key14"] = 14,
		["Key15"] = 16, -- 7
		["Key16"] = 14,
		["Key17"] = 0, -- R
		["Key18"] = 14,
		["Key19"] = 20, -- R2
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
		["Foot"] = 4,
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
	["gdgf"] = {
		["Fret 1"] = 0,
		["Fret 2"] = 4,
		["Fret 3"] = 2,
		["Fret 4"] = 6,
		["Fret 5"] = 12,
		["Fret 6"] = 20, -- not in original game
		["open short"] = 8,
		["open long"] = 8,
		["open six"] = 8,
		["wailing"] = 4,
	},
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
		["Right Crash"] = 20,
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
	["rb"] = {
		["Kick"] = 18,
		["Snare"] = 0,
		["Tom1"] = 6,
		["Tom2"] = 2,
		["Tom3"] = 4,

		["GHKick"] = 8,
		["GHSnare"] = 0,
		["GHCym1"] = 6,
		["GHTom1"] = 2,
		["GHCym2"] = 18,
		["GHTom2"] = 4,
	},
	["taiko"] = {
		["Main"] = 0,
	},
	["bongo"] = {
		["Main"] = 12,
	},
	["stepstage"] = {
		["Left"] = 0,
		["Center"] = 0,
		["Right"] = 0,
	},
	["boxing"] = {
		["Receptor"] = 16,
		["Left Hook"] = 0,
		["Left Jab"] = 0,
		["Left UpperCut"] = 0,
		["Right Hook"] = 2,
		["Right Jab"] = 2,
		["Right UpperCut"] = 2,
	},
	["lights"] = { -- isn't a game
		["MarqueeUpLeft"] = 0,
		["MarqueeUpRight"] = 0,
		["MarqueeLrLeft"] = 0,
		["MarqueeLrRight"] = 0,
		["ButtonsLeft"] = 0,
		["ButtonsRight"] = 0,
		["BassLeft"] = 0,
		["BassRight"] = 0,
	},
}
local ColumnColorsChildMeta = {
	__index = function (table, key, value)
		return 16
	end,
}
for cur_k, _ in pairs(ColumnColorsTable) do
	setmetatable(ColumnColorsTable[cur_k], ColumnColorsChildMeta)
end
local ColumnColorsMeta = {
	__index = function (table, key, value)
		local dummy = {}
		setmetatable(dummy, ColumnColorsChildMeta)
		return dummy
	end,
}
setmetatable(ColumnColorsTable, ColumnColorsMeta)

-- Color table for Tap Wail
local WailColors = {
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
	20: Cyan
	22: Reserved
	24: Reserved
	26: Reserved
	28: Reserved
	30: Reserved
--]]
	["Tap Wail Up"] = 4,
	["Tap Wail Down"] = 20,
	["Tap Wail Forward"] = 12,
	["Tap Wail Backward"] = 6, -- I'm not sure if this exists in original game
}
local WailColorsMeta = {
	__index = function (table, key, value)
		return 4
	end,
}
setmetatable(WailColors, WailColorsMeta)

-- Color table for Routine
local RoutineColors = {
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
	20: Cyan
	22: Reserved
	24: Reserved
	26: Reserved
	28: Reserved
	30: Reserved
--]]
	["PlayerNumber_P1"] = 12,
	["PlayerNumber_P2"] = 2,
	["PlayerNumber_P3"] = 6,
	["PlayerNumber_P4"] = 4,
	["PlayerNumber_P5"] = 8,
}
local RoutineColorsMeta = {
	__index = function (table, key, value)
		return 12
	end,
}
setmetatable(RoutineColors, RoutineColorsMeta)

local NoteUnderlayTable = {
	["gdgf"] = {
		["wailing"]   = {["texture"] = "guitar", ["rot"] = 0, ["diffuse"] = {0.5, 0.5, 0.5, 1}},
	},
	["gddm"] = {
		["Left Crash"]   = {["texture"] = "cymbal", ["rot"] =   0, ["diffuse"] = {1,   0,    0.5, 1}},
		["Hi-Hat"]       = {["texture"] = "cymbal", ["rot"] = -60, ["diffuse"] = {0,   0.5,  1,   1}},
		["Hi-Hat Pedal"] = {["texture"] = "foot",   ["rot"] =   0, ["diffuse"] = {1,   0,    0.5, 1}},
		["Floor Tom"]    = {["texture"] = "tom",    ["rot"] =   0, ["diffuse"] = {1,   0.5,  0,   1}},
		["Kick"]         = {["texture"] = "foot",   ["rot"] =   0, ["diffuse"] = {0.5, 0,    1,   1}},
		["Ride"]         = {["texture"] = "cymbal", ["rot"] =  45, ["diffuse"] = {0,   0.5,  1,   1}},
		["Right Crash"]  = {["texture"] = "cymbal", ["rot"] =  15, ["diffuse"] = {0,   0.85, 1,   1}},
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
	["be-mu"] = {
		["scratch"] = {["texture"] = "_scratch", ["x"] = 0, ["y"] = 44, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["turntable"] = {1, 1, 1, 1}}, -- ["glow"] = {1, 0.25, 0, 0}
		["Key1"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key2"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key3"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key4"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key5"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key6"] = {["texture"] = "_keyblue",  ["x"] = 0, ["y"] = 40, ["rot"] = 0, ["diffuse"] = {0.15, 0.15, 0.15, 1}, ["glow"] = {1, 0.25, 0, 0}},
		["Key7"] = {["texture"] = "_keywhite", ["x"] = 0, ["y"] = 48, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
		["Foot"] = {["texture"] = "_foot", ["x"] = 0, ["y"] = 44, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {1, 0.25, 0, 0}},
	},
	["po-mu"] = {
		["Left White"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0.75, 1.0}},
		["Left Yellow"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0.75, 0.65,  0,    1.0}},
		["Left Green"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0,    0.5,   0,    1.0}},
		["Left Blue"]    = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0,    0.375, 0.75, 1.0}},
		["Red"]          = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0,     0,    1.0}},
		["Right Blue"]   = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0,    0.375, 0.75, 1.0}},
		["Right Green"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0,    0.5,   0,    1.0}},
		["Right Yellow"] = {["texture"] = "_burger", ["x"] = 0, ["y"] = 20, ["rot"] = 0, ["diffuse"] = {0.75, 0.65,  0,    1.0}},
		["Right White"]  = {["texture"] = "_burger", ["x"] = 0, ["y"] = 28, ["rot"] = 0, ["diffuse"] = {0.75, 0.75,  0.75, 1.0}},
	},
	["kbx"] = {
		["Key1"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.25, 0.9,  1,    1}, ["glow"] = {0,    0.2,  0.2, 0}},
		["Key2"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key3"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    0.25, 0.25, 1}, ["glow"] = {0.2,  0,    0,   0}},
		["Key4"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key5"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key6"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key7"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0,    0.75, 1,    1}, ["glow"] = {0,    0.15, 0.2, 0}},
		["Key8"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key9"]  = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key10"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    0.5,  0,    1}, ["glow"] = {0.2,  0.1,  0,   0}},
		["Key11"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key12"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key13"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0,    0.75, 1,    1}, ["glow"] = {0,    0.15, 0.2, 0}},
		["Key14"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key15"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    1,    1,    1}, ["glow"] = {0.2,  0.2,  0.2, 0}},
		["Key16"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key17"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {1,    0.25, 0.25, 1}, ["glow"] = {0.2,  0,    0,   0}},
		["Key18"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.75, 1,    0.5,  1}, ["glow"] = {0.15, 0.2,  0.1, 0}},
		["Key19"] = {["texture"] = "_keywide", ["x"] = 0, ["y"] = 56, ["rot"] = 0, ["diffuse"] = {0.25, 0.9,  1,    1}, ["glow"] = {0,    0.2,  0.2, 0}},
	},
	["gddm"] = {
		["Left Crash"]   = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 48, ["rot"] = -45, ["diffuse"] = {1,   0,    0.5, 1}},
		["Hi-Hat"]       = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 56, ["rot"] = -60, ["diffuse"] = {0,   0.5,  1,   1}},
		["Hi-Hat Pedal"] = {["texture"] = "_pedal",  ["x"] = 0, ["y"] = 60, ["rot"] = -45, ["diffuse"] = {1,   0.8,  0.9, 1}},
		["Snare"]        = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 56, ["rot"] =   0, ["diffuse"] = {1,   1,    0,   1}},
		["High Tom"]     = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 40, ["rot"] =   0, ["diffuse"] = {0,   1,    0,   1}},
		["Kick"]         = {["texture"] = "_pedal",  ["x"] = 0, ["y"] = 60, ["rot"] =   0, ["diffuse"] = {0.9, 0.8,  1,   1}},
		["Mid Tom"]      = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 40, ["rot"] =   0, ["diffuse"] = {1,   0,    0,   1}},
		["Floor Tom"]    = {["texture"] = "_tom",    ["x"] = 0, ["y"] = 56, ["rot"] =   0, ["diffuse"] = {1,   0.5,  0,   1}},
		["Ride"]         = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 48, ["rot"] =  45, ["diffuse"] = {0,   0.5,  1,   1}},
		["Right Crash"]  = {["texture"] = "_cymbal", ["x"] = 0, ["y"] = 40, ["rot"] =  15, ["diffuse"] = {0,   0.85, 1,   1}},
	},
}
local ReceptorGlyphMeta = {
	__index = function (table, key, value)
		return {}
	end,
}
setmetatable(ReceptorGlyphTable, ReceptorGlyphMeta)

-- Table for column background
local ColumnBackgroundTable = {
	["be-mu"] = {
		["Key1"] = {["width"] = 38, ["diffuse"] = {1, 1, 1, 0.1}},
		-- ["Key2"] = {["width"] = 30, ["diffuse"] = {1, 1, 1, 0}},
		["Key3"] = {["width"] = 38, ["diffuse"] = {1, 1, 1, 0.1}},
		-- ["Key4"] = {["width"] = 30, ["diffuse"] = {1, 1, 1, 0}},
		["Key5"] = {["width"] = 38, ["diffuse"] = {1, 1, 1, 0.1}},
		-- ["Key6"] = {["width"] = 30, ["diffuse"] = {1, 1, 1, 0}},
		["Key7"] = {["width"] = 38, ["diffuse"] = {1, 1, 1, 0.1}},
		-- ["scratch"] = {["width"] = 64, ["diffuse"] = {1, 1, 1, 0}},
		-- ["Foot"] = {["width"] = 38, ["diffuse"] = {1, 1, 1, 0}},
	},
	["po-mu"] = {
		["Left White"]   = {["width"] = 36, ["diffuse"] = {0.5, 0.5,  0.5, 0.5}, ["lowerDiffuse"] = {0.25, 0.25,  0.25, 0.5}},
		["Left Yellow"]  = {["width"] = 26, ["diffuse"] = {0.5, 0.4,  0,   0.5}, ["lowerDiffuse"] = {0.25, 0.2,   0,    0.5}},
		["Left Green"]   = {["width"] = 36, ["diffuse"] = {0,   0.25, 0,   0.5}, ["lowerDiffuse"] = {0,    0.125, 0,    0.5}},
		["Left Blue"]    = {["width"] = 26, ["diffuse"] = {0,   0.25, 0.5, 0.5}, ["lowerDiffuse"] = {0,    0.125, 0.25, 0.5}},
		["Red"]          = {["width"] = 36, ["diffuse"] = {0.5, 0,    0,   0.5}, ["lowerDiffuse"] = {0.25, 0,     0,    0.5}},
		["Right Blue"]   = {["width"] = 26, ["diffuse"] = {0,   0.25, 0.5, 0.5}, ["lowerDiffuse"] = {0,    0.125, 0.25, 0.5}},
		["Right Green"]  = {["width"] = 36, ["diffuse"] = {0,   0.25, 0,   0.5}, ["lowerDiffuse"] = {0,    0.125, 0,    0.5}},
		["Right Yellow"] = {["width"] = 26, ["diffuse"] = {0.5, 0.4,  0,   0.5}, ["lowerDiffuse"] = {0.25, 0.2,   0,    0.5}},
		["Right White"]  = {["width"] = 36, ["diffuse"] = {0.5, 0.5,  0.5, 0.5}, ["lowerDiffuse"] = {0.25, 0.25,  0.25, 0.5}},
	},
	["gddm"] = {
		["Left Crash"]   = {["width"] = 64, ["diffuse"] = {0.1,  0,    0.05, 0.5}, ["lowerDiffuse"] = {0.1,  0,    0.05, 0.5}},
		["Hi-Hat"]       = {["width"] = 64, ["diffuse"] = {0,    0.05, 0.1,  0.5}, ["lowerDiffuse"] = {0,    0.05, 0.1,  0.5}},
		["Hi-Hat Pedal"] = {["width"] = 64, ["diffuse"] = {0.1,  0,    0.08, 0.5}, ["lowerDiffuse"] = {0.1,  0,    0.08, 0.5}},
		["Snare"]        = {["width"] = 64, ["diffuse"] = {0.1,  0.08, 0,    0.5}, ["lowerDiffuse"] = {0.1,  0.08, 0,    0.5}},
		["High Tom"]     = {["width"] = 64, ["diffuse"] = {0,    0.08, 0,    0.5}, ["lowerDiffuse"] = {0,    0.08, 0,    0.5}},
		["Kick"]         = {["width"] = 64, ["diffuse"] = {0.05, 0,    0.1,  0.5}, ["lowerDiffuse"] = {0.05, 0,    0.1,  0.5}},
		["Mid Tom"]      = {["width"] = 64, ["diffuse"] = {0.1,  0,    0,    0.5}, ["lowerDiffuse"] = {0.1,  0,    0,    0.5}},
		["Floor Tom"]    = {["width"] = 64, ["diffuse"] = {0.1,  0.05, 0,    0.5}, ["lowerDiffuse"] = {0.1,  0.05, 0,    0.5}},
		["Ride"]         = {["width"] = 64, ["diffuse"] = {0,    0.05, 0.1,  0.5}, ["lowerDiffuse"] = {0,    0.05, 0.1,  0.5}},
		["Right Crash"]  = {["width"] = 64, ["diffuse"] = {0,    0.09, 0.1,  0.5}, ["lowerDiffuse"] = {0,    0.09, 0.1,  0.5}},
	},
}
local ColumnBackgroundMeta = {
	__index = function (table, key, value)
		return {}
	end,
}
setmetatable(ColumnBackgroundTable, ColumnBackgroundMeta)

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
	["smx"] = {
		["Left"]   = {["width"] = 32, ["diffuse"] = {1, 1, 1, 0.7}, ["judgecolored"] = true},
		["Down"]   = {["width"] = 32, ["diffuse"] = {1, 1, 1, 0.7}, ["judgecolored"] = true},
		["Center"] = {["width"] = 32, ["diffuse"] = {1, 1, 1, 0.7}, ["judgecolored"] = true},
		["Up"]     = {["width"] = 32, ["diffuse"] = {1, 1, 1, 0.7}, ["judgecolored"] = true},
		["Right"]  = {["width"] = 32, ["diffuse"] = {1, 1, 1, 0.7}, ["judgecolored"] = true},
	},
	["be-mu"] = {
		["scratch"] = {["width"] = 60, ["diffuse"] = {0.25, 1, 1, 1}},
		["Key1"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5,  1, 1}},
		["Key2"] = {["width"] = 28, ["diffuse"] = {0.5,  0.75, 1, 1}},
		["Key3"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5,  1, 1}},
		["Key4"] = {["width"] = 28, ["diffuse"] = {0.5,  0.75, 1, 1}},
		["Key5"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5,  1, 1}},
		["Key6"] = {["width"] = 28, ["diffuse"] = {0.5,  0.75, 1, 1}},
		["Key7"] = {["width"] = 36, ["diffuse"] = {0.25, 0.5,  1, 1}},
		["Foot"] = {["width"] = 38, ["diffuse"] = {0.25, 1, 1, 1}},
	},
	["po-mu"] = {
		["Left White"]   = {["width"] = 36, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Left Yellow"]  = {["width"] = 28, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Left Green"]   = {["width"] = 36, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Left Blue"]    = {["width"] = 28, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Red"]          = {["width"] = 36, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Right Blue"]   = {["width"] = 28, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Right Green"]  = {["width"] = 36, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Right Yellow"] = {["width"] = 28, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
		["Right White"]  = {["width"] = 36, ["diffuse"] = {0.25, 0.25, 1, 1}, ["judgecolored"] = true},
	},
	["kbx"] = {
		["Key1"]  = {["width"] = 60, ["diffuse"] = {0.4,  0.9,  1,   0.7}},
		["Key2"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key3"]  = {["width"] = 60, ["diffuse"] = {1.0,  0.6,  0.4, 0.7}},
		["Key4"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key5"]  = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key6"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key7"]  = {["width"] = 60, ["diffuse"] = {0.4,  0.4,  1,   0.7}},
		["Key8"]  = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key9"]  = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key10"] = {["width"] = 60, ["diffuse"] = {1,    0.75, 0.4, 0.7}},
		["Key11"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key12"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key13"] = {["width"] = 60, ["diffuse"] = {0.4,  0.4,  1,   0.7}},
		["Key14"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key15"] = {["width"] = 60, ["diffuse"] = {0.6,  1,    0.5, 0.7}},
		["Key16"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key17"] = {["width"] = 60, ["diffuse"] = {1.0,  0.6,  0.4, 0.7}},
		["Key18"] = {["width"] = 60, ["diffuse"] = {0.7,  1,    0.4, 0.7}},
		["Key19"] = {["width"] = 60, ["diffuse"] = {0.4,  0.9,  1,   0.7}},
	},
	["gddm"] = {
		["Left Crash"]   = {["width"] = 60, ["diffuse"] = {1,   0,    0.5, 0.25}, ["pulse"] = true},
		["Hi-Hat"]       = {["width"] = 60, ["diffuse"] = {0,   0.5,  1,   0.25}, ["pulse"] = true},
		["Hi-Hat Pedal"] = {["width"] = 60, ["diffuse"] = {1,   0,    0.5, 0.25}, ["pulse"] = true},
		["Snare"]        = {["width"] = 60, ["diffuse"] = {1,   1,    0,   0.25}, ["pulse"] = true},
		["High Tom"]     = {["width"] = 60, ["diffuse"] = {0,   1,    0,   0.25}, ["pulse"] = true},
		["Kick"]         = {["width"] = 60, ["diffuse"] = {0.5, 0,    1,   0.25}, ["pulse"] = true},
		["Mid Tom"]      = {["width"] = 60, ["diffuse"] = {1,   0,    0,   0.25}, ["pulse"] = true},
		["Floor Tom"]    = {["width"] = 60, ["diffuse"] = {1,   0.5,  0,   0.25}, ["pulse"] = true},
		["Ride"]         = {["width"] = 60, ["diffuse"] = {0,   0.5,  1,   0.25}, ["pulse"] = true},
		["Right Crash"]  = {["width"] = 60, ["diffuse"] = {0,   0.85, 1,   0.25}, ["pulse"] = true},
	},
	["gdgf"] = {
		["Fret 1"] = {["width"] = 60, ["diffuse"] = {1,   0,    0,   0.25}},
		["Fret 2"] = {["width"] = 60, ["diffuse"] = {0,   1,    0,   0.25}},
		["Fret 3"] = {["width"] = 60, ["diffuse"] = {0,   0.5,  1,   0.25}},
		["Fret 4"] = {["width"] = 60, ["diffuse"] = {1,   1,    0,   0.25}},
		["Fret 5"] = {["width"] = 60, ["diffuse"] = {1,   0,    0.5, 0.25}},
		["Fret 6"] = {["width"] = 60, ["diffuse"] = {0,   0.85, 1,   0.25}},
	},
}
local ReceptorLaserMeta = {
	__index = function (table, key, value)
		return {}
	end,
}
setmetatable(ReceptorLaserTable, ReceptorLaserMeta)

-- Table for receptor line and glow
local ReceptorLineAndGlowTable = {
	["be-mu"] = {
		["fill"] = {1, 0, 0, 1},
		["glow"] = {0, 1, 0.95, 1},
		["height"] = 12,
		["widths"] = {
			["scratch"] = 64,
			["Key1"] = 38,
			["Key2"] = 30,
			["Key3"] = 38,
			["Key4"] = 30,
			["Key5"] = 38,
			["Key6"] = 30,
			["Key7"] = 38,
			["Foot"] = 38,
		},
	},
	["po-mu"] = {
		["outline"] = {0, 0, 0, 1},
		["fill"] = {1, 0, 0, 1},
		["highlight"] = {1, 1, 1, 0.5},
		["height"] = 8,
		["widths"] = {
			["Left White"]   = 36,
			["Left Yellow"]  = 28,
			["Left Green"]   = 36,
			["Left Blue"]    = 28,
			["Red"]          = 36,
			["Right Blue"]   = 28,
			["Right Green"]  = 36,
			["Right Yellow"] = 28,
			["Right White"]  = 36,
		},
	},
	["kbx"] = {
		["outline"] = {1, 0, 0, 1},
		["fill"] = {0.7, 0, 0, 1},
		["highlight"] = {0.5, 0, 0, 1},
		["glow"] = {1, 0, 0, 0.7},
		["height"] = 12,
		["widths"] = {
			["Key1"] = 64,
			["Key2"] = 64,
			["Key3"] = 64,
			["Key4"] = 64,
			["Key5"] = 64,
			["Key6"] = 64,
			["Key7"] = 64,
			["Key8"] = 64,
			["Key9"] = 64,
			["Key10"] = 64,
			["Key11"] = 64,
			["Key12"] = 64,
			["Key13"] = 64,
			["Key14"] = 64,
			["Key15"] = 64,
			["Key16"] = 64,
			["Key17"] = 64,
			["Key18"] = 64,
			["Key19"] = 64,
		},
	},
	["gddm"] = {
		["outline"] = {1, 1, 0, 1},
		["fill"] = {0, 0, 0, 1},
		["height"] = 12,
		["widths"] = {
			["Left Crash"]   = 64,
			["Hi-Hat"]       = 64,
			["Hi-Hat Pedal"] = 64,
			["Snare"]        = 64,
			["High Tom"]     = 64,
			["Kick"]         = 64,
			["Mid Tom"]      = 64,
			["Floor Tom"]    = 64,
			["Ride"]         = 64,
			["Right Crash"]  = 64,
		},
	},
	["gdgf"] = {
		["outline"] = {1, 1, 0, 1},
		["fill"] = {0, 0, 0, 1},
		["height"] = 12,
		["widths"] = {
			["Fret 1"] = 64,
			["Fret 2"] = 64,
			["Fret 3"] = 64,
			["Fret 4"] = 64,
			["Fret 5"] = 64,
			["Fret 6"] = 64,
			["wailing"] = 64,
		},
	},
}

-- Old Redir function
ret.Redir = function (sButton, sElement)
	return sButton, sElement
end

local function RedirFunc(sButton, sElement, sGame, tRedir)
	-- Instead of separate hold heads, use the tap note graphics.
	if sElement:find("Hold Head") or sElement:find("Roll Head") or
	   sElement == "Tap Fake"
	then
		sElement = "Tap Note"
	end

	-- Instead of separate hold red, use the tap red graphics.
	if (sElement:find("Hold Red") or sElement:find("Roll Red")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Red"
	end

	-- Instead of separate hold blues, use the tap blue graphics.
	if (sElement:find("Hold Blue") or sElement:find("Roll Blue")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Blue"
	end

	-- Instead of separate hold yellows, use the tap yellow graphics.
	if (sElement:find("Hold Yellow") or sElement:find("Roll Yellow")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Yellow"
	end

	-- Instead of separate hold purples, use the tap purple graphics.
	if (sElement:find("Hold Purple") or sElement:find("Roll Purple")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Purple"
	end

	-- Instead of separate hold heads, use the tap note graphics.
	if (sElement:find("Hold BigRed") or sElement:find("Roll BigRed")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap BigRed"
	end

	-- Instead of separate hold blues, use the tap blue graphics.
	if (sElement:find("Hold BigBlue") or sElement:find("Roll BigBlue")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap BigBlue"
	end

	-- Instead of separate hold yellows, use the tap yellow graphics.
	if (sElement:find("Hold BigYellow") or sElement:find("Roll BigYellow")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap BigYellow"
	end

	-- Instead of separate hold purples, use the tap purple graphics.
	if (sElement:find("Hold BigPurple") or sElement:find("Roll BigPurple")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap BigPurple"
	end

	-- Instead of separate hold lefts, use the tap left graphics.
	if (sElement:find("Hold Left") or sElement:find("Roll Left")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Left"
	end

	-- Instead of separate hold rights, use the tap right graphics.
	if (sElement:find("Hold Right") or sElement:find("Roll Right")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Right"
	end

	-- Instead of separate hold centers, use the tap center graphics.
	if (sElement:find("Hold Center") or sElement:find("Roll Center")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Center"
	end

	-- Instead of separate hold claps, use the tap clap graphics.
	if (sElement:find("Hold Clap") or sElement:find("Roll Clap")) and not (sElement:find(" .*cap") or sElement:find(" Body") or sElement:find(" .*Tail")) then
		sElement = "Tap Clap"
	end

	-- Instead of separate hold jumps, use the tap jump graphics.
	if sElement:find("Hold Jump") or sElement:find("Roll Jump") then
		if sElement:find("Red") then
			sElement = "Jump Red"
		elseif sElement:find("Blue") then
			sElement = "Jump Red"
		elseif sElement:find("Yellow") then
			sElement = "Jump Red"
		elseif sElement:find("Purple") then
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

	if sGame == "taiko" or sGame == "bongo" then
		sElement = sElement:gsub("Roll", "Hold")
		sElement = sElement:gsub("Inactive", "Active")
	end

	if sGame == "stepstage" then
		if sElement:find("Hold") then
			sElement = sElement:gsub("Inactive", "Active")
		end

		if sElement:find("Roll") then
			sElement = sElement:gsub(" Red", ""):gsub(" Blue", ""):gsub(" Yellow", ""):gsub(" Purple", "")
		end
	end

	if sGame == "rb" then
		if sButton:find("^GHCym") and sElement == "Tap Note" then
			sElement = "Tap Cymbal"
		end
	end

	sButton = tRedir[sButton]

	return sButton, sElement
end

ret.Blank = {
}

local function func()
	local iColumn = tonumber(Var "Column")
	local sButton = Var "Button"
	local sGameButton = INPUTFILTER:GameButtonToKeyMapped(Var "GameButton", Var "Player")
	local sElement = Var "Element"
	local sColor = Var "Color"
	local sEffect = Var "Effect"
	local game = GAMESTATE:GetCurrentGame():GetName()
	local pn = Var "Player" or GAMESTATE:GetMasterPlayerNumber()
	local sPlayer = pn
	local sController = Var "Controller"

	-- Parameters table for extras
	-- Rhythm (bood): colored by rhythm
	-- Flat (bool): colored by column
	-- Brick (bool): use brick instead of gem for gh
	-- ColorMine (bool): mines are colored by rhythm
	-- HoldType (string): replace hold/roll bodies by specified name
	local dakeExtras = {
		["Rhythm"] = game == "dance" or game == "groove" or game == "smx",
		["Flat"] = not (game == "dance" or game == "groove" or game == "smx"),
		["ColorMine"] = false,
		["Brick"] = false,
		["HoldType"] = game == "smx" and "Diamond" or nil,
	}

	if ret.DakeExtras then
		for _k, _v in pairs(ret.DakeExtras) do
			dakeExtras[_k] = _v
		end
	end

	if game == "taiko" then
		dakeExtras.Rhythm = false
		dakeExtras.Flat = false
		dakeExtras.ColorMine = false
		dakeExtras.Brick = false
		dakeExtras.HoldType = nil
	elseif game == "bongo" then
		dakeExtras.Rhythm = false
		dakeExtras.Flat = false
		dakeExtras.ColorMine = false
		dakeExtras.Brick = false
		dakeExtras.HoldType = nil
	elseif game == "stepstage" then
		dakeExtras.Rhythm = false
		dakeExtras.Flat = false
		dakeExtras.ColorMine = false
		dakeExtras.Brick = false
		dakeExtras.HoldType = nil
	end

	if GAMESTATE:GetCurrentStyle(pn):GetStyleType() == "StyleType_TwoPlayersSharedSides" then
		dakeExtras.Rhythm = false
		dakeExtras.Flat = false
	end

	sPlayer = "PlayerNumber_" .. (sElement:match("^P%d+") or "P1")
	if sPlayer ~= "PlayerNumber_P1" then
		sElement = sElement:match("^P%d+ (.*)$")
	end

	local ButtonRedir = ButtonRedirTable[game]
	local ColumnColors = ColumnColorsTable[game]

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

	if GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Gh_Rhythm" then
		ButtonRedir = {
			["Fret 1"] = "Gem",
			["Fret 2"] = "Gem",
			["Fret 3"] = "Gem",
			["Fret 4"] = "Gem",
			["Fret 5"] = "Gem",
			["Fret 6"] = "Gem",
			["Strum"] = "GHKick",
			["Strum Up"] = "GHKick",
			["Strum Down"] = "GHKick",
		}
		setmetatable(ButtonRedir, ButtonRedirChildMeta)

		ColumnColors = { -- Rhythm Colors
			["Fret 1"] = 0,
			["Fret 2"] = 6,
			["Fret 3"] = 2,
			["Fret 4"] = 18,
			["Fret 5"] = 4,
			["Fret 6"] = 10, -- not in original game
			["Strum Up"] = 8,
			["Strum Down"] = 8,
		}
		setmetatable(ColumnColors, ColumnColorsChildMeta)
	end

	if dakeExtras.Brick and game == "gh" then
		ButtonRedir = {
			["Fret 1"] = "Brick",
			["Fret 2"] = "Brick",
			["Fret 3"] = "Brick",
			["Fret 4"] = "Brick",
			["Fret 5"] = "Brick",
			["Fret 6"] = "Brick",
			["Strum"] = "BrickStrum",
			["Strum Up"] = "BrickStrum",
			["Strum Down"] = "BrickStrum",
		}
		setmetatable(ButtonRedir, ButtonRedirChildMeta)

		ColumnColors = {
			["Fret 1"] = 4,
			["Fret 2"] = 0,
			["Fret 3"] = 6,
			["Fret 4"] = 2,
			["Fret 5"] = 18,
			["Fret 6"] = 10, -- not in original game
			["Strum Up"] = 18,
			["Strum Down"] = 18,
		}
		if GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Gh_Rhythm" then
			ColumnColors = {
				["Fret 1"] = 0,
				["Fret 2"] = 6,
				["Fret 3"] = 2,
				["Fret 4"] = 18,
				["Fret 5"] = 4,
				["Fret 6"] = 10, -- not in original game
				["Strum Up"] = 18,
				["Strum Down"] = 18,
			}
		end
		setmetatable(ColumnColors, ColumnColorsChildMeta)
	end

	local bBlank = ret.Blank[sElement];

	if sElement:find("Tail") and not sElement:find("LiftTail") then
		bBlank = true
	end

	if sElement == "Mine LiftTail" then
		bBlank = true
	end

	if game == "taiko" then
		if sElement:find("^Count") and (sElement:find(" .*cap") or sElement:find(" Body")) then
			bBlank = true
		end
	elseif game == "boxing" then
		if (sElement:find("^Hold") or sElement:find("^Roll") or sElement:find("^Count")) and (sElement:find(" .*cap") or sElement:find(" Body")) then
			bBlank = true
		end
	end

	if bBlank then
		-- Return a blank element. If SpriteOnly is set,
		-- we need to return a sprite; otherwise just return
		-- a dummy actor.
		local t = Var "SpriteOnly" and LoadActor("_blank") or Def.Actor {}
		return t .. {
			InitCommand = function (self) self:visible(false) end,
		}
	end

	local sButtonToLoad, sElementToLoad = RedirFunc(sButton, sElement, game, ButtonRedir)
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

	local function colorSprite (button, element, color)
		return Def.Sprite {
			Texture = NOTESKIN:GetPath(button, element),
			Frames = {{Frame = color, Delay = 1}},
		}
	end

	local function feverSprite (button, element, color, fever)
		return Def.Sprite {
			Texture = NOTESKIN:GetPath(button, element),
			Frames = {
				{Frame = color, Delay = 1},
				{Frame = fever, Delay = 1},
			},
		}
	end

	-- Commands for gh effects
	local GHEffects = {
		["StarInit"] = function (self, params) self:visible(false) end,
	}
	local GHEffectsMeta = {
		__index = function (table, key, value)
			return function (self, params) end
		end,
	}

	if game == "gh" and not dakeExtras.Brick then
		GHEffects.Init = function (self, params)
			if tonumber(sEffect) > 0 then
				self:visible(false)
			else
				self:visible(true)
			end
		end

		GHEffects.Fever = function (self, params)
			if params.pn ~= pn then return end
			if params.Active then
				self:setstate(1)
			else
				self:setstate(0)
			end
		end

		GHEffects.FeverMissed = function (self, params)
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

			if sButton:find("Strum") then
				self:glow({1, 1, 1, 0.7})
			else
				self:spin():effectclock("beat"):effectmagnitude(0, 0, 60)
			end
		end

		GHEffects.StarMissed = function (self, params)
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

	-- Commands for RB effects
	local RBEffects = {
		["StarInit"] = function (self, params) self:visible(false) end,
	}
	local RBEffectsMeta = {
		__index = function (table, key, value)
			return function (self, params) end
		end,
	}

	if game == "rb" or (game == "gh" and dakeExtras.Brick) then
		RBEffects.Init = function (self, params)
			if tonumber(sEffect) > 0 then
				self:visible(false)
			else
				self:visible(true)
			end
		end

		RBEffects.FeverMissed = function (self, params)
			if params.pn ~= pn then return end
			if tonumber(sEffect) > 0 then
				if params.Missed then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end

		RBEffects.StarInit = function (self, params)
			if tonumber(sEffect) > 0 then
				self:visible(true)
			else
				self:visible(false)
			end
		end

		RBEffects.StarMissed = function (self, params)
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

	setmetatable(RBEffects, RBEffectsMeta)

	local t = Def.ActorFrame {}

	if sElementToLoad == "Tap Mine" then
		local color = 0

		if dakeExtras.ColorMine then
			color = RhythmColors[sColor]
		end

		t[#t+1] = colorSprite("_common", "mine base", color) .. {
			InitCommand = function (self) self:zoom(zoomValue) end,
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
				self:rotationx(GAMESTATE:GetIsFieldReversed() and 180 or 0)
				self:zoom(zoomValue)
			end,
			-- TODO: flip on reverse
			-- ReverseOnCommand = function (self) self:rotationx(180) end,
			-- ReverseOffCommand = function (self) self:rotationx(0) end,
		}
	elseif sElementToLoad:find("^Tap Wail") then
		local rotZ = WailRotateZ[sElementToLoad]
		local color = WailColors[sElementToLoad]

		t[#t+1] = colorSprite("_common", "underlay guitar", color) .. {
			InitCommand = function (self) self:diffuse({0.5, 0.5, 0.5, 1}) end,
		}

		t[#t+1] = colorSprite("_wailing", "tap wail up", color) .. {
			InitCommand = function (self) self:rotationz(rotZ) end,
		}
	elseif sElementToLoad:find("^Tap") then
		local color = 0

		if sButton == "wailing" then
			color = 4
		else
			if GAMESTATE:GetCurrentStyle(pn):GetStyleType() == "StyleType_TwoPlayersSharedSides" then
				color = RoutineColors[sPlayer]
			elseif dakeExtras.Rhythm then
				color = RhythmColors[sColor]
			elseif dakeExtras.Flat then
				color = ColumnColors[sButton]
			end
		end

		if NoteUnderlayTable[game][sButton] then
			t[#t+1] = colorSprite("_common", "underlay " .. NoteUnderlayTable[game][sButton].texture, sButton == "wailing" and 4 or 0) .. {
				InitCommand = function (self) self:rotationz(NoteUnderlayTable[game][sButton].rot):diffuse(NoteUnderlayTable[game][sButton].diffuse) end,
			}
		end

		local texture = TapRedir[sButtonToLoad]

		if sElementToLoad == "Tap Cymbal" then
			texture = "_common"
		end

		local tapNote = sElementToLoad:lower()

		if game ~= "rb" and not (game == "gh" and dakeExtras.Brick) then
			if sElementToLoad == "Tap Hopo" then
				tapNote = "tap note"
			elseif sElementToLoad == "Tap Taps" then
				tapNote = "tap note"
			end
		end

		if sElementToLoad:find("Red") or sElementToLoad:find("Blue") or sElementToLoad:find("Yellow") or sElementToLoad:find("Purple") then
			color = 0
		end

		if (game == "gh" and not dakeExtras.Brick) or (game == "rb" or GAMESTATE:GetCurrentStyle(pn):GetStepsType():find("5")) then
			t[#t+1] = feverSprite(texture, tapNote, color, 20) .. {
				InitCommand = function (self)
					GHEffects.Init(self, {})
					self:pause():rotationy(rotY):rotationz(rotZ)
				end,
				FeverMessageCommand = GHEffects.Fever,
				FeverMissedMessageCommand = GHEffects.FeverMissed,
			}

			t[#t+1] = feverSprite(sButtonToLoad == "Strum" and "_strum" or sButtonToLoad == "GHKick" and "_ghkick" or "_common", "tap star", color, 20) .. {
				InitCommand = function (self)
					GHEffects.StarInit(self, {})
					self:pause():z(-4):glow({0.5, 1, 1, 1})
				end,
				FeverMessageCommand = GHEffects.Fever,
				FeverMissedMessageCommand = GHEffects.StarMissed,
			}

			t[#t+1] = feverSprite(sButtonToLoad == "Strum" and "_strum" or sButtonToLoad == "GHKick" and "_ghkick" or "_common", "tap star", color, 20) .. {
				InitCommand = function (self)
					GHEffects.StarInit(self, {})
					self:pause()
				end,
				FeverMessageCommand = GHEffects.Fever,
				FeverMissedMessageCommand = GHEffects.StarMissed,
			}

			if sElementToLoad == "Tap Hopo" then
				t[#t+1] = singleSprite(sButton:find("Strum") and "_strum" or "_common", "overlay hopo") .. {
					InitCommand = function (self) self:z(8) end,
				}
			elseif sElementToLoad == "Tap Taps" then
				t[#t+1] = singleSprite(sButton:find("Strum") and "_strum" or "_common", "overlay taps") .. {
					InitCommand = function (self) self:z(8) end,
				}
			end
		elseif game == "rb" or (game == "gh" and dakeExtras.Brick) then
			local tapStar = "tap star"

			if sElementToLoad == "Tap Hopo" then
				tapStar = "tap hopostar"
			elseif sElementToLoad == "Tap Taps" then
				tapStar = "tap tapsstar"
			elseif sElementToLoad == "Tap Cymbal" then
				tapStar = "tap cymbalstar"
			end
	
			t[#t+1] = colorSprite(texture, tapNote, color) .. {
				InitCommand = function (self)
					RBEffects.Init(self, {})
					self:rotationy(rotY):rotationz(rotZ)
				end,
				FeverMissedMessageCommand = RBEffects.FeverMissed,
			}

			t[#t+1] = colorSprite(texture, tapStar, color) .. {
				InitCommand = function (self)
					RBEffects.StarInit(self, {})
				end,
				FeverMissedMessageCommand = RBEffects.StarMissed,
			}
		else
			t[#t+1] = colorSprite(texture, tapNote, color) .. {
				InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ) end,
			}
		end

		if sButton == "Center" and (game == "pump" or game == "techno") then
			t[#t+1] = singleSprite("_common", "overlay feet")
		end

		if sButton == "Main" and game == "taiko" then
			t[#t+1] = singleSprite(sElement:find("Big") and "_big" or "_common", "overlay smiley")
		end

		if game == "kbx" then
			-- Guidelines for kbx, work in progress
			local guidelineColors = {
				["Key1"]  = {0.5,  0.95, 1,    1},
				["Key2"]  = {0.75, 1,    0.5,  1},
				["Key3"]  = {1,    0.5,  0.5,  1},
				["Key4"]  = {0.75, 1,    0.5,  1},
				["Key5"]  = {1,    1,    1,    1},
				["Key6"]  = {0.75, 1,    0.5,  1},
				["Key7"]  = {0.5,  0.75, 1,    1},
				["Key8"]  = {0.75, 1,    0.5,  1},
				["Key9"]  = {1,    1,    1,    1},
				["Key10"] = {1,    0.75, 0.5,  1},
				["Key11"] = {1,    1,    1,    1},
				["Key12"] = {0.75, 1,    0.5,  1},
				["Key13"] = {0.5,  0.75, 1,    1},
				["Key14"] = {0.75, 1,    0.5,  1},
				["Key15"] = {1,    1,    1,    1},
				["Key16"] = {0.75, 1,    0.5,  1},
				["Key17"] = {1,    0.5,  0.5,  1},
				["Key18"] = {0.75, 1,    0.5,  1},
				["Key19"] = {0.5,  0.95, 1,    1},
			}

			-- TODO: make guideline height 1.5x of scroll BPM
			t[#t+1] = Def.Quad {
				InitCommand = function (self) self:zoomto(4, 192):halign(0):x(-32):diffuse(guidelineColors[sButton]):faderight(0.25):fadetop(0.5):fadebottom(0.5) end,
			}
			t[#t+1] = Def.Quad {
				InitCommand = function (self) self:zoomto(4, 192):halign(1):x(32):diffuse(guidelineColors[sButton]):fadeleft(0.25):fadetop(0.5):fadebottom(0.5) end,
			}
		end
	elseif sElementToLoad:find("^Jump") then
		local color = 0

		if sButton == "wailing" then
			color = 4
		else
			if GAMESTATE:GetCurrentStyle(pn):GetStyleType() == "StyleType_TwoPlayersSharedSides" then
				color = RoutineColors[sPlayer]
			elseif dakeExtras.Rhythm then
				color = RhythmColors[sColor]
			elseif dakeExtras.Flat then
				color = ColumnColors[sButton]
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
			color = 0
			tapNote = "Tap Red"
		elseif sElementToLoad:find("Blue") then
			color = 0
			tapNote = "Tap Blue"
		elseif sElementToLoad:find("Yellow") then
			color = 0
			tapNote = "Tap Yellow"
		elseif sElementToLoad:find("Purple") then
			color = 0
			tapNote = "Tap Purple"
		end

		t[#t+1] = singleSprite(TapRedir[sButtonToLoad], sElementToLoad:lower()) .. {
			InitCommand = function (self) self:halign(bodyAlign):zoomx(bodyZoom) end,
		}

		t[#t+1] = colorSprite(TapRedir[sButtonToLoad], tapNote:lower(), color) .. {
			InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ) end,
		}
	elseif sElementToLoad:find("^Count .*cap") or sElementToLoad:find("^Count %w+ .*cap") then
		-- TODO
		-- t = singleSprite(HoldCapRedir[dakeExtras.HoldType or sButtonToLoad], sElementToLoad:lower())
	elseif sElementToLoad:find("^Count Body") or sElementToLoad:find("^Count %w+ Body") then
		-- TODO
		-- t = singleSprite(HoldBodyRedir[dakeExtras.HoldType or sButtonToLoad], sElementToLoad:lower())
	elseif sElementToLoad:find("^Count") then
		if game == "taiko" then
			t[#t+1] = singleSprite("_taiko", "count yellow active balloon") .. {
				InitCommand = function (self) self:halign(0) end,
			}

			if not sElement:find("Inactive") then
				t = t .. {
					CountCommand = function (self, params)
						self:GetChild("Bubble"):GetChild("Count"):settext(params.Count)
						self:visible(true)
						if params.Count <= 0 then
							self:visible(false)
						end
					end,
				}

				t[#t+1] = Def.ActorFrame {
					Name = "Bubble",
					InitCommand = function (self) self:y(sController == "GameController_1" and -80 or 80) end,
					singleSprite("_taiko", "count yellow active bubble") .. {
						InitCommand = function (self) self:rotationx(sController == "GameController_1" and 0 or 180) end,
					},
					Def.BitmapText {
						Name = "Count",
						Text = "---",
						Font = "Common Normal",
						InitCommand = function (self) self:diffuse({0, 0, 0, 1}):zoom(1.4) end,
					},
				}
			end

			if sElement:find("Big") then
				t[#t+1] = singleSprite("_taiko", "count bigyellow active base")
			else
				t[#t+1] = singleSprite("_taiko", "count yellow active base")
			end

			t[#t+1] = singleSprite(sElement:find("Big") and "_big" or "_common", "overlay smiley")
		else
			-- TODO
		end
	elseif sElementToLoad:find("^Hold .*cap") or sElementToLoad:find("^Roll .*cap") or
	       sElementToLoad:find("^Hold %w+ .*cap") or sElementToLoad:find("^Roll %w+ .*cap")
	then
		t = singleSprite(HoldCapRedir[dakeExtras.HoldType or sButtonToLoad], sElementToLoad:lower())
	elseif sElementToLoad:find("^Hold Body") or sElementToLoad:find("^Roll Body") or
	       sElementToLoad:find("^Hold %w+ Body") or sElementToLoad:find("^Roll %w+ Body")
	then
		t = singleSprite(HoldBodyRedir[dakeExtras.HoldType or sButtonToLoad], sElementToLoad:lower())
	elseif sElementToLoad:find("^Mine .*cap") then
		local sizeToLoad = zoomValue < 0.7 and "_half" or "_common"
		t = singleSprite(sizeToLoad, sElementToLoad:lower())
	elseif sElementToLoad:find("^Mine Body") then
		local sizeToLoad = zoomValue < 0.7 and "_half" or "_common"
		t = singleSprite(sizeToLoad, sElementToLoad:lower())
	elseif sElementToLoad == "Receptor" then
		if game == "taiko" then
			local taikoLaser = nil

			local taikoLaserColors = {
				["Taiko Left Outside"] = {0.25, 0.75, 1, 0.5},
				["Taiko Right Outside"] = {0.25, 0.75, 1, 0.5},
				["Taiko Left Inside"] = {1, 0.75, 0.5, 0.5},
				["Taiko Right Inside"] = {1, 0.75, 0.5, 0.5},
			}

			local taikoLaserInput = function (event)
				if ToEnumShortString(event.type) == "FirstPress" and event.PlayerNumber == pn then
					if taikoLaserColors[event.button] then
						taikoLaser:GetChild("Laser"):finishtweening():diffuse(taikoLaserColors[event.button]):queuecommand("Push")
					end
				end
			end

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self)
					taikoLaser = self
					SCREENMAN:GetTopScreen():AddInputCallback(taikoLaserInput)
				end,
				Def.Quad {
					Name = "Laser",
					OnCommand = function (self) self:halign(0):valign(0.5):xy(-64, 0):scaletoclipped(512, 128):faderight(1):diffusealpha(0) end,
					PushCommand = function (self) self:diffusealpha(0.5):decelerate(0.4):diffusealpha(0) end,
				},
			}
		elseif game == "bongo" then
			local bongoLaser = nil

			-- TODO: Bongo Center {1, 0, 0.5, 0.5}
			local bongoLaserColors = {
				["Bongo Left"] = {1, 0.9, 0, 0.5},
				["Bongo Right"] = {1, 0, 0, 0.5},
				["Bongo Clap"] = {0, 0.9, 1, 0.5},
			}

			local bongoLaserInput = function (event)
				if ToEnumShortString(event.type) == "FirstPress" and event.PlayerNumber == pn then
					if bongoLaserColors[event.button] then
						bongoLaser:GetChild("Laser Upper"):finishtweening():diffuse(bongoLaserColors[event.button]):diffusealpha(0):diffuselowerleft(bongoLaserColors[event.button]):queuecommand("Push")
						bongoLaser:GetChild("Laser Middle"):finishtweening():diffuse(bongoLaserColors[event.button]):diffusealpha(0):diffuseleftedge(bongoLaserColors[event.button]):queuecommand("Push")
						bongoLaser:GetChild("Laser Lower"):finishtweening():diffuse(bongoLaserColors[event.button]):diffusealpha(0):diffuseupperleft(bongoLaserColors[event.button]):queuecommand("Push")
					end
				end
			end

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self)
					bongoLaser = self
					SCREENMAN:GetTopScreen():AddInputCallback(bongoLaserInput)
				end,
				Def.Quad {
					Name = "Laser Upper",
					OnCommand = function (self) self:halign(0):valign(1):xy(-64, -16):scaletoclipped(512, 16):diffusealpha(0) end,
					PushCommand = function (self) self:decelerate(0.4):diffusealpha(0) end,
				},
				Def.Quad {
					Name = "Laser Middle",
					OnCommand = function (self) self:halign(0):valign(0.5):xy(-64, 0):scaletoclipped(512, 32):diffusealpha(0) end,
					PushCommand = function (self) self:decelerate(0.4):diffusealpha(0) end,
				},
				Def.Quad {
					Name = "Laser Lower",
					OnCommand = function (self) self:halign(0):valign(0):xy(-64, 16):scaletoclipped(512, 16):diffusealpha(0) end,
					PushCommand = function (self) self:decelerate(0.4):diffusealpha(0) end,
				},
			}
		end

		if THEME:GetMetric("NoteField", "NoteFieldType") == bms and not THEME:GetMetric("NoteField", "ShowBoard") then
			-- column background for be-mu and po-mu
			if ColumnBackgroundTable[game][sButton] then
				t[#t+1] = Def.Quad {
					InitCommand = function (self) self:zoomto(ColumnBackgroundTable[game][sButton].width, 9999):valign(1):diffuse(ColumnBackgroundTable[game][sButton].diffuse) end,
					ReverseOnCommand = function (self) self:valign(1) end,
					ReverseOffCommand = function (self) self:valign(0) end,
				}

				if ColumnBackgroundTable[game][sButton].lowerDiffuse then
					t[#t+1] = Def.Quad {
						InitCommand = function (self) self:zoomto(ColumnBackgroundTable[game][sButton].width, 9999):valign(0):diffuse(ColumnBackgroundTable[game][sButton].lowerDiffuse) end,
						ReverseOnCommand = function (self) self:valign(0) end,
						ReverseOffCommand = function (self) self:valign(1) end,
					}
				end
			end

			-- column separator for be-mu and gddm
			if game == "be-mu" then
				local columnPositions = {
					["Key1"] = 19,
					["Key2"] = 15,
					["Key3"] = 19,
					["Key4"] = 15,
					["Key5"] = 19,
					["Key6"] = 15,
					["Key7"] = 19,
					["scratch"] = 32,
					["Foot"] = 19,
				}

				-- TODO: remove of usage
				local function isFirstColumnForController()
					local numColumns = GAMESTATE:GetCurrentStyle(pn):ColumnsPerPlayer()
					local styleType = GAMESTATE:GetCurrentStyle(pn):GetStyleType()
					local isSingleOrVersus = styleType == "StyleType_OnePlayerOneSide" or styleType == "StyleType_TwoPlayersTwoSides"

					if GAMESTATE:GetCurrentStyle(pn):GetStepsType():find("6") then
						if isSingleOrVersus or sController == "GameController_2" then
							return iColumn == numColumns - 1
						else
							return iColumn == numColumns / 2 - 1
						end
					else
						if isSingleOrVersus or sController == "GameController_1" then
							return iColumn == 0
						else
							return iColumn == numColumns / 2
						end
					end
				end

				if columnPositions[sButton] then
					-- left side
					if isFirstColumnForController() then
						t[#t+1] = Def.Quad {
							InitCommand = function(self) self:zoomto(2, 9999):x(-columnPositions[sButton]):y(-6):valign(1):diffuse({0.4, 0.4, 0.4, 1}) end,
							ReverseOnCommand = function (self) self:y(-6):valign(1) end,
							ReverseOffCommand = function (self) self:y(6):valign(0) end,
						}
					end

					-- right side
					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(2, 9999):x(columnPositions[sButton]):y(-6):valign(1):diffuse({0.4, 0.4, 0.4, 1}) end,
						ReverseOnCommand = function (self) self:y(-6):valign(1) end,
						ReverseOffCommand = function (self) self:y(6):valign(0) end,
					}
				end
			elseif game == "gddm" then
				-- left side
				if iColumn == 0 then
					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(4, 9999):x(-32):diffuse({1, 1, 1, 1}):fadeleft(0.4):faderight(0.4) end,
					}
				else
					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(4, 4999):x(-32):y(-8):valign(1):diffuse({0.5, 0.5, 0.5, 0.5}):fadeleft(0.4):faderight(0.4) end,
						ReverseOnCommand = function (self) self:y(-8):valign(1) end,
						ReverseOffCommand = function (self) self:y(8):valign(0) end,
					}

					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(4, 4999):x(-32):y(8):valign(0):diffuse({0.5, 0.5, 0.5, 0.5}):fadeleft(0.4):faderight(0.4) end,
						ReverseOnCommand = function (self) self:y(8):valign(0) end,
						ReverseOffCommand = function (self) self:y(-8):valign(1) end,
					}
				end

				-- right side
				if iColumn == GAMESTATE:GetCurrentStyle(pn):ColumnsPerPlayer() - 1 then
					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(4, 9999):x(32):diffuse({1, 1, 1, 1}):fadeleft(0.4):faderight(0.4) end,
					}
				else
					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(4, 4999):x(32):y(-8):valign(1):diffuse({0.5, 0.5, 0.5, 0.5}):fadeleft(0.4):faderight(0.4) end,
						ReverseOnCommand = function (self) self:y(-8):valign(1) end,
						ReverseOffCommand = function (self) self:y(8):valign(0) end,
					}

					t[#t+1] = Def.Quad {
						InitCommand = function(self) self:zoomto(4, 4999):x(32):y(8):valign(0):diffuse({0.5, 0.5, 0.5, 0.5}):fadeleft(0.4):faderight(0.4) end,
						ReverseOnCommand = function (self) self:y(8):valign(0) end,
						ReverseOffCommand = function (self) self:y(-8):valign(1) end,
					}
				end
			end
		end

		if ReceptorLineAndGlowTable[game] then
			if ReceptorLineAndGlowTable[game].glow then
				local reverseGlow = false
				if GAMESTATE.GetIsFieldReversed then
					reverseGlow = GAMESTATE:GetIsFieldReversed()
				end

				if not (sButton:find("Strum") or sButton:find("open")) then
					t[#t+1] = Def.Quad {
						InitCommand = function (self) self:zoomto(ReceptorLineAndGlowTable[game].widths[sButton], reverseLaser and 32 or -32):valign(1):diffuse(ReceptorLineAndGlowTable[game].glow):fadetop(0.8):fadebottom(0.05) end,
						ReverseOnCommand = function (self) self:zoomto(ReceptorLineAndGlowTable[game].widths[sButton], 32) end,
						ReverseOffCommand = function (self) self:zoomto(ReceptorLineAndGlowTable[game].widths[sButton], -32) end,
						OnCommand = function (self) self:effectclock("beat"):diffuseramp():effectcolor1({ReceptorLineAndGlowTable[game].glow[1], ReceptorLineAndGlowTable[game].glow[2], ReceptorLineAndGlowTable[game].glow[3], ReceptorLineAndGlowTable[game].glow[4] * 0.25}):effectcolor2(ReceptorLineAndGlowTable[game].glow):effectoffset(0.05) end,
					}
				end
			end
		end

		if ReceptorLaserTable[game][sButton] then
			local reverseLaser = false
			if GAMESTATE.GetIsFieldReversed then
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
					-- NoneCommand = function (self) self:diffuse(JudgmentLineToColor("JudgmentLine_Miss")):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
					NoneCommand = function (self) self:diffuse(ReceptorLaserTable[game][sButton].diffuse):diffusealpha(ReceptorLaserTable[game][sButton].diffuse[4]) end,
				}
			end
		end

		if ReceptorLineAndGlowTable[game] then
			if not (sButton:find("Strum") or sButton:find("open")) then
				if ReceptorLineAndGlowTable[game].outline then
					t[#t+1] = Def.Quad {
						InitCommand = function (self) self:zoomto(ReceptorLineAndGlowTable[game].widths[sButton], ReceptorLineAndGlowTable[game].height + 4):diffuse(ReceptorLineAndGlowTable[game].outline) end,
					}
				end

				if ReceptorLineAndGlowTable[game].fill then
					t[#t+1] = Def.Quad {
						InitCommand = function (self) self:zoomto(ReceptorLineAndGlowTable[game].widths[sButton], ReceptorLineAndGlowTable[game].height):diffuse(ReceptorLineAndGlowTable[game].fill) end,
					}
				end

				if ReceptorLineAndGlowTable[game].highlight then
					t[#t+1] = Def.Quad {
						InitCommand = function (self) self:zoomto(ReceptorLineAndGlowTable[game].widths[sButton], ReceptorLineAndGlowTable[game].height):diffuse(ReceptorLineAndGlowTable[game].highlight):fadetop(0.3):fadebottom(0.7) end,
					}
				end
			end

			if sButton:find("wailing") then
				t[#t+1] = singleSprite("_common", "overlay wail")
			end
		else
			if game == "boxing" then
				t[#t+1] = singleSprite("_boxing", "receptor sandbag") .. {
					InitCommand = function (self) self:valign(0):y(-32) end,
					JudgmentMessageCommand = function (self, params)
						if params.FirstTrack <= 2 then
							self:stoptweening():decelerate(0.1):rotationz(-45):accelerate(0.1):rotationz(0)
						else
							self:stoptweening():decelerate(0.1):rotationz(45):accelerate(0.1):rotationz(0)
						end
					end,
				}
			elseif game ~= "smx" and game ~= "bongo" then
				if not (sButton:find("Strum") or sButton:find("open") or sButtonToLoad:find("RBKick") or sButtonToLoad:find("GHKick")) then
					if game == "maniax" or game == "gh" or game == "rb" then
						t[#t+1] = feverSprite(TapRedir[sButtonToLoad], "receptor colored", ColumnColors[sButton], game == "gh" and 20 or ColumnColors[sButton]) .. {
							InitCommand = function (self) self:pause():rotationy(rotY):rotationz(rotZ):effectclock("beat"):diffuseramp():effectcolor1({0.8, 0.8, 0.8, 0.75}):effectcolor2({1, 1, 1, 0.75}):effectoffset(0.05) end,
							NoneCommand = function (self) self:finishtweening():zoom(0.85):diffusealpha(0.7):linear(0.1):diffusealpha(1):zoom(1) end,
							FeverMessageCommand = function (self, params)
								if params.pn ~= pn then return end
								if params.Active then
									self:setstate(1)
								else
									self:setstate(0)
								end
							end,
						}
					else
						t[#t+1] = singleSprite(TapRedir[sButtonToLoad], "receptor base") .. {
							InitCommand = function (self) self:rotationy(rotY):rotationz(rotZ):effectclock("beat"):diffuseramp():effectcolor1({0.8, 0.8, 0.8, 1}):effectcolor2({1, 1, 1, 1}):effectoffset(0.05) end,
							NoneCommand = function (self) self:finishtweening():zoom(0.85):diffusealpha(0.9):linear(0.1):diffusealpha(1):zoom(1) end,
						}
					end
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
			end
		end

		if game == "gh" and sButton:find("Strum") then
			local isFever = false

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self) self:xy(0, 56) end,
				Def.Quad {
					OnCommand = function (self) self:zoomto(160, 32):diffuse({0, 0, 0, 0.7}) end,
				},
				Def.BitmapText {
					Text = "0",
					Font = "Common Normal",
					OnCommand = function (self) self:halign(1):x(72) end,
					ComboChangedMessageCommand = function (self, params)
						if params.Player ~= pn then return end
						self:settext(params.PlayerStageStats:GetScore())
					end,
				},
			}

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self) self:xy(-200, -128) end,
				Def.Quad {
					OnCommand = function (self) self:y(-16):zoomto(32, 192):diffuse({0, 0, 0, 0.7}) end,
				},
				Def.Quad {
					OnCommand = function (self) self:zoomto(24, 152):diffuse({1, 1, 1, 1}):croptop(1) end,
					ComboChangedMessageCommand = function (self, params)
						if params.Player ~= pn then return end
						local curCombo = params.PlayerStageStats:GetCurrentCombo()

						if params.PlayerStageStats:GetCurrentMissCombo() > 0 then
							self:diffuse({1, 1, 1, 1}):croptop(1)
						else
							if curCombo >= 30 then
								self:diffuse({1, 0, 1, 1})
							elseif curCombo >= 20 then
								self:diffuse({0, 1, 0, 1})
							elseif curCombo >= 10 then
								self:diffuse({1, 0.8, 0, 1})
							else
								self:diffuse({1, 1, 1, 1})
							end

							if isFever then
								self:diffuse({0, 1, 1, 1})
							end

							local comboMod = curCombo % 10
							if curCombo >= 30 then comboMod = 10 end

							self:croptop(1 - comboMod / 10)
						end
					end,
				},
				Def.BitmapText {
					Text = "1x",
					Font = "Common Normal",
					OnCommand = function (self) self:y(-96):diffuse({1, 1, 1, 1}) end,
					ComboChangedMessageCommand = function (self, params)
						if params.Player ~= pn then return end
						local curCombo = params.PlayerStageStats:GetCurrentCombo()
						local percent = 1

						if curCombo >= 30 then
							percent = 4
						elseif curCombo >= 20 then
							percent = 3
						elseif curCombo >= 10 then
							percent = 2
						end

						if params.PlayerStageStats:GetCurrentMissCombo() > 0 then
							self:diffuse({1, 1, 1, 1})
						else
							if curCombo >= 30 then
								self:diffuse({1, 0, 1, 1})
							elseif curCombo >= 20 then
								self:diffuse({0, 1, 0, 1})
							elseif curCombo >= 10 then
								self:diffuse({1, 0.8, 0, 1})
							else
								self:diffuse({1, 1, 1, 1})
							end
						end

						if isFever then
							self:diffuse({0, 1, 1, 1})
							percent = percent * 2
						end

						self:settext(percent .. "x")
					end,
				},
			}

			t[#t+1] = Def.ActorFrame{
				OnCommand = function (self) self:xy(200, -128) end,
				Def.Quad {
					OnCommand = function (self) self:y(-16):zoomto(32, 192):diffuse({0, 0, 0, 0.7}) end,
				},
				Def.Quad {
					OnCommand = function (self) self:zoomto(24, 152):diffuse({0, 1, 1, 1}):croptop(1) end,
					FeverMessageCommand = function (self, params)
						if params.pn ~= pn then return end
						if params.Active then
							self.Active = true
							self:linear((self.Amount / 125) * 15):croptop(1)
						else
							self.Active = false
						end
					end,
					FeverScoreMessageCommand = function (self, params)
						if params.pn ~= pn then return end
						self.Amount = params.Amount
						self:stoptweening():linear(0.1):croptop(1 - (params.Amount / 125))
						if not self.Active then
							if params.Amount >= 50 then
								self:diffuse({0, 1, 1, 1})
							else
								self:diffuse({0, 1, 1, 0.5})
							end
						else
							self:stoptweening():linear((self.Amount / 125) * 15):croptop(1)
						end
					end,
				},
				Def.Quad {
					OnCommand = function (self) self:y(15.2):zoomto(24, 2):diffuse({1, 1, 1, 1}) end,
				},
				Def.BitmapText {
					Text = "GO!",
					Font = "Common Normal",
					OnCommand = function (self) self:y(-96):zoom(0.7):diffusealpha(0) end,
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
								self:diffusealpha(1):rainbow():settext("GO!")
							else
								self:stopeffect():diffuse({1, 1, 1, 1}):settext(math.floor(params.Amount + 0.5))
							end
						end
					end,
				},
			}
		end
	elseif sElementToLoad == "Ovceptor" then
		if game == "bongo" then
			t[#t+1] = singleSprite("_bongo", "receptor overlay")
		end

		if game == "smx" then
			local sideReceptor = singleSprite("_common", "receptor side") .. {
				InitCommand = function (self) self:halign(1):x(12):diffusealpha(0) end,
				StepMessageCommand = function (self, params)
					if params.PlayerNumber ~= pn then return end
					self:finishtweening():diffusealpha(1):linear(0.3):diffusealpha(0)
				end,
			}

			if iColumn == 0 then
				t[#t+1] = Def.ActorFrame {
					InitCommand = function (self) self:x(-44):bounce():effectclock("beat"):effectmagnitude(-8, 0, 0):effectperiod(1):effectoffset(0.05) end,
					sideReceptor,
					singleSprite("_common", "receptor pointer"),
				}
			elseif iColumn == GAMESTATE:GetCurrentStyle(pn):ColumnsPerPlayer() - 1 then
				t[#t+1] = Def.ActorFrame {
					InitCommand = function (self) self:x(44):zoomx(-1):bounce():effectclock("beat"):effectmagnitude(8, 0, 0):effectperiod(1):effectoffset(0.05) end,
					sideReceptor,
					singleSprite("_common", "receptor pointer"),
				}
			end
		end

		if game == "taiko" then
			local taikoDrum = nil

			local taikoDrumColors = {
				["Taiko Left Outside"] = {0, 0.5, 1, 1},
				["Taiko Right Outside"] = {0, 0.5, 1, 1},
				["Taiko Left Inside"] = {1, 0, 0, 1},
				["Taiko Right Inside"] = {1, 0, 0, 1},
			}

			local taikoDrumInput = function (event)
				if ToEnumShortString(event.type) == "FirstPress" and event.PlayerNumber == pn then
					if taikoDrum:GetChild("Taiko Drum"):GetChild(event.button) then
						taikoDrum:GetChild("Taiko Drum"):GetChild(event.button):finishtweening():queuecommand("Push")
					end
				end
			end

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self)
					taikoDrum = self
					SCREENMAN:GetTopScreen():AddInputCallback(taikoDrumInput)
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
						PushCommand = function (self) self:diffuse(taikoDrumColors["Taiko Left Outside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Taiko Right Outside",
						Texture = "_taiko receptor glow outside",
						OnCommand = function (self) self:rotationy(180):diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoDrumColors["Taiko Right Outside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Taiko Left Inside",
						Texture = "_taiko receptor glow inside",
						OnCommand = function (self) self:diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoDrumColors["Taiko Left Inside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Taiko Right Inside",
						Texture = "_taiko receptor glow inside",
						OnCommand = function (self) self:rotationy(180):diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(taikoDrumColors["Taiko Right Inside"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
				},
			}
		elseif game == "bongo" then
			local bongoDrum = nil

			local bongoDrumColors = {
				["Bongo Left"] = {1, 0.9, 0, 1},
				["Bongo Right"] = {1, 0, 0, 1},
				["Bongo Clap"] = {0, 0.9, 1, 1},
			}

			local bongoDrumInput = function (event)
				if ToEnumShortString(event.type) == "FirstPress" and event.PlayerNumber == pn then
					if bongoDrum:GetChild("Bongo Drum"):GetChild(event.button) then
						bongoDrum:GetChild("Bongo Drum"):GetChild(event.button):finishtweening():queuecommand("Push")
					end
				end
			end

			t[#t+1] = Def.ActorFrame {
				OnCommand = function (self)
					bongoDrum = self
					SCREENMAN:GetTopScreen():AddInputCallback(bongoDrumInput)
				end,
				Def.ActorFrame {
					Name = "Bongo Drum",
					OnCommand = function (self) self:x(-128) end,
					Def.Sprite {
						Texture = "_bongo receptor glyph",
					},
					Def.Sprite{
						Name = "Bongo Left",
						Texture = "_Bongo receptor glow left",
						OnCommand = function (self) self:diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(bongoDrumColors["Bongo Left"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Bongo Right",
						Texture = "_Bongo receptor glow right",
						OnCommand = function (self) self:diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(bongoDrumColors["Bongo Right"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
					Def.Sprite{
						Name = "Bongo Clap",
						Texture = "_Bongo receptor glow clap",
						OnCommand = function (self) self:diffuse({1, 1, 1, 0}) end,
						PushCommand = function (self) self:diffuse(bongoDrumColors["Bongo Clap"]):decelerate(0.4):diffuse({1, 1, 1, 0}) end,
					},
				},
			}
		end

		if ReceptorGlyphTable[game][sButton] then
			local glyphReverse = false
			if GAMESTATE.GetIsFieldReversed then
				glyphReverse = GAMESTATE:GetIsFieldReversed()
			end

			t[#t+1] = singleSprite(ReceptorGlyphTable[game][sButton].texture, "receptor glyph") .. {
				InitCommand = function (self) self:xy(ReceptorGlyphTable[game][sButton].x, ReceptorGlyphTable[game][sButton].y):rotationz(ReceptorGlyphTable[game][sButton].rot):diffuse(ReceptorGlyphTable[game][sButton].diffuse) end,
				ReverseOnCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y) end,
				ReverseOffCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y * (glyphReverse and -1 or 1)) end,
			}

			if ReceptorGlyphTable[game][sButton].turntable then
				t[#t+1] = singleSprite(ReceptorGlyphTable[game][sButton].texture, "receptor turntable") .. {
					InitCommand = function (self) self:xy(ReceptorGlyphTable[game][sButton].x, ReceptorGlyphTable[game][sButton].y):rotationz(ReceptorGlyphTable[game][sButton].rot):diffuse(ReceptorGlyphTable[game][sButton].turntable):spin():effectmagnitude(0, 0, 180) end,
					ReverseOnCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y) end,
					ReverseOffCommand = function (self) self:y(ReceptorGlyphTable[game][sButton].y * (glyphReverse and -1 or 1)) end,
					ScratchdownCommand = function(self) self:spin():effectmagnitude(0, 0, 360) end,
					ScratchupCommand = function(self) self:spin():effectmagnitude(0, 0, -360) end,
					LiftCommand = function(self) self:spin():effectmagnitude(0, 0, 180) end,
				}
			end

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
			if game == "kbx" then
				sGameButton = sGameButton:gsub("^Key ", "")

				t[#t+1] = Def.Quad {
					InitCommand = function (self) self:zoomto(64, 48):y(56):valign(0):diffuse({0, 0, 0, 0.5}) end,
					ReverseOnCommand = function (self) self:y(56):valign(0) end,
					ReverseOffCommand = function (self) self:y(-56):valign(1) end,
				}

				if not PREFSMAN:GetPreference("UseOldJoystickMapping") and sGameButton:find("^Joy") then
					sGameButton = sGameButton:gsub("^Joy%d+[_ ]", "")

					t[#t+1] = Def.Sprite {
						Texture = NOTESKIN:GetPath("_common","buttons/" .. sGameButton),
						Text = sGameButton,
						InitCommand = function (self) self:y(76) end,
						ReverseOnCommand = function (self) self:y(76) end,
						ReverseOffCommand = function (self) self:y(-76) end,
					}
				else
					sGameButton = sGameButton:gsub("^Joy%d+[_ ]", "B")

					t[#t+1] = Def.BitmapText {
						Font = "Common Normal",
						Text = sGameButton,
						InitCommand = function (self) self:y(76):zoom(0.7) end,
						ReverseOnCommand = function (self) self:y(76) end,
						ReverseOffCommand = function (self) self:y(-76) end,
					}
				end
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

		if game ~= "bongo" and game ~= "boxing" and sButton ~= "wailing" then
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

			local circleZoom = game == "taiko" and 2 or game == "bongo" and 1.5 or game == "gh" and 1.5 or game == "rb" and 1.5 or 1

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
				["RBKick"] = {-96, -32, 32, 96},
				["GHKick"] = {-128, -64, 0, 64, 128},
			}
			local circlePositionsMeta = {
				__index = function (table, key, value)
					return {0}
				end,
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
				InitCommand = function (self) self:zoom(zoomValue):rotationz(game == "taiko" and 90 or 0):playcommand("HoldingOff"):finishtweening() end,
			}
		end

		t[#t+1] = singleSprite("_common", "mine explosion") .. {
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
