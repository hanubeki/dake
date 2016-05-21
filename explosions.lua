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

	for i, button in ipairs(button_list) do
		local noteType = skin_parameters and skin_parameters.note_type or "Normal";

		local tap = tapList[button];
		local mineZoom = mineZoomList[stepstype];

		if stepstype == "StepsType_Maniax_Single" or stepstype == "StepsType_Maniax_Double" then
			tap = {image = "ring", rotZ = 0, rotY = 0};
		end

		if stepstype == "StepsType_Kb7_Single" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
		end

		if (stepstype == "StepsType_Techno_Single5" or stepstype == "StepsType_Techno_Double5") and button == "Center" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
		end

		if noteType == "Bar32" then
			tap = {image = "key", rotZ = 0, rotY = 0};
			mineZoom = 0.5;
		elseif noteType == "Bar64" then
			tap = {image = "scratch", rotZ = 0, rotY = 0};
			mineZoom = 1;
		elseif noteType == "Circle" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			mineZoom = 1;
		end

		ret[i] = Def.ActorFrame{
			InitCommand = function(self)
				self:draworder(newfield_draw_order.explosion)
			end,
			WidthSetCommand = function(self, param)
				param.column:set_layer_fade_type(self, "FieldLayerFadeType_Explosion")
			end,
			Def.Sprite {
				Texture = NEWSKIN:get_path(skin_name, "_hflash 2x1 (doubleres).png"),
				InitCommand = function(self)
					self:diffusealpha(0)
				end,
				HoldCommand= function(self, param)
					if param.start then
						self:finishtweening()
							:diffusealpha(1):glowshift():effectcolor1({1,1,1,0}):effectcolor2({1,1,1,0.7}):effectperiod(0.1);
					elseif param.finished then
						self:diffusealpha(0)
					end
				end,
			},
			Def.Sprite {
				Texture = NEWSKIN:get_path(skin_name, "_" .. tap.image .. " glow (doubleres).png"),
				InitCommand = cmd(rotationz,tap.rotZ;rotationy,tap.rotY;diffusealpha,0),
				ColumnJudgmentCommand = function(self, param)
					local diffuse = {
						TapNoteScore_W1 = {1, 1, 1, 1},
						TapNoteScore_W2 = {1, 1, 0.85, 1},
						TapNoteScore_W3 = {0.5, 1, 0.75, 1},
						TapNoteScore_W4 = {0.5, 1, 1, 1},
						TapNoteScore_W5 = {1.0, 0.5, 1, 1},
						HoldNoteScore_Held = {1, 1, 1, 1},
					};
					local exp_color = diffuse[param.tap_note_score or param.hold_note_score];
					if exp_color then
						self:finishtweening():diffuse(exp_color):sleep(0.1):decelerate(0.4):diffusealpha(0);
					end
				end,
			},
			Def.Sprite {
				Texture = NEWSKIN:get_path(skin_name, "_bright (doubleres).png"),
				InitCommand = cmd(zoom,mineZoom;diffusealpha,0),
				ColumnJudgmentCommand = function(self, param)
					local diffuse = {
						TapNoteScore_W1 = {1, 1, 1, 1},
						TapNoteScore_W2 = {1, 1, 0.9, 1},
						TapNoteScore_W3 = {0.6, 1, 0.8, 1},
						TapNoteScore_W4 = {0.6, 1, 1, 1},
						TapNoteScore_W5 = {1.0, 0.6, 1, 1},
						HoldNoteScore_Held = {1, 1, 1, 1},
					};
					local exp_color = diffuse[param.tap_note_score or param.hold_note_score];
					if param.bright and exp_color then
						self:finishtweening():diffuse(exp_color):sleep(0.1):decelerate(0.4):diffusealpha(0);
					end
				end,
			},
			Def.Sprite {
				Texture = NEWSKIN:get_path(skin_name, "_mhit.png"),
				InitCommand = cmd(zoom,mineZoom;blend,"BlendMode_Add";diffusealpha,0),
				ColumnJudgmentCommand = function(self, param)
					if param.tap_note_score == "TapNoteScore_HitMine" then
						self:finishtweening():diffusealpha(1):rotationz(0):decelerate(0.3):rotationz(90):linear(0.3):rotationz(180):diffusealpha(0);
					end
				end,
			},
		};
	end
	return ret;
end
