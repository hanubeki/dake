local ret = ... or {};

local game = GAMESTATE:GetCurrentGame():GetName();

-- [ja] 各ボタンのリダイレクトテーブル
ret.RedirTable =
{
	-- Dance, Pump, pAra, Techno
	["Up"]        = game == "para"   and "ParaUp"      or     "Up",     -- D-AT
	["Down"]      =                                           "Down",   -- D--T
	["Left"]      = game == "para"   and "ParaLeft"    or     "Left",   -- D-AT
	["Right"]     = game == "para"   and "ParaRight"   or     "Right",  -- D-AT
	["UpLeft"]    = game == "para"   and "ParaUpLeft"  or   "UpLeft",   -- DPAT
	["UpRight"]   = game == "para"   and "ParaUpRight" or   "UpRight",  -- DPAT
	["DownLeft"]  =                                       "DownLeft",   -- -P-T
	["DownRight"] =                                       "DownRight",  -- -P-T
	["Center"]    = game == "techno" and "Circle"      or     "Center", -- -P-T
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
};

local Fallback = {
	__index = function(table, key, value)
		return "_fallback";
	end;
};

local FallbackZero = {
	__index = function(table, key, value)
		return 0;
	end;
};

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
};
setmetatable(TapRedir, Fallback);

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
};
setmetatable(TapRotateY, FallbackZero);

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
};
setmetatable(TapRotateZ, FallbackZero);

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

	["ParaLeft"]    = "_paraleft",
	["ParaUpLeft"]  = "_paraupleft",
	["ParaUp"]      = "_paraup",
	["ParaUpRight"] = "_paraupright",
	["ParaRight"]   = "_pararight",

	["HandLeft"]  = "_handleft",
	["HandRight"] = "_handright",
	["HandUp"]    = "_down",
	["HandDown"]  = "_down",

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
};
setmetatable(HoldBodyRedir, Fallback);

-- [ja] Hold TopCap/BottomCap用のリダイレクトテーブル
local HoldCapRedir = {
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
};
local HoldCapRedirMeta = {
	__index = function(table, key, value)
		return "_" .. string.lower(key);
	end;
};
setmetatable(HoldCapRedir, HoldCapRedirMeta);

-- [ja] 各Game用のmineの拡大テーブル
local ZoomTable = {
	["maniax"] = 1/2,
	["beat"] = 1/2,
	["popn"] = 1/2,
};
local ZoomValue = ZoomTable[game] or 1;

local ColorTable = {
--[[
	 0: Red
	 2: Blue
	 4: Green
	 6: Yellow
	 8: Purple
	10: Emerald
	12: Magenta
	14: LightGreen
	16: Gray
	18: Orange
	20: Reserved
	22: Reserved
	24: Reserved
	26: Reserved
	28: Reserved
	30: Reserved
]]
	["PlayerNumber_P1"] = 12,
	["PlayerNumber_P2"] = 2,
	["PlayerNumber_P3"] = 6,
	["PlayerNumber_P4"] = 4,
};
setmetatable(ColorTable, FallbackZero);

ret.Redir = function(sButton, sElement)
	-- It's a test.
	-- sElement = string.gsub(sElement, "Hold", "Minefield")

	-- Instead of separate hold heads, use the tap note graphics.
	if sElement == "Hold Head Inactive" or
	   sElement == "Hold Head Active" or
	   sElement == "Roll Head Inactive" or
	   sElement == "Roll Head Active" or
	   sElement == "Tap Fake"
	then
		sElement = "Tap Note";
	end

	-- TODO: Minefield, not implemented yet
	if sElement == "Minefield Head Inactive" or
	   sElement == "Minefield Head Active"
	then
		sElement = "Tap Mine";
	end

	sButton = ret.RedirTable[sButton] or "Fallback";

	return sButton, sElement;
end

ret.Blank = {
	["Hold Tail Active"] = true,
	["Hold Tail Inactive"] = true,
	["Roll Tail Active"] = true,
	["Roll Tail Inactive"] = true,
};

local function func()
	local sButton = Var "Button";
	local sElement = Var "Element";
	local pn = Var "Player" or GAMESTATE:GetMasterPlayerNumber();

	if (GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Kickbox_Human") then
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

	if (GAMESTATE:GetCurrentStyle(pn):GetStepsType() == "StepsType_Kickbox_Insect") then
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
		local t;
		if Var "SpriteOnly" then
			t = LoadActor("_blank");
		else
			t = Def.Actor {};
		end
		return t .. {
			InitCommand=cmd(visible,false);
		};
	end

	local sButtonToLoad, sElementToLoad = ret.Redir(sButton, sElement);
	assert(sButtonToLoad);
	assert(sElementToLoad);

	local stt = GAMESTATE:IsCourseMode() and GAMESTATE:GetCurrentTrail(pn):GetStepsType()
	                                      or GAMESTATE:GetCurrentSteps(pn):GetStepsType();

	-- Don't use TOO MANY LUAS AND REDIRS
	-- local sPath = NOTESKIN:GetPath(sButtonToLoad, sElementToLoad);

	-- local t = LoadActor(sPath);

	local t = Def.ActorFrame {};

	if sElementToLoad == "Tap Note" then
		local color = ColorTable[pn];
		local rotY = TapRotateY[sButtonToLoad];
		local rotZ = TapRotateZ[sButtonToLoad];

		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath(TapRedir[sButtonToLoad], "tap note");
			Frame0000=color;
			Delay0000=1;
			InitCommand=cmd(rotationy,rotY;rotationz,rotZ);
		};
	elseif sElementToLoad == "Tap Mine" then
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_mine");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(zoom,ZoomValue);
		};
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_mparts");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(zoom,ZoomValue;spin;effectclock,"beat";effectmagnitude,0,0,-60);
		};
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_mparts");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(zoom,ZoomValue;rotationz,120;spin;effectclock,"beat";effectmagnitude,0,0,-60);
		};
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_mparts");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(zoom,ZoomValue;rotationz,240;spin;effectclock,"beat";effectmagnitude,0,0,-60);
		};
	elseif sElementToLoad == "Tap Lift" then
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("_fallback", "tap lift");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(zoom,ZoomValue);
		};
	elseif string.find(sElementToLoad, "Hold .*cap") or
	       string.find(sElementToLoad, "Roll .*cap") then
		t = Def.Sprite {
			Texture=NOTESKIN:GetPath(HoldCapRedir[sButtonToLoad], string.lower(sElementToLoad));
			Frame0000=0;
			Delay0000=1;
		};
	elseif string.find(sElementToLoad, "Hold Body") or
	       string.find(sElementToLoad, "Roll Body") then
		t = Def.Sprite {
			Texture=NOTESKIN:GetPath(HoldBodyRedir[sButtonToLoad], string.lower(sElementToLoad));
			Frame0000=0;
			Delay0000=1;
		};
	elseif string.find(sElementToLoad, "Minefield .*cap") then
		t = Def.Sprite {
			Texture=NOTESKIN:GetPath("_fallback", string.lower(sElementToLoad));
			Frame0000=0;
			Delay0000=1;
		};
	elseif string.find(sElementToLoad, "Minefield Body") then
		t = Def.Sprite {
			Texture=NOTESKIN:GetPath("_fallback", string.lower(sElementToLoad));
			Frame0000=0;
			Delay0000=1;
		};
	elseif sElementToLoad == "Receptor" then
		local styleType = GAMESTATE:GetCurrentStyle():GetStyleType();
		if (styleType == "StyleType_TwoPlayersSharedSides") and (pn ~= GAMESTATE:GetMasterPlayerNumber()) then
			t = Def.Actor { InitCommand=cmd(visible,false); };
		else
			local rotY = TapRotateY[sButtonToLoad];
			local rotZ = TapRotateZ[sButtonToLoad];

			t[#t+1] = Def.Sprite {
				Texture=NOTESKIN:GetPath(TapRedir[sButtonToLoad], "receptor");
				Frame0000=0;
				Delay0000=1;
				InitCommand=cmd(rotationy,rotY;rotationz,rotZ;effectclock,"beat";diffuseramp;effectcolor1,color(".8,.8,.8,1");effectcolor2,color("1,1,1,1");effecttiming,.2,0,.8,0;effectoffset,.05);
				NoneCommand=NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand");
			};

			t[#t+1] = Def.Sprite {
				Texture=NOTESKIN:GetPath(TapRedir[sButtonToLoad], "rflash");
				Frame0000=0;
				Delay0000=1;
				InitCommand=cmd(rotationy,rotY;rotationz,rotZ;diffusealpha,0);
				PressCommand=NOTESKIN:GetMetricA("ReceptorOverlay", "PressCommand");
				LiftCommand=NOTESKIN:GetMetricA("ReceptorOverlay", "LiftCommand");
				NoneCommand=NOTESKIN:GetMetricA("ReceptorArrow", "NoneCommand");
			};
		end;
	elseif sElementToLoad == "Explosion" then
		local rotY = TapRotateY[sButtonToLoad];
		local rotZ = TapRotateZ[sButtonToLoad];
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_hflash");
			Frame0000=0;
			Delay0000=1;
			HoldingOnCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "HoldingOnCommand");
			HoldingOffCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "HoldingOffCommand");
			RollOnCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "RollOnCommand");
			RollOffCommand=NOTESKIN:GetMetricA("HoldGhostArrow", "RollOffCommand");
			InitCommand=cmd(playcommand,"HoldingOff";finishtweening);
		};
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath(TapRedir[sButtonToLoad], "glow");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(rotationy,rotY;rotationz,rotZ;diffusealpha,0);
			W5Command=NOTESKIN:GetMetricA("GhostArrowDim", "W5Command");
			W4Command=NOTESKIN:GetMetricA("GhostArrowDim", "W4Command");
			W3Command=NOTESKIN:GetMetricA("GhostArrowDim", "W3Command");
			W2Command=NOTESKIN:GetMetricA("GhostArrowDim", "W2Command");
			W1Command=NOTESKIN:GetMetricA("GhostArrowDim", "W1Command");
			HeldCommand=NOTESKIN:GetMetricA("GhostArrowDim", "W1Command");
			JudgmentCommand=cmd(finishtweening);
			-- BrightCommand=cmd(visible,false);
			-- DimCommand=cmd(visible,true);
		};
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_bright");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(rotationy,rotY;rotationz,rotZ;zoom,ZoomValue;diffusealpha,0);
			W5Command=NOTESKIN:GetMetricA("GhostArrowBright", "W5Command");
			W4Command=NOTESKIN:GetMetricA("GhostArrowBright", "W4Command");
			W3Command=NOTESKIN:GetMetricA("GhostArrowBright", "W3Command");
			W2Command=NOTESKIN:GetMetricA("GhostArrowBright", "W2Command");
			W1Command=NOTESKIN:GetMetricA("GhostArrowBright", "W1Command");
			HeldCommand=NOTESKIN:GetMetricA("GhostArrowBright", "W1Command");
			JudgmentCommand=cmd(finishtweening);
			BrightCommand=cmd(visible,true);
			DimCommand=cmd(visible,false);
		};
		t[#t+1] = Def.Sprite {
			Texture=NOTESKIN:GetPath("", "_mhit");
			Frame0000=0;
			Delay0000=1;
			InitCommand=cmd(blend,"BlendMode_Add";diffusealpha,0);
			HitMineCommand=NOTESKIN:GetMetricA("GhostArrowBright", "HitMineCommand");
		};
	end;

	return t;
end

-- This is the only required function.
ret.Load = func;

-- Use this to override the game types' default Load() functions.
ret.CommonLoad = func;

return ret;
