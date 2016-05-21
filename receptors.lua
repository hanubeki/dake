local skin_name = Var("skin_name");
return function(button_list, stepstype, skin_parameters)
	local ret = {};

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
		end;
	});

	for i, button in ipairs(button_list) do
		local noteType = skin_parameters and skin_parameters.note_type or "Normal";

		local tap = tapList[button];

		if stepstype == "StepsType_Maniax_Single" or stepstype == "StepsType_Maniax_Double" then
			tap = {image = "ring", rotZ = 0, rotY = 0};
		end;

		if stepstype == "StepsType_Kb7_Single" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
		end;

		if (stepstype == "StepsType_Techno_Single5" or stepstype == "StepsType_Techno_Double5") and button == "Center" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
		end;

		if noteType == "Bar32" then
			tap = {image = "key", rotZ = 0, rotY = 0};
		elseif noteType == "Bar64" then
			tap = {image = "scratch", rotZ = 0, rotY = 0};
		elseif noteType == "Circle" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
		end

		ret[i]= Def.ActorFrame {
			InitCommand = function(self)
				self:draworder(newfield_draw_order.receptor)
			end,
			WidthSetCommand = function(self, param)
				param.column:set_layer_fade_type(self, "FieldLayerFadeType_Receptor")
			end,
			Def.Sprite {
				Texture = NEWSKIN:get_path(skin_name, "_" .. tap.image .. " receptor (doubleres).png");
				InitCommand = cmd(rotationy,tap.rotY;rotationz,tap.rotZ;effectclock,"beat";diffuseramp;effectcolor1,color(".8,.8,.8,1");effectcolor2,color("1,1,1,1");effecttiming,.2,0,.8,0;effectoffset,.05);
				NoneCommand = cmd(finishtweening;zoom,.85;diffusealpha,.9;linear,.11;diffusealpha,1;zoom,1);
			},
			Def.Sprite {
				Texture=NEWSKIN:get_path(skin_name, "_" .. tap.image .. " rflash (doubleres).png");
				InitCommand = cmd(rotationz,tap.rotZ;rotationy,tap.rotY;diffusealpha,0);
				-- TODO: rewrite to use BeatUpdateCommand (param.pressed, param.lifted)
				BeatUpdateCommand = function(self, param)
					if param.pressed then
						self:finishtweening():zoom(1):blend("BlendMode_Add"):diffusealpha(0.6);
					elseif param.lifted then
						self:finishtweening():decelerate(0.12):diffusealpha(0):zoom(1.2);
					end
				end,
				NoneCommand = cmd(finishtweening;zoom,.85;diffusealpha,.9;linear,.11;diffusealpha,1;zoom,1);
			},
		};
	end
	return ret;
end
