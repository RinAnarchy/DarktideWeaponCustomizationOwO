local mod = get_mod("weapon_customization_owo")
local syn = get_mod("weapon_customization_syn_edits")
local mt = get_mod("weapon_customization_mt_stuff")
mod.mt = mt			-- you need to do this for some reason. can't just go mt.function() idfk why but WE BALL

-- Locals from Weapon Customization plugin template
local vector3_box = Vector3Box
local _item = "content/items/weapons/player"
local _item_ranged = _item.."/ranged"
local _item_melee = _item.."/melee"
local _item_minion = "content/items/weapons/minions"

-- #############################
-- WAKEUP
-- GRABABRUSHANDPUTALITTLEMAKEUP
-- HARRYDIDJAPUCHERNAMEINTHE
-- TABLE
--
-- New slots are added with: mod.wc.add_custom_attachments.<slot> = "<slot>s"
--	Where slots is the name of a table containing a list of parts to append to the slot table. This is to follow the same format that the MT Plugin uses (just to keep the code slightly prettier)
--	<slot> + 's'. unless it's a numbered thing, then it's <slot> + 's' + <number> instead of <slot, including number> + 's'
-- Syn followed the same formatting for his new attachments
-- Adding to an existing slot: mod.mt.table_append(mod.wc.<slot>s, { <parts> })
-- 	Slots that already exist in the base mod do not need this. It's handled by the inject_attachments function
-- I'm not gonna follow that format. I will use <slot> + '_list'
-- #############################
mod.mt.table_append(mod.wc.laser_pointers, {
	"owo_grip_laser_01",
	"owo_grip_laser_02",
})
-- MUZZLE
mod.mt.table_append(mod.wc.muzzle_2s, {
	"owo_suppressor_helper_empty",
	"owo_suppressor_helper_01",
	"owo_suppressor_helper_02",
	"owo_condom_helper_empty",
	"owo_condom_helper_01",
})
-- BARREL
if syn then
	mod.mt.table_append(mod.wc.barrelshrouds, {
		"owo_dreg_shroud_empty",
		"owo_dreg_shroud_01",
		"owo_m16_empty",
		"owo_m16_barrelshroud_a1",
		"owo_m16_barrelshroud_a1_02",
		"owo_m16_barrelshroud_a2",
		"owo_wood_krieg_empty",
		"owo_wood_krieg_ac1_01",
		"owo_revolver_shotgun_barrel_empty",
		"owo_revolver_shotgun_barrel_04",
		"owo_revolver_shotgun_barrel_05",
		"owo_revolver_shotgun_barrel_06",
		"owo_revolver_shotgun_barrel_08",
		"owo_bistol_shotgun_barrel_short_empty", 
		"owo_bistol_shotgun_barrel_short_04",
		"owo_bistol_shotgun_barrel_short_05",
		"owo_bistol_shotgun_barrel_short_06",
		"owo_bistol_shotgun_barrel_short_08",
	})
	mod.mt.table_append(mod.wc.barrelshroudac2s, {
		"owo_dreg_shroud_empty_02",
		"owo_dreg_shroudac2_01",
		"owo_m16_empty_02",
		"owo_m16_barrelshroudac2_01",
	})
	mod.mt.table_append(mod.wc.barrelshroudac3s, {
		"owo_dreg_shroud_empty_03",
		"owo_dreg_shroudac3_01",
		"owo_m16_empty_03",
		"owo_m16_barrelshroudac3_01",
	})
	mod.mt.table_append(mod.wc.barrelshroudac4s, {
		"owo_dreg_shroud_empty_04",
		"owo_dreg_shroudac4_01",
		"owo_m16_empty_04",
		"owo_m16_barrelshroudac4_01",
	})
	mod.mt.table_append(mod.wc.barrelshroudac5s, {
		"owo_m16_empty_05",
		"owo_m16_barrelshroudac5_01",
	})
	mod.mt.table_append(mod.wc.barrelshroudac6s, {
		"owo_m16_empty_06",
		"owo_m16_barrelshroudac6_01",
	})
else 
	mod.wc.add_custom_attachments.barrelshroud = "barrelshrouds"
	mod.wc.barrelshrouds = {
		"owo_revolver_shotgun_barrel_empty",
		--"owo_revolver_shotgun_barrel_01",
		"owo_revolver_shotgun_barrel_04",
		"owo_revolver_shotgun_barrel_05",
		"owo_revolver_shotgun_barrel_06",
		"owo_revolver_shotgun_barrel_08",
		--"owo_revolver_shotgun_barrel_09",
		--"owo_revolver_shotgun_barrel_04_l",
		--"owo_revolver_shotgun_barrel_05_l",
		--"owo_revolver_shotgun_barrel_06_l",
		--"owo_revolver_shotgun_barrel_08_l",
		"owo_dreg_shroud_empty",
		"owo_dreg_shroud_01",
		"owo_wood_krieg_empty",
		"owo_wood_krieg_ac1_01",
		"owo_m16_empty",
		"owo_m16_barrelshroud_a1",
		"owo_m16_barrelshroud_a1_02",
		"owo_m16_barrelshroud_a2",
		"owo_m16_barrelshroud_t_a1",
		"owo_m16_barrelshroud_t_a1_02",
		"owo_m16_barrelshroud_t_a2",
		"owo_m16_barrelshroud_n_a1",
		"owo_m16_barrelshroud_n_a1_02",
		"owo_m16_barrelshroud_n_a2",
		"owo_bistol_shotgun_barrel_short_empty", 
		-- "owo_bistol_shotgun_barrel_short_01",
		"owo_bistol_shotgun_barrel_short_04",
		"owo_bistol_shotgun_barrel_short_05",
		"owo_bistol_shotgun_barrel_short_06",
		"owo_bistol_shotgun_barrel_short_08",
		-- "owo_bistol_shotgun_barrel_short_09",
	}
	--[[mod.wc.add_custom_attachments.barrelshroudac = "barrelshroudacs"
	mod.wc.barrelshroudacs = {
		"owo_dreg_shroud_empty",
		"owo_dreg_shroudac_01"
	}]]
	mod.wc.add_custom_attachments.barrelshroudac2 = "barrelshroudac2s"
	mod.wc.barrelshroudac2s = {
		"owo_dreg_shroud_empty",
		"owo_dreg_shroudac2_01",
		"owo_m16_empty",
		"owo_m16_barrelshroudac2_01",
	}
	mod.wc.add_custom_attachments.barrelshroudac3 = "barrelshroudac3s"
	mod.wc.barrelshroudac3s = {
		"owo_dreg_shroud_empty",
		"owo_dreg_shroudac3_01",
		"owo_m16_empty",
		"owo_m16_barrelshroudac3_a1",
	}
	mod.wc.add_custom_attachments.barrelshroudac4 = "barrelshroudac4s"
	mod.wc.barrelshroudac4s = {
		"owo_dreg_shroud_empty",
		"owo_dreg_shroudac4_01",
		"owo_m16_sight_empty",
		"owo_m16_sight_helper_04",
	}
	mod.wc.add_custom_attachments.barrelshroudac5 = "barrelshroudac5s"
	mod.wc.barrelshroudac5s = {
		"owo_m16_sight_empty",
		"owo_m16_sight_helper_05",
	}
	mod.wc.add_custom_attachments.barrelshroudac6 = "barrelshroudac6s"
	mod.wc.barrelshroudac6s = {
		"owo_m16_sight_empty",
		"owo_m16_sight_helper_06",
	}
end
-- BAYONET
mod.wc.add_custom_attachments.bayonetac1 = "bayonetac1_list"
mod.wc.bayonetac1_list = {
	"owo_dreg_bayonet_empty",
	"owo_dreg_bayonet_rear_01",
	"owo_bayonet_empty_01",
	"owo_bayonet_m7_helper_01",
	"owo_bayonet_seitengewehr_helper_01",
	"owo_bayonet_epee_helper_01",
	"owo_underbarrel_gl_empty_01",
	"owo_m203_helper_01",
}
mod.wc.add_custom_attachments.bayonetac2 = "bayonetac2_list"
mod.wc.bayonetac2_list = {
	"owo_bayonet_empty_02",
	"owo_bayonet_m7_helper_02",
	"owo_bayonet_seitengewehr_helper_01",
	"owo_bayonet_epee_helper_01",
	"owo_underbarrel_gl_empty_02",
	"owo_m203_helper_02",
}
mod.wc.add_custom_attachments.bayonetac3 = "bayonetac3_list"
mod.wc.bayonetac3_list = {
	"owo_underbarrel_gl_empty_03",
	"owo_m203_helper_03",
}
mod.wc.add_custom_attachments.bayonetac4 = "bayonetac4_list"
mod.wc.bayonetac4_list = {
	"owo_underbarrel_gl_empty_04",
	"owo_m203_helper_04",
}
-- GRIP
mod.mt.table_append(mod.wc.gripacs, {
	"owo_fin_grip2_empty",
	"owo_fin_grip2_01",
})
-- MAGAZINE
mod.wc.add_custom_attachments.owo_magac1 = "owo_magac1_list"
mod.wc.owo_magac1_list = {
	"owo_jungle_mag_empty_01",
	"owo_jungle_mag_helper_01",
	"owo_jungle_mag_helper_02",
	"owo_jungle_mag_helper_03",
	"owo_jungle_mag_helper_04",
}
mod.wc.add_custom_attachments.owo_magac2 = "owo_magac2_list"
mod.wc.owo_magac2_list = {
	"owo_jungle_mag_empty_02",
	"owo_jungle_mag_connector_f_01",
}
mod.wc.add_custom_attachments.owo_magac3 = "owo_magac3_list"
mod.wc.owo_magac3_list = {
	"owo_jungle_mag_empty_03",
	"owo_jungle_mag_connector_b_01",
}
mod.wc.add_custom_attachments.owo_magac4 = "owo_magac4_list"
mod.wc.owo_magac4_list = {
	"owo_jungle_mag_empty_04",
	"owo_jungle_mag_connector_l_01",
}
mod.wc.add_custom_attachments.owo_magac5 = "owo_magac5_list"
mod.wc.owo_magac5_list = {
	"owo_jungle_mag_empty_05",
	"owo_jungle_mag_connector_r_01",
}
-- SIGHT
mod.wc.add_custom_attachments.sightac1 = "sightac1_list"
mod.wc.sightac1_list = {
	"owo_holosight_empty_01",
	"owo_holosight_helper_01",
	"owo_rear_sight_empty_01",
	"owo_rear_sight_ac1_01",
	"owo_pu_scope_helper_01",
	"owo_m16_sight_helper_01",
	"owo_acog_sight_helper_01",
	"owo_susat_ac1_01",
}
--[[ sightac 2-4 covered by MT. it uses sightac for sightac1 but i hate that naming system so fuck that
mod.wc.add_custom_attachments.sightac2 = "sightac2s"
mod.wc.sightac2s = {
	"owo_holosight_empty_02",
	"owo_holosight_helper_02",
	"owo_rear_sight_empty_02",
	"owo_rear_sight_ac2_01",
	"owo_rear_sight_ac2_02",
	"owo_rear_sight_ac2_03",
	"owo_pu_scope_helper_02",
	"owo_m16_sight_helper_02",
	"owo_acog_sight_helper_02",
	"owo_susat_ac2_01",
}
mod.wc.add_custom_attachments.sightac3 = "sightac3s"
mod.wc.sightac3s = {
	"owo_holosight_empty_03",
	"owo_holosight_helper_03",
	"owo_rear_sight_empty_03",
	"owo_rear_sight_ac3_01",
	"owo_pu_scope_helper_03",
	"owo_m16_sight_helper_03",
	"owo_acog_sight_helper_03",
	"owo_susat_ac3_01",
}
mod.wc.add_custom_attachments.sightac4 = "sightac4s"
mod.wc.sightac4s = {
	"owo_holosight_empty_04",
	"owo_holosight_helper_04",
	"owo_rear_sight_empty_04",
	"owo_rear_sight_ac4_01",
	"owo_pu_scope_helper_04",
	"owo_m16_sight_helper_04",
	"owo_acog_sight_helper_04", -- SUSAT reuses this
}
]]
-- In the MT Plugin, these tables are sightacs#, instead of sightac#s
mod.mt.table_append(mod.wc.sightacs2, {
	"owo_holosight_empty_02",
	"owo_holosight_helper_02",
	"owo_rear_sight_empty_02",
	"owo_rear_sight_ac2_01",
	"owo_rear_sight_ac2_02",
	"owo_rear_sight_ac2_03",
	"owo_pu_scope_helper_02",
	"owo_m16_sight_helper_02",
	"owo_acog_sight_helper_02",
	"owo_susat_ac2_01",
})
mod.mt.table_append(mod.wc.sightacs3, {
	"owo_holosight_empty_03",
	"owo_holosight_helper_03",
	"owo_rear_sight_empty_03",
	"owo_rear_sight_ac3_01",
	"owo_pu_scope_helper_03",
	"owo_m16_sight_helper_03",
	"owo_acog_sight_helper_03",
	"owo_susat_ac3_01",
})
mod.mt.table_append(mod.wc.sightacs4, {
	"owo_holosight_empty_04",
	"owo_holosight_helper_04",
	"owo_rear_sight_empty_04",
	"owo_rear_sight_ac4_01",
	"owo_pu_scope_helper_04",
	"owo_m16_sight_helper_04",
	"owo_acog_sight_helper_04", -- SUSAT reuses this
})
mod.wc.add_custom_attachments.sightac5 = "sightac5_list"
mod.wc.sightac5_list = {
	"owo_rear_sight_empty_05",
	"owo_rear_sight_ac5_01",
	"owo_pu_scope_empty_05",
	"owo_pu_scope_helper_05",
	"owo_m16_sight_helper_05",
	"owo_acog_sight_helper_05",
	"owo_susat_ac5_01",
}
mod.wc.add_custom_attachments.sightac6 = "sightac6_list"
mod.wc.sightac6_list = {
	"owo_rear_sight_empty_06",
	"owo_rear_sight_ac6_01",
	"owo_pu_scope_empty_06",
	"owo_pu_scope_helper_06",
	"owo_m16_sight_helper_06",
	"owo_acog_sight_helper_06",
	"owo_susat_ac7_01",
}
mod.wc.add_custom_attachments.sightac7 = "sightac7_list"
mod.wc.sightac7_list = {
	"owo_m16_sight_empty_07",
	"owo_m16_sight_helper_07",
	"owo_acog_sight_helper_07",
}
-- SIGHT_2
--[[mod.mt.table_append(mod.wc.sights_2, { 

mod.mt.table_append(mod.wc.reflex_sights, { 	-- For some reason this is what sight_2 is called
	--"owo_reticle_helper_empty",
	"owo_reticle_helper_01",
	"owo_reticle_helper_02",
	"owo_reticle_helper_03",
})
]]
--[[ scope zoom fucked up. figure out later
mod.mt.table_append(mod.wc.scopes, {
	"lasgun_rifle_elysian_muzzle_01",
})
mod.wc.sniper_zoom_levels.lasgun_rifle_elysian_muzzle_01 = 15
]]
mod.wc.add_custom_attachments.sight_secondary = "sight_secondary_list"
mod.wc.sight_secondary_list = {
	"owo_holosight_empty2",
	"owo_holosight_sight_secondary_01",
	"owo_pu_scope_riser_01"
}
mod.wc.add_custom_attachments.sight_secondary_ac1 = "sight_secondary_ac1_list"
mod.wc.sight_secondary_ac1_list = {
	"owo_holosight_empty2_01",
	"owo_holosight_sight_secondary_helper_01",
	--"owo_pu_scope2_helper_01",
}
mod.wc.add_custom_attachments.sight_secondary_ac2 = "sight_secondary_ac2_list"
mod.wc.sight_secondary_ac2_list = {
	"owo_holosight_empty2_02",
	"owo_holosight_sight_secondary_helper_02",
	--"owo_pu_scope2_helper_02",
}
-- RECEIVER
mod.wc.add_custom_attachments.receiverac1 = "receiverac1_list"
mod.wc.receiverac1_list = {
	"owo_bolt_grip_empty",
	"owo_bolt_helbore_bolt_01",
	"owo_laspistol_grip_mag_helper_empty",
	"owo_laspistol_grip_mag_helper_01",
	"owo_helbore_mas49_ass",
}
mod.wc.add_custom_attachments.receiverac2 = "receiverac2_list"
mod.wc.receiverac2_list = {
	"owo_bolt_shaft_empty",
	"owo_bolt_helbore_bolt_02",
	"owo_laspistol_grip_mag_helper_empty",
	"owo_laspistol_grip_mag_helper2_01",
	"owo_helbore_mas49_knob",
}
-- STOCKS
mod.mt.table_append(mod.wc.stockacs, {
	"owo_gripstock_grip_empty",
	"owo_gripstock_grip_01a",
})

-- ############################################
-- Injection Definitions
-- inject_attachments_owo injects attachment descriptions first
-- inject_models adds the models for actual use
-- ############################################
-- Flashlight/Special: Grip Laser
function mod.owo_grip_laser(variant_id, type)
	mod.inject_attachments_owo(variant_id, "flashlight" or type, {
		{id = "owo_grip_laser_01", name = "OwO Trigger Guard Laser (R)"},
		{id = "owo_grip_laser_02", name = "OwO Trigger Guard (G)"},
	})

	mod.inject_models(variant_id, {
		owo_grip_laser_01 = {
			--[[ FLASHLIGHT DISCUSSION
			EWC 	= Extended Weapon Customization
			wc 		= weapon_customization

			flashlight details found in wc/scripts/mods/wc/weapon_attachments/common_ranged.lua in flashlight_data table
			To add laser sight, EWC uses wc/extensions/laser_pointer_extension.lua
				this does a manual check to see if the flashlight is 'laser_pointer', the ID for the built in laser pointer gras added
					i tried adding a manual check for this one too, but it's not working
				the preview part is handled by wc/extensions/flashlight_extension.lua
					added a manual check to has_laser_pointer. also didn't work
						function calling for has_laser_pointer also checks if laser is enabled in mod settings
					Adding an additional entry to the templates DID work, but only for the flashlight light (flashlight_templates), not the beam
					flashlight_extension.lua has is_laser_pointer()
							adding checks for this WORKS! but the laser is still red
				there also seems to be references in wc/patches/weapon_templates.lua and wc/weapon_customization_anchors.lua
					1 just calling extension and writing text to ui
					2 specifying position and creates laser_pointer table
					tried injectign to table (above)
						mod.mt.table_append(mod.wc.laser_pointers, {
							"owo_grip_laser_01",
						})
						the table is laser_pointers. the name for the table in anchor is laser_pointer (which will throw errors if you try to use that as the inject)
							trying to inject to a pointer instead of a table
						weird thing is, that table contains flashlight_04 instead of laser_pointer
					3 classes/gear_settings.lua and utilities/weapon_templates.lua reference laser_pointer but it's commented out
						prob before gras implemented the extension file or while testing
				didnt work
			]]
			name = "owo_grip_laser_01",
			model = _item_ranged.."/flashlights/flashlight_05", type = "flashlight", 
			data = { {loc_flashlight_light_cone = 2}, 
				{loc_flashlight_intensity = 2}, 
				{loc_flashlight_battery = 2}
			},
			mesh_move = false, parent = "receiver"
		},
		owo_grip_laser_02 = {
			name = "owo_grip_laser_02",
			model = _item_ranged.."/flashlights/flashlight_05", type = "flashlight", 
			data = { {loc_flashlight_light_cone = 2}, 
				{loc_flashlight_intensity = 2}, 
				{loc_flashlight_battery = 2}
			},
			mesh_move = false, parent = "receiver"
		},
	})
end

-- Muzzle: Suppressor
function mod.owo_suppressor(variant_id, type)
	mod.inject_attachments_owo(variant_id, "muzzle" or type, {
		{id = "owo_suppressor_01", name = "OwO Suppressor 1"},
		{id = "owo_suppressor_02", name = "OwO Suppressor 2"}
	})
	mod.inject_attachments_owo(variant_id, "muzzle_2" or type, {
		{id = "owo_suppressor_helper_empty", name = "muzzle_2 Empty", no_randomize = true},
		{id = "owo_suppressor_helper_01", name = "OwO Suppressor'vesa 1", no_randomize = true},
		{id = "owo_suppressor_helper_02", name = "OwO Suppressor'vesa 2", no_randomize = true}
	})

	mod.inject_models(variant_id, {
		owo_suppressor_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "muzzle", mesh_move = false, parent = "barrel",
			automatic_equip = {
				muzzle_2 = "owo_suppressor_helper_01"
			}
		},
		owo_suppressor_02 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_05", type = "muzzle", mesh_move = false, parent = "barrel",
			automatic_equip = {
				muzzle_2 = "owo_suppressor_helper_02"
			}
		},
		owo_suppressor_helper_empty = {
			model = "", type = "muzzle_2", mesh_move = false, parent = "barrel"
		},
		owo_suppressor_helper_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "muzzle_2", mesh_move = false, parent = "barrel"
		},
		owo_suppressor_helper_02 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_05", type = "muzzle_2", mesh_move = false, parent = "barrel"
		}
	})
end

-- Muzzle: Lasgun Condom
function mod.owo_condom(variant_id, type)
	mod.inject_attachments_owo(variant_id, "muzzle" or type, {
		{id = "owo_condom_01", name = "OwO Lasbarrel Condom", no_randomize = true}
	})
	mod.inject_attachments_owo(variant_id, "muzzle_2" or type, {
		{id = "owo_condom_helper_empty", name = "Condom'vesa Empty", no_randomize = true},
		{id = "owo_condom_helper_01", name = "OwO Condom'vesa", no_randomize = true}
	})

	mod.inject_models(variant_id, {
		owo_condom_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "muzzle", mesh_move = false, parent = "barrel",
			automatic_equip = {
				muzzle_2 = "owo_condom_helper_01"
			}
		},
		owo_condom_helper_empty = {
			model = "", type = "muzzle_2", mesh_move = false, parent = "barrel"
		},
		owo_condom_helper_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "muzzle_2", mesh_move = false, parent = "barrel"
		},
	})
end

-- Muzzle: Scab Gunner
--		Recon Lasgun
function mod.owo_scab_gunner_muzzle(variant_id, type)
	mod.inject_attachments_owo(variant_id, "muzzle" or type, {
		{id = "owo_scab_gunner_muzzle_01", name = "OwO Scab Gunner Muzzle 1"},
	})

	mod.inject_models(variant_id, {
		owo_scab_gunner_muzzle_01 = {
			model = _item_ranged.."/muzzles/lasgun_pistol_muzzle_04", type = "muzzle", 
			mesh_move = false, parent = "barrel",
		},
	})

end

-- Barrel: Bolt Pistol Shotgun barrel (short)
function mod.owo_bistol_shotgun_barrel_short(variant_id, type)
	--[[
	1,6 dont work, but 2-5 do
		setting offset to false made 1,6 as 2d models not following the gun and no scale
		what the FUCK?
	
	]]
	mod.inject_attachments_owo(variant_id, "barrel" or type, {
		--{id = "owo_bistol_sg_base_01", name = "OwO Shotgun Shorty 1"},
		{id = "owo_bistol_sg_base_04", name = "OwO Shotgun Shorty 1 (4)"},
		{id = "owo_bistol_sg_base_05", name = "OwO Shotgun Shorty 2 (5)"},
		{id = "owo_bistol_sg_base_06", name = "OwO Shotgun Shorty 3 (6)"},
		{id = "owo_bistol_sg_base_08", name = "OwO Shotgun Shorty 4 (8)"},
		--{id = "owo_bistol_sg_base_09", name = "OwO Shotgun Shorty 6"},
		{id = "owo_bistol_sg_base_04_s", name = "OwO Sg Super Shorty 1 (4)"},
		{id = "owo_bistol_sg_base_05_s", name = "OwO Sg Super Shorty 2 (5)"},
		{id = "owo_bistol_sg_base_06_s", name = "OwO Sg Super Shorty 3 (6)"},
		{id = "owo_bistol_sg_base_08_s", name = "OwO Sg Super Shorty 4 (8)"},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroud" or type, {
		{id = "owo_bistol_shotgun_barrel_short_empty", name = "Empty Barrel Shroud", no_randomize = true},
		--{id = "owo_bistol_shotgun_barrel_short_01", name = "OwO Shotgun Shorty 1", no_randomize = true},
		{id = "owo_bistol_shotgun_barrel_short_04", name = "OwO Shotgun Shorty 2", no_randomize = true},
		{id = "owo_bistol_shotgun_barrel_short_05", name = "OwO Shotgun Shorty 3", no_randomize = true},
		{id = "owo_bistol_shotgun_barrel_short_06", name = "OwO Shotgun Shorty 4", no_randomize = true},
		{id = "owo_bistol_shotgun_barrel_short_08", name = "OwO Shotgun Shorty 5", no_randomize = true},
		--{id = "owo_bistol_shotgun_barrel_short_09", name = "OwO Shotgun Shorty 6", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		--[[owo_bistol_sg_base_01 = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_01",
			}
		}, 
		]]
		owo_bistol_sg_base_04 = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_04",
			}
		}, 
		owo_bistol_sg_base_05 = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_05",
			}
		}, 
		owo_bistol_sg_base_06 = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_06",
			}
		}, 
		owo_bistol_sg_base_08 = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_08",
			}
		}, 
		--[[owo_bistol_sg_base_09 = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_09",
			}
		}, 
		]]
		owo_bistol_sg_base_04_s = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_04",
			}
		}, 
		owo_bistol_sg_base_05_s = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_05",
			}
		}, 
		owo_bistol_sg_base_06_s = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_06",
			}
		}, 
		owo_bistol_sg_base_08_s = {
			model = _item_ranged.."/barrels/boltgun_pistol_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_bistol_shotgun_barrel_short_08",
			}
		}, 
		owo_bistol_shotgun_barrel_short_empty = {
			model = "", type = "barrelshroud", parent = "barrel"
		},
		--[[owo_bistol_shotgun_barrel_short_01 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_01", type = "barrelshroud", 
			mesh_move = false, parent = "barrel"
		},
		]]
		owo_bistol_shotgun_barrel_short_04 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_04", type = "barrelshroud", 
			mesh_move = false, parent = "barrel",
		},
		owo_bistol_shotgun_barrel_short_05 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_05", type = "barrelshroud", 
			mesh_move = false, parent = "barrel",
		},
		owo_bistol_shotgun_barrel_short_06 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_06", type = "barrelshroud", 
			mesh_move = false, parent = "barrel",
		},
		owo_bistol_shotgun_barrel_short_08 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_08", type = "barrelshroud", 
			mesh_move = false, parent = "barrel",
		},
		--[[owo_bistol_shotgun_barrel_short_09 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_09", type = "barrelshroud", 
			mesh_move = false, parent = "barrel"
		}
		]]
	})
end

-- Barrel: Revolver Shotgun Barrel
function mod.owo_revolver_shotgun_barrel(variant_id, type)
	--[[ what the FUCK is wrong with barrels 1 and 9
	]]
	mod.inject_attachments_owo(variant_id, "barrel" or type, {
		--{id = "owo_revolver_shotgun_barrel_base_01", name = "OwO Shotgun Barrel 1 (1)"},
		{id = "owo_revolver_shotgun_barrel_base_04", name = "OwO Shotgun Barrel 1 (4)"},
		{id = "owo_revolver_shotgun_barrel_base_05", name = "OwO Shotgun Barrel 2 (5)"},
		{id = "owo_revolver_shotgun_barrel_base_06", name = "OwO Shotgun Barrel 3 (6)"},
		-- barrel 7 with the skulls is too squished
		{id = "owo_revolver_shotgun_barrel_base_08", name = "OwO Shotgun Barrel 4 (8)"},
		--{id = "owo_revolver_shotgun_barrel_base_09", name = "OwO Shotgun Barrel 6 (9)"},
		--[[{id = "owo_revolver_shotgun_barrel_base_04_l", name = "OwO Shotgun Barrel Long 1 (4)"},
		{id = "owo_revolver_shotgun_barrel_base_05_l", name = "OwO Shotgun Barrel Long 2 (5)"},
		{id = "owo_revolver_shotgun_barrel_base_06_l", name = "OwO Shotgun Barrel Long 3 (6)"},
		{id = "owo_revolver_shotgun_barrel_base_08_l", name = "OwO Shotgun Barrel Long 4 (8)"},
		]]
	})
	mod.inject_attachments_owo(variant_id, "barrelshroud" or type, {
		{id = "owo_revolver_shotgun_barrel_empty", name = "Empty Barrelshroud"},
		--{id = "owo_revolver_shotgun_barrel_01", name = "OwO Shotgun Barrel 1 (1)"},
		{id = "owo_revolver_shotgun_barrel_04", name = "OwO Shotgun Barrel 1 (4)"},
		{id = "owo_revolver_shotgun_barrel_05", name = "OwO Shotgun Barrel 2 (5)"},
		{id = "owo_revolver_shotgun_barrel_06", name = "OwO Shotgun Barrel 3 (6)"},
		-- barrel 7 with the skulls is too squished
		{id = "owo_revolver_shotgun_barrel_08", name = "OwO Shotgun Barrel 4 (8)"},
		--{id = "owo_revolver_shotgun_barrel_09", name = "OwO Shotgun Barrel 6 (9)"},
	})

	mod.inject_models(variant_id, {
		--[[owo_revolver_shotgun_barrel_base_01 = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_01"},
		},]]
		owo_revolver_shotgun_barrel_base_04 = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", -- parent = "receiver",
			-- this was in wc/weapon_attachments/stub.lua and i thought it'd fix the animation issue but no fuck me im just too desperate
			-- angle = -.5, move = vector3_box(0, -2, 0), remove = vector3_box(0, .1, 0),
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_04"},
		},
		owo_revolver_shotgun_barrel_base_05 = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", -- parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_05"},
		},
		owo_revolver_shotgun_barrel_base_06 = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", -- parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_06"},
		},
		owo_revolver_shotgun_barrel_base_08 = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", -- parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_08"},
		},
		--[[owo_revolver_shotgun_barrel_base_09 = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_09"},
		},]]
		--[[owo_revolver_shotgun_barrel_base_04_l = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_04"},
		},
		owo_revolver_shotgun_barrel_base_05_l = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_05"},
		},
		owo_revolver_shotgun_barrel_base_06_l = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_06"},
		},
		owo_revolver_shotgun_barrel_base_08_l = {
			model = _item_ranged.."/barrels/stubgun_pistol_barrel_01", type = "barrel", parent = "receiver",
			automatic_equip = {barrelshroud = "owo_revolver_shotgun_barrel_08"},
		},
		]]
		owo_revolver_shotgun_barrel_empty = {
			model = "", type = "barrelshroud", parent = "barrel",
		},
		--[[owo_revolver_shotgun_barrel_01 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_01", type = "barrelshroud", parent = "barrel",
		},]]
		owo_revolver_shotgun_barrel_04 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_04", type = "barrelshroud", parent = "barrel",
		},
		owo_revolver_shotgun_barrel_05 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_05", type = "barrelshroud", parent = "barrel",
		},
		owo_revolver_shotgun_barrel_06 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_06", type = "barrelshroud", parent = "barrel",
		},
		owo_revolver_shotgun_barrel_08 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_08", type = "barrelshroud", parent = "barrel",
		},
		--[[owo_revolver_shotgun_barrel_09 = {
			model = _item_ranged.."/barrels/shotgun_rifle_barrel_09", type = "barrelshroud", parent = "barrel",
		},]]
	})
end

-- Barrel: Dreg Gunner barrel
function mod.owo_dreg_gunner_barrel(variant_id, type)
	mod.inject_attachments_owo(variant_id, "barrel" or type, {
		{id = "owo_dreg_barrel_01", name = "OwO Dreg Gunner Barrel"},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroud", {
		{id = "owo_dreg_shroud_empty", name = "Dreg Shroud Empty", no_randomize = true},
		{id = "owo_dreg_shroud_01", name = "OwO Dreg Shroud", no_randomize = true},
	})
	--[[mod.inject_attachments_owo(variant_id, "barrelshroudac", {
		{id = "owo_dreg_shroud_empty", name = "Dreg Shroud Empty", no_randomize = true},
		{id = "owo_dreg_shroudac_01", name = "OwO Dreg Shroud Ac", no_randomize = true},
	})]]
	mod.inject_attachments_owo(variant_id, "barrelshroudac2", {
		{id = "owo_dreg_shroud_empty_02", name = "Dreg Shroud Empty", no_randomize = true},
		{id = "owo_dreg_shroudac2_01", name = "OwO Dreg Shroud Ac2", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac3", {
		{id = "owo_dreg_shroud_empty_03", name = "Dreg Shroud Empty", no_randomize = true},
		{id = "owo_dreg_shroudac3_01", name = "OwO Dreg Shroud Ac3", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac4", {
		{id = "owo_dreg_shroud_empty_04", name = "Dreg Shroud Empty", no_randomize = true},
		{id = "owo_dreg_shroudac4_01", name = "OwO Dreg Shroud Ac4", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- thanks syn for the exitus barrel
		owo_dreg_barrel_01 = {
			model = _item_ranged.."/barrels/stubgun_ogryn_barrel_02", type = "barrel", 
			mesh_move = false, parent = 'receiver', 
			automatic_equip = {
				barrelshroud= "owo_dreg_shroud_01", 
				barrelshroudac= "owo_dreg_shroudac_01", 
				barrelshroudac2= "owo_dreg_shroudac2_01",
				barrelshroudac3= "owo_dreg_shroudac3_01",
				barrelshroudac4= "owo_dreg_shroudac4_01",
			},
		},
		owo_dreg_shroud_01 = {
			model = _item_ranged.."/barrels/stubgun_ogryn_barrel_01", type = "barrelshroud", 
			mesh_move = false, parent = 'receiver'
		},
		--[[owo_dreg_shroudac_01 = {
			model = _item_ranged.."/barrels/lasgun_rifle_barrel_01", type = "barrelshroudac", 
			mesh_move = false, parent = 'receiver'
		},]]
		owo_dreg_shroudac2_01 = {
			model = _item_ranged.."/barrels/lasgun_rifle_barrel_02", type = "barrelshroudac2", 
			mesh_move = false, parent = 'barrel'
		},
		owo_dreg_shroudac3_01 = {
			model = _item_ranged.."/underbarrels/boltgun_rifle_underbarrel_03", type = "barrelshroudac3", 
			mesh_move = false, parent = 'barrel'
		},
		owo_dreg_shroudac4_01 = {
			model = _item_ranged.."/underbarrels/shotgun_rifle_underbarrel_04", type = "barrelshroudac4", 
			mesh_move = false, parent = 'barrel'
		},
		owo_dreg_shroud_empty = {
			model = "", type = "barrelshroudac", 
			mesh_move = false, parent = 'receiver'
		},
		owo_dreg_shroud_empty_02 = {
			model = "", type = "barrelshroudac2", 
			mesh_move = false, parent = 'receiver'
		},
		owo_dreg_shroud_empty_03 = {
			model = "", type = "barrelshroudac3", 
			mesh_move = false, parent = 'receiver'
		},
		owo_dreg_shroud_empty_04 = {
			model = "", type = "barrelshroudac4", 
			mesh_move = false, parent = 'receiver'
		},
	})
end

-- Barrel: Scab Gunner
--		TODO: Fix the fucked up las origin
function mod.owo_scab_gunner_barrel(variant_id, type)
	mod.inject_attachments_owo(variant_id, "barrel" or type, {
		{id = "owo_scab_gunner_barrel_01", name = "OwO Scab Gunner Barrel 1"},
	})
	mod.inject_attachments_owo(variant_id, "barrelac" or type, {
		{id = "owo_scab_gunner_barrelac_empty", name = "OwO Scab Gunner Barrel empty"},
		{id = "owo_scab_gunner_barrelac_01", name = "OwO Scab Gunner Barrel'vesa 1"},
	})

	mod.inject_models(variant_id, {
		owo_scab_gunner_barrel_01 = {
			model = _item_ranged.."/barrels/lasgun_rifle_barrel_01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = {
				barrelac = "owo_scab_gunner_barrelac_01",
			},
		},
		owo_scab_gunner_barrelac_empty = {
			model = "", type = "barrelac", 
			mesh_move = false, parent = "barrel"
		},
		owo_scab_gunner_barrelac_01 = {
			model = _item_melee.."/grips/combat_sword_grip_03", type = "barrelac", 
			mesh_move = false, parent = "barrel"
		},
	})

end

-- Barrel: M16 barrels
-- 		Autoguns
-- 		I stole this from Syn's Aquilon Barrel (barrel and shroud are near identical lmao)
function mod.owo_m16_barrel(variant_id, type)
	mod.inject_attachments_owo(variant_id, "barrel" or type, {
		{id = "owo_m16_barrel_a1", name = "OwO M16a1 Barrel 1"},
		{id = "owo_m16_barrel_a1_02", name = "OwO M16a1 Barrel 2"},
		{id = "owo_m16_barrel_a2", name = "OwO M16a2 Barrel"},
		{id = "owo_m16_barrel_t_a1", name = "OwO M16a1 Barrel (Tall Post) 1"},
		{id = "owo_m16_barrel_t_a1_02", name = "OwO M16a1 Barrel (Tall Post) 2"},
		{id = "owo_m16_barrel_t_a2", name = "OwO M16a2 Barrel (Tall Post)"},
		{id = "owo_m16_barrel_n_a1", name = "OwO M16a1 Barrel (No Post) 1"},
		{id = "owo_m16_barrel_n_a1_02", name = "OwO M16a1 Barrel (No Post) 2"},
		{id = "owo_m16_barrel_n_a2", name = "OwO M16a2 Barrel (No Post)"},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroud" or type, {
		{id = "owo_m16_empty", name = "OwO Empty Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroud_a1", name = "OwO M16a1 Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroud_a1_02", name = "OwO M16a2 Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroud_a2", name = "OwO M16a2 Barrel Shroud", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac2" or type, {
		{id = "owo_m16_empty_02", name = "OwO Empty Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroudac2_01", name = "OwO M16 Front Sight shroudac", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac3" or type, {
		{id = "owo_m16_empty_03", name = "OwO Empty Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroudac3_a1", name = "OwO M16a1 Barrel Shroudac3", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac4" or type, {
		{id = "owo_m16_empty_04", name = "OwO Empty Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroudac4_01", name = "OwO M16a1 Barrel Shroudac3", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac5" or type, {
		{id = "owo_m16_empty_05", name = "OwO Empty Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroudac5_01", name = "OwO M16a1 Barrel Shroudac3", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroudac6" or type, {
		{id = "owo_m16_empty_06", name = "OwO Empty Barrel Shroud", no_randomize = true},
		{id = "owo_m16_barrelshroudac6_01", name = "OwO M16a1 Barrel Shroudac3", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		owo_m16_barrel_a1 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a1",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac3 = "owo_m16_barrelshroudac3_a1",
				barrelshroudac4 = "owo_m16_barrelshroudac4_01", barrelshroudac5 = "owo_m16_barrelshroudac5_01", barrelshroudac6 = "owo_m16_barrelshroudac6_01",
			}
		},
		owo_m16_barrel_a2 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a2",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac4 = "owo_m16_barrelshroudac4_01", barrelshroudac5 = "owo_m16_barrelshroudac5_01", barrelshroudac6 = "owo_m16_barrelshroudac6_01",
			}
		},
		owo_m16_barrel_a1_02 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a1_02",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac4 = "owo_m16_barrelshroudac4_01", barrelshroudac5 = "owo_m16_barrelshroudac5_01", barrelshroudac6 = "owo_m16_barrelshroudac6_01",
			}
		},
		owo_m16_barrel_t_a1 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a1",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac3 = "owo_m16_barrelshroudac3_a1",
				barrelshroudac4 = "owo_m16_barrelshroudac4_01", barrelshroudac5 = "owo_m16_barrelshroudac5_01", barrelshroudac6 = "owo_m16_barrelshroudac6_01",
			}
		},
		owo_m16_barrel_t_a2 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a2",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac4 = "owo_m16_barrelshroudac4_01", barrelshroudac5 = "owo_m16_barrelshroudac5_01", barrelshroudac6 = "owo_m16_barrelshroudac6_01",
			}
		},
		owo_m16_barrel_t_a1_02 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a1_02",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac4 = "owo_m16_barrelshroudac4_01", barrelshroudac5 = "owo_m16_barrelshroudac5_01", barrelshroudac6 = "owo_m16_barrelshroudac6_01",
			}
		},
		owo_m16_barrel_n_a1 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver", hide_mesh = {{'barrelshroudac2', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}},
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a1",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
				barrelshroudac3 = "owo_m16_barrelshroudac3_a1"
			}
		},
		owo_m16_barrel_n_a2 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver", hide_mesh = {{'barrelshroudac2', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}},
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a2",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
			}
		},
		owo_m16_barrel_n_a1_02 = {
			model = _item_ranged.."/barrels/lasgun_pistol_barrel_07", type = "barrel", 
			mesh_move = false, parent = "receiver", hide_mesh = {{'barrelshroudac2', 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}},
			automatic_equip = { barrelshroud = "owo_m16_barrelshroud_a1_02",
				barrelshroudac2 = "owo_m16_barrelshroudac2_01",
			}
		},
		owo_m16_barrelshroud_a1 = {
			model = _item_melee.."/grips/hatchet_grip_03", type = "barrelshroud", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_barrelshroud_a2 = {
			model = _item_melee.."/grips/hatchet_grip_04", type = "barrelshroud", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_barrelshroud_a1_02 = {
			model = _item_melee.."/grips/hatchet_grip_05", type = "barrelshroud", 
			mesh_move = false, parent = "receiver"
		},
		-- Front Post
		owo_m16_barrelshroudac2_01 = {
			model = _item_ranged.."/stocks/autogun_rifle_ak_stock_02", type = "barrelshroudac2", 
			mesh_move = false, parent = "receiver"
		},
		-- helper a1 grip
		owo_m16_barrelshroudac3_a1 = {
			model = _item_ranged.."/stocks/autogun_rifle_ak_stock_01", type = "barrelshroudac3", 
			mesh_move = false, parent = "receiver"
		},
		-- Front Post Sights
		-- middle then sides
		owo_m16_barrelshroudac4_01 = {
			-- why tf is it like this???
			model = _item_ranged.."/handles/combat_blade_handle_04", type = "barrelshroudac4", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_barrelshroudac5_01 = {
			model = "content/items/weapons/player/melee/blades/sabre_blade_01", type = "barrelshroudac5", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_barrelshroudac6_01 = {
			model = "content/items/weapons/player/melee/blades/sabre_blade_01", type = "barrelshroudac6", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_empty = {
			model = "", type = "barrelshroud", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_empty_02 = {
			model = "", type = "barrelshroudac2", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_empty_03 = {
			model = "", type = "barrelshroudac3", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_empty_04 = {
			model = "", type = "barrelshroudac4", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_empty_05 = {
			model = "", type = "barrelshroudac5", 
			mesh_move = false, parent = "receiver"
		},
		owo_m16_empty_06 = {
			model = "", type = "barrelshroudac6", 
			mesh_move = false, parent = "receiver"
		},
	})

end

-- Barrel: Wooden Helbore
function mod.owo_wood_krieg(variant_id, type)
	mod.inject_attachments_owo(variant_id, "barrel" or type, {
		{id = "owo_wood_krieg_01", name = "OwO Wooden Helbore 1 (2)"},
		{id = "owo_wood_krieg_02", name = "OwO Wooden Helbore 2 (3)"},
		{id = "owo_wood_krieg_03", name = "OwO Wooden Helbore 3 (7)"},
	})
	mod.inject_attachments_owo(variant_id, "barrelshroud" or type, {
		{id = "owo_wood_krieg_empty", name = "Empty Barrel", no_randomize = true},
		{id = "owo_wood_krieg_ac1_01", name = "OwO Wooden Helbore ac1 1", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_wood_krieg_01 = {
			model = _item_ranged.."/barrels/lasgun_rifle_krieg_barrel_02", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_wood_krieg_ac1_01", }
		},
		owo_wood_krieg_02 = {
			model = _item_ranged.."/barrels/lasgun_rifle_krieg_barrel_04", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_wood_krieg_ac1_01", }
		},
		owo_wood_krieg_03 = {
			model = _item_ranged.."/barrels/lasgun_rifle_krieg_barrel_ml01", type = "barrel", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { barrelshroud = "owo_wood_krieg_ac1_01", }
		},
		-- ### Helper Parts ###
		owo_wood_krieg_ac1_01 = {
			model = _item_ranged.."/handles/combat_blade_handle_01", type = "barrelshroud", 
			mesh_move = false, parent = "barrel",
		},
		-- ### Empty ###
		owo_wood_krieg_empty = {
			model = "", type = "barrelshroud", 
			mesh_move = false, parent = "barrel"
		},
	})

end

-- Bayonet: Dreg Gunner bayonet
--		Brauto/Iag
function mod.owo_dreg_gunner_bayonet(variant_id, type)
	mod.inject_attachments_owo(variant_id, "bayonet" or type, {
		{id = "owo_dreg_bayonet_empty", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_dreg_bayonet_01", name = "OwO Dreg Gunner Bayonet"},

	})
	mod.inject_attachments_owo(variant_id, "bayonetac1", {
		{id = "owo_dreg_bayonet_empty_01", name = "Empty Bayonetac1", no_randomize = true},
		{id = "owo_dreg_bayonet_rear_01", name = "OwO Dreg Bayonet Hooker Ass", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_dreg_bayonet_01 = {
			model = _item_melee.."/blades/combat_blade_blade_03", type = "bayonet", 
			mesh_move = false, parent = 'barrel', 
			automatic_equip = {
				bayonetac1 = "owo_dreg_bayonet_rear_01"
			}
		},
		-- ### Helper Parts ###
		owo_dreg_bayonet_rear_01 = {
			model = _item_melee.."/blades/combat_blade_blade_05", type = "bayonetac1", 
			mesh_move = false, parent = 'barrel'
		}, 
		-- ### Empty ###
		owo_dreg_bayonet_empty = {
			model = "", type = "bayonet", 
			mesh_move = false, parent = 'barrel'
		},
		owo_dreg_bayonet_empty_01 = {
			model = "", type = "bayonetac1", 
			mesh_move = false, parent = 'barrel'
		},
	})
end

-- Bayonet: M7, Seitengewehr 98 (Butcher's Blade), Épée Baïonnette 1886
--		Autoguns, Helbores
function mod.owo_bayonet(variant_id, type)
	mod.inject_attachments_owo(variant_id, "bayonet" or type, {
		{id = "owo_bayonet_m7_01", name = "OwO M7 Bayonet"},
		{id = "owo_bayonet_seitengewehr", name = "OwO Seitengewehr 98"},
		{id = "owo_bayonet_epee", name = "OwO Épée Baïonnette 1886"},
	})
	mod.inject_attachments_owo(variant_id, "bayonetac1" or type, {
		{id = "owo_bayonet_empty_01", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_bayonet_m7_helper_01", name = "M7 Bayonet Grip", no_randomize = true},
		{id = "owo_bayonet_seitengewehr_helper_01", name = "Seitengewehr Grip", no_randomize = true},
		{id = "owo_bayonet_epee_helper_01", name = "Epee Grip", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "bayonetac2" or type, {
		{id = "owo_bayonet_empty_02", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_bayonet_m7_helper_02", name = "M7 Bayonet Lug", no_randomize = true},
		{id = "owo_bayonet_seitengewehr_helper_02", name = "Seitengewehr Grip bulge", no_randomize = true},
		{id = "owo_bayonet_epee_helper_02", name = "Epee loop d'loop", no_randomize = true},
	})
	
	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_bayonet_m7_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "bayonet", 
			mesh_move = false, parent = "barrel",
			automatic_equip = { bayonetac1 = "owo_bayonet_m7_helper_01",
				bayonetac2 = "owo_bayonet_m7_helper_02"
			}
		},
		owo_bayonet_seitengewehr = {
			model = _item_melee.."/blades/combat_knife_blade_01", type = "bayonet", 
			mesh_move = false, parent = "barrel",
			automatic_equip = { bayonetac1 = "owo_bayonet_seitengewehr_helper_01",
				bayonetac2 = "owo_bayonet_seitengewehr_helper_02"
			}
		},
		owo_bayonet_epee = {
			model = _item_ranged.."/bayonets/bayonet_03", type = "bayonet", 
			mesh_move = false, parent = "barrel",
			automatic_equip = { bayonetac1 = "owo_bayonet_epee_helper_01",
				bayonetac2 = "owo_bayonet_epee_helper_02"
			}
		},
		-- ### Helper Parts ###
		owo_bayonet_m7_helper_01 = {
			model = _item_melee.."/grips/combat_knife_grip_03", type = "bayonetac1", 
			mesh_move = false, parent = "bayonet",
		},
		owo_bayonet_seitengewehr_helper_01 = {
			model = _item_ranged.."/handles/combat_blade_handle_04", type = "bayonetac1", 
			mesh_move = false, parent = "bayonet",
		},
		owo_bayonet_epee_helper_01 = {
			model = _item_melee.."/grips/combat_knife_grip_02", type = "bayonetac1", 
			mesh_move = false, parent = "bayonet",
		},
		-- Bayonet lug
		owo_bayonet_m7_helper_02 = {
			model = _item_melee.."/grips/chain_sword_grip_07", type = "bayonetac2", 
			mesh_move = false, parent = "bayonet",
		},
		owo_bayonet_seitengewehr_helper_02 = {
			model = _item_melee.."/grips/2h_chain_sword_grip_02", type = "bayonetac2", 
			mesh_move = false, parent = "bayonet",
		},
		-- epee loopy
		owo_bayonet_epee_helper_02 = {
			model = _item_melee.."/heads/hatchet_head_03", type = "bayonetac2", 
			mesh_move = false, parent = "bayonet",
		},
		-- ### Empty ###
		owo_bayonet_empty_01 = {
			model = "", type = "bayonetac1", 
			mesh_move = false, parent = "bayonet"
		},
		owo_bayonet_empty_02 = {
			model = "", type = "bayonetac2", 
			mesh_move = false, parent = "bayonet"
		},
		
	})
end

-- Bayonet: Underbarrel Grenade Launcher
function mod.owo_underbarrel_gl(variant_id, type)
	mod.inject_attachments_owo(variant_id, "bayonet" or type, {
		{id = "owo_m203", name = "OwO M203 Grenade Launcher"},
	})
	mod.inject_attachments_owo(variant_id, "bayonetac1" or type, {
		{id = "owo_underbarrel_gl_empty_01", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_m203_helper_01", name = "OwO M203 ac1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "bayonetac2" or type, {
		{id = "owo_underbarrel_gl_empty_02", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_m203_helper_02", name = "OwO M203 ac2", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "bayonetac3" or type, {
		{id = "owo_underbarrel_gl_empty_03", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_m203_helper_03", name = "OwO M203 ac3", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "bayonetac4" or type, {
		{id = "owo_underbarrel_gl_empty_04", name = "Empty Bayonet", no_randomize = true},
		{id = "owo_m203_helper_04", name = "OwO M203 ac4", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_m203 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_elysian_muzzle_01", type = "bayonet", 
			mesh_move = false, parent = "barrel",
			automatic_equip = { bayonetac1 = "owo_m203_helper_01", bayonetac2 = "owo_m203_helper_02", 
				bayonetac3 = "owo_m203_helper_03", bayonetac4 = "owo_m203_helper_04", 
			}
		},
		-- ### Helper Parts ###
		owo_m203_helper_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_elysian_muzzle_02", type = "bayonetac1", 
			mesh_move = false, parent = "bayonet"
		},
		owo_m203_helper_02 = {
			model = _item_melee.."/grips/combat_knife_grip_03", type = "bayonetac2", 
			mesh_move = false, parent = "bayonet"
		},
		owo_m203_helper_03 = {
			model = _item_ranged.."/stocks/shotgun_rifle_stock_01", type = "bayonetac3", 
			mesh_move = false, parent = "bayonet"
		},
		owo_m203_helper_04 = {
			model = _item_ranged.."/recievers/shotgun_double_barrel_receiver_01", type = "bayonetac4", 
			mesh_move = false, parent = "bayonet"
		},
		-- ### Empty ###
		owo_underbarrel_gl_empty_01 = {
			model = "", type = "bayonetac1", 
			mesh_move = false, parent = "bayonet"
		},
		owo_underbarrel_gl_empty_02 = {
			model = "", type = "bayonetac2", 
			mesh_move = false, parent = "bayonet"
		},
		owo_underbarrel_gl_empty_03 = {
			model = "", type = "bayonetac3", 
			mesh_move = false, parent = "bayonet"
		},
		owo_underbarrel_gl_empty_04 = {
			model = "", type = "bayonetac4", 
			mesh_move = false, parent = "bayonet"
		},
		
	})
end

-- Receiver: Vertically challenged California Bolter
--		Grip: Already included in MT Plugin or use fin grip with stock
--[[ Cannot contain:     
	Pistol grip that protrudes conspicuously beneath the action of the weapon
    Thumbhole stock
    Folding or telescoping stock
    Grenade or flare launcher
    Flash suppressor
    Forward pistol grip 
	California Penal Code § 32310 PC 
		“large-capacity magazine” means any ammunition-feeding device with the capacity to hold more than 10 rounds
	SBR
		A semiautomatic, centerfire rifle that has an overall length of less than 30 inches
]]
function mod.owo_california_bolter(variant_id, type)
	mod.inject_attachments_owo(variant_id, "receiver" or type, {
		{id = "owo_california_bolter_01", name = "OwO California Bolter 1"},
		{id = "owo_california_bolter_02", name = "OwO California Bolter 2"},
		{id = "owo_california_bolter_03", name = "OwO California Bolter 3"},
		{id = "owo_california_bolter_04", name = "OwO California Bolter 4"},
		{id = "owo_california_bolter_05", name = "OwO California Bolter 5"},
		{id = "owo_california_bolter_06", name = "OwO California Bolter 6"},
		{id = "owo_california_bolter_07", name = "OwO California Bolter 7"},
		{id = "owo_california_bolter_08", name = "OwO California Bolter 8"},
	})
	-- 1-7
	mod.inject_models(variant_id, {
		owo_california_bolter_01 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_01", type = "receiver", 
			mesh_move = false
			--[[ this is fucking stupid
			, no_support = {
				-- Thumbhole, Folding, and Telescoping Stocks
				"syn_thumbgun_stock_01",	-- syn thumbhole
				"syn_thumbgun_stock_02",
				"syn_thumbgun_stock_03",
				"syn_thumbgun_stock_04",
				"syn_thumbgun_stock_05",
				-- infantry autogun 4
				-- brauto 1-3, 5-8
				-- headhunter 1,3
				"xl_autogun_rifle_stock_04",	-- syn xl iag
				"xl_autogun_rifle_stock_05",	-- syn xl brauto
				"xl_autogun_rifle_stock_06",
				"xl_autogun_rifle_stock_07",
				"xl_autogun_rifle_stock_12",
				"xl_autogun_rifle_stock_13",
				"xl_autogun_rifle_stock_14",
				"xl_autogun_rifle_stock_08",	-- syn xl headhunter
				"xl_autogun_rifle_stock_16",
			}]]
		},
		owo_california_bolter_02 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_02", type = "receiver", 
			mesh_move = false
		},
		owo_california_bolter_03 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_03", type = "receiver", 
			mesh_move = false
		},
		owo_california_bolter_04 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_04", type = "receiver", 
			mesh_move = false
		},
		owo_california_bolter_05 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_05", type = "receiver", 
			mesh_move = false
		},
		owo_california_bolter_06 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_06", type = "receiver", 
			mesh_move = false
		},
		owo_california_bolter_07 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_07", type = "receiver", 
			mesh_move = false
		},
		owo_california_bolter_08 = {
			model = _item_ranged.."/recievers/boltgun_rifle_receiver_08", type = "receiver", 
			mesh_move = false
		}
	})
end

-- Receiver: Helbore Bolt Action
function mod.owo_bolt_action(variant_id, type)
	mod.inject_attachments_owo(variant_id, "receiver" or type, {
		{id = "owo_bolt_helbore_01", name = "OwO Helbore Bolt Action 1"},
		{id = "owo_bolt_helbore_02", name = "OwO Helbore Bolt Action 2"},
		{id = "owo_bolt_helbore_03", name = "OwO Helbore Bolt Action 3"},
		{id = "owo_bolt_helbore_04", name = "OwO Helbore Bolt Action 4"},
		{id = "owo_bolt_helbore_05", name = "OwO Helbore Bolt Action 5"},
	})
	mod.inject_attachments_owo(variant_id, "receiverac1" or type, {
		{id = "owo_bolt_grip_empty", name = "receiverac1 empty", no_randomize = true},
		{id = "owo_bolt_helbore_bolt_01", name = "OwO bolt action bolt", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "receiverac2" or type, {
		{id = "owo_bolt_shaft_empty", name = "receiverac2 empty", no_randomize = true},
		{id = "owo_bolt_helbore_bolt_02", name = "OwO bolt action bolt shaft", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_bolt_helbore_01 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_01", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_bolt_helbore_bolt_01", receiverac2 = "owo_bolt_helbore_bolt_02"}
		},
		owo_bolt_helbore_02 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_02", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_bolt_helbore_bolt_01", receiverac2 = "owo_bolt_helbore_bolt_02"}
		},
		owo_bolt_helbore_03 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_04", type = "receiver", -- WHY IS THERE NO 3
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_bolt_helbore_bolt_01", receiverac2 = "owo_bolt_helbore_bolt_02"}
		},
		owo_bolt_helbore_04 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_05", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_bolt_helbore_bolt_01", receiverac2 = "owo_bolt_helbore_bolt_02"}
		},
		owo_bolt_helbore_05 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_ml01", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_bolt_helbore_bolt_01", receiverac2 = "owo_bolt_helbore_bolt_02"}
		},
		-- ### Helper Parts ###
		-- grippy part
		owo_bolt_helbore_bolt_01 = {
			model = _item_melee.."/grips/combat_knife_grip_07", type = "receiverac1", 
			mesh_move = false, parent = "receiver"
		},
		-- the shaft
		owo_bolt_helbore_bolt_02 = {
			model = _item_melee.."/grips/combat_knife_grip_01", type = "receiverac2", 
			mesh_move = false, parent = "receiver"
		},
		-- ### Empty ###
		owo_bolt_grip_empty = {
			model = "", type = "receiverac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_bolt_shaft_empty = {
			model = "", type = "receiverac2", 
			mesh_move = false, parent = "receiver"
		},
	})
end

-- Receiver: Helbore MAS-49
function mod.owo_helbore_mas49(variant_id, type)
	mod.inject_attachments_owo(variant_id, "receiver" or type, {
		{id = "owo_helbore_mas49_01", name = "OwO Helbore MAS-49 1"},
		{id = "owo_helbore_mas49_02", name = "OwO Helbore MAS-49 2"},
		{id = "owo_helbore_mas49_03", name = "OwO Helbore MAS-49 3"},
		--{id = "owo_helbore_mas49_04", name = "OwO Helbore MAS-49 4"}, -- yeah this musket ass mf ain't workin
		{id = "owo_helbore_mas49_05", name = "OwO Helbore MAS-49 4 (M)"},
		{id = "owo_helbore_mas49_01_s", name = "OwO MAS-49 Slim 1"},
	})
	mod.inject_attachments_owo(variant_id, "receiverac1" or type, {
		{id = "owo_bolt_empty", name = "receiverac1 empty", no_randomize = true},
		{id = "owo_helbore_mas49_ass", name = "OwO MAS-49 Ass", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "receiverac2" or type, {
		{id = "owo_knob_empty", name = "receiverac1 empty", no_randomize = true},
		{id = "owo_helbore_mas49_knob", name = "OwO MAS-49 Knob", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_helbore_mas49_01 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_01", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_helbore_mas49_ass", receiverac2 = "owo_helbore_mas49_knob"}
		},
		owo_helbore_mas49_02 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_02", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_helbore_mas49_ass", receiverac2 = "owo_helbore_mas49_knob"}
		},
		owo_helbore_mas49_03 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_04", type = "receiver", -- WHY IS THERE NO 3
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_helbore_mas49_ass", receiverac2 = "owo_helbore_mas49_knob"}
		},
		--[[owo_helbore_mas49_04 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_05", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_helbore_mas49_ass", receiverac2 = "owo_helbore_mas49_knob"}
		},]]
		owo_helbore_mas49_05 = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_ml01", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_helbore_mas49_ass", receiverac2 = "owo_helbore_mas49_knob"}
		},
		owo_helbore_mas49_01_s = {
			model = _item_ranged.."/recievers/lasgun_rifle_krieg_receiver_01", type = "receiver", 
			mesh_move = false,
			automatic_equip = {receiverac1 = "owo_helbore_mas49_ass", receiverac2 = "owo_helbore_mas49_knob"}
		},
		-- ### Helper Parts ###
		-- makes the ass more shapely
		-- dovetail for optic mount
		owo_helbore_mas49_ass = {
			model = _item_ranged.."/magazines/boltgun_rifle_magazine_02", type = "receiverac1", 
			mesh_move = false, parent = "receiver"
		},
		-- the knob on the right (Cocking)
		owo_helbore_mas49_knob = {
			model = _item_melee.."/grips/power_sword_grip_06", type = "receiverac2", 
			mesh_move = false, parent = "receiver"
		},
		-- ### Empty ###
		owo_bolt_empty = {
			model = "", type = "receiverac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_knob_empty = {
			model = "", type = "receiverac2", 
			mesh_move = false, parent = "receiver"
		},
	})
end

-- Receiver: Pistol Grip Mag
function mod.owo_laspistol_grip_mag(variant_id)
	mod.inject_attachments_owo(variant_id, "receiver", {
		{id = "owo_laspistol_grip_mag_01", name = "OwO Chunky Slide 1"},
		{id = "owo_laspistol_grip_mag_02", name = "OwO Chunky Slide 2"},
		{id = "owo_laspistol_grip_mag_03", name = "OwO Chunky Slide 3 (M)"},
	})
	mod.inject_attachments_owo(variant_id, "receiverac1", {
		{id = "owo_laspistol_grip_mag_helper_empty", name = "Empty Receiverac1"},
		{id = "owo_laspistol_grip_mag_helper_01", name = "OwO Pistol Receiverac"},
	})
	mod.inject_attachments_owo(variant_id, "receiverac2", {
		{id = "owo_laspistol_grip_mag_helper_empty", name = "Empty Receiverac2"},
		{id = "owo_laspistol_grip_mag_helper2_01", name = "OwO Pistol Trigger"},
	})

	mod.inject_models(variant_id, {
		owo_laspistol_grip_mag_01 = {
			model = _item_ranged.."/recievers/lasgun_rifle_receiver_01", type = "receiver", mesh_move = false,
			automatic_equip = {
				receiverac1 = "owo_laspistol_grip_mag_helper_01", receiverac2 = "owo_laspistol_grip_mag_helper2_01"
			}
		},
		owo_laspistol_grip_mag_02 = {
			model = _item_ranged.."/recievers/lasgun_rifle_receiver_02", type = "receiver", mesh_move = false,
			automatic_equip = {
				receiverac1 = "owo_laspistol_grip_mag_helper_01", receiverac2 = "owo_laspistol_grip_mag_helper2_01"
			}
		},
		owo_laspistol_grip_mag_03 = {
			model = _item_ranged.."/recievers/lasgun_rifle_receiver_0ml01", type = "receiver", mesh_move = false,
			automatic_equip = {
				receiverac1 = "owo_laspistol_grip_mag_helper_01", receiverac2 = "owo_laspistol_grip_mag_helper2_01"
			}
		},
		owo_laspistol_grip_mag_helper_empty = {
			model = "", type = "receiverac1", parent = "receiver", mesh_move = false,
		},
		owo_laspistol_grip_mag_helper_01 = {
			model = _item_ranged.."/magazines/lasgun_rifle_magazine_01", type = "receiverac1", parent = "receiver", mesh_move = false,
		},
		owo_laspistol_grip_mag_helper2_01 = {
			model = "content/items/weapons/player/melee/blades/sabre_blade_01", type = "receiverac2", parent = "receiver", mesh_move = false,
		},
	})
end

-- Grip: Fin Grip
function mod.owo_fin_grip(variant_id, type)
	mod.inject_attachments_owo(variant_id, "grip" or type, {
		{id = "owo_fin_grip_01", name = "OwO Fin Grip 1"},
	})
	mod.inject_attachments_owo(variant_id, "gripac" or type, {
		{id = "owo_fin_grip2_empty", name = "OwO Fin Grip empty", no_randomize = true},
		{id = "owo_fin_grip2_01", name = "OwO Fin Grip'vesa 1", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_fin_grip_01 = {
			model = _item_ranged.."/grips/autogun_rifle_grip_01", type = "grip", 
			mesh_move = false, parent = "receiver",
			automatic_equip = {
				gripac = "owo_fin_grip2_01",
			},
		},
		-- ### Helper Parts ###
		owo_fin_grip2_01 = {
			model = _item_melee.."/blades/combat_blade_blade_02", type = "gripac", 
			mesh_move = false, parent = "receiver",
		},
		-- ### Empty ###
		owo_fin_grip2_empty = {
			model = "", type = "gripac", 
			mesh_move = false, parent = "receiver",
		},
	})
end

-- Stock: Straight Grip and Recon Stock
function mod.owo_helbore_gripstock_recon(variant_id,type)
	mod.inject_attachments_owo(variant_id, "stock" or type, {
		{id = "owo_gripstock_recon_01", name = "OwO StraightGrip Recon 1"},
		{id = "owo_gripstock_recon_02", name = "OwO StraightGrip Recon 2"},
		{id = "owo_gripstock_recon_03", name = "OwO StraightGrip Recon 3"},
	})
	mod.inject_attachments_owo(variant_id, "stockac" or type, {
		{id = "owo_gripstock_grip_empty",  name = "Empty stockac", no_randomize = true},
		{id = "owo_gripstock_grip_01a",  name = "OwO StraightGrip stockac", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
	    owo_gripstock_recon_01 = {
			model = _item_ranged.."/stocks/lasgun_rifle_elysian_stock_01", type = "stock", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0),
			automatic_equip = {
				stockac = "owo_gripstock_grip_01a",
			},
		},
		owo_gripstock_recon_02 = {
			model = _item_ranged.."/stocks/lasgun_rifle_elysian_stock_02", type = "stock", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0),
			automatic_equip = {
				stockac = "owo_gripstock_grip_01a",
			},
		},
		owo_gripstock_recon_03 = {
			model = _item_ranged.."/stocks/lasgun_rifle_elysian_stock_03", type = "stock", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0),
			automatic_equip = {
				stockac = "owo_gripstock_grip_01a",
			},
		},
		-- ### Helper Parts ###
		owo_gripstock_grip_01a = {
			model = _item_ranged.."/recievers/stubgun_pistol_receiver_02", type = "stockac", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0)
		},
		-- ### Empty ###
		owo_gripstock_grip_empty = {
			model = "", type = "stockac", parent = "receiver", 
		},
	})
end

-- Sight: Rear sights with flip up. Ladder Aperture Sights
function mod.owo_rear_sight(variant_id, type)
	mod.inject_attachments_owo(variant_id, "sight" or type, {
		{id = "owo_rear_sight_01", name = "OwO Aperture Sights, U Notch"},
		{id = "owo_rear_sight_02", name = "OwO Aperture, U Notch (Up)"},
		{id = "owo_rear_sight_o_00", name = "OwO _n_"},
		{id = "owo_rear_sight_o_01", name = "OwO _n_ (thicc)"},
		{id = "owo_rear_sight_o_02", name = "OwO MAS49/56 Irons"},
		{id = "owo_rear_sight_o_03", name = "OwO MAS49 (starving)"},
	})
	mod.inject_attachments_owo(variant_id, "sightac1" or type, {
		{id = "owo_rear_sight_empty_01", name = "Empty Sight", no_randomize = true},
		{id = "owo_rear_sight_ac1_01", name = "Flip sight range select 1", no_randomize = true},
		{id = "owo_rear_sight_ac1_02", name = "MAS49 Peep 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac2" or type, {
		{id = "owo_rear_sight_empty_02", name = "Empty Sight", no_randomize = true},
		{id = "owo_rear_sight_ac2_01", name = "Flip sight range select 2", no_randomize = true},
		{id = "owo_rear_sight_ac2_02", name = "MAS49 Peep 2", no_randomize = true},
		{id = "owo_rear_sight_ac2_03", name = "MAS49/56 Feet", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac3" or type, {
		{id = "owo_rear_sight_empty_03", name = "Empty Sight", no_randomize = true},
		{id = "owo_rear_sight_ac3_01", name = "Rear Aperture 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac4" or type, {
		{id = "owo_rear_sight_empty_04", name = "Empty Sight", no_randomize = true},
		{id = "owo_rear_sight_ac4_01", name = "Rear Aperture 2", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac5" or type, {
		{id = "owo_rear_sight_empty_05", name = "Empty Sight", no_randomize = true},
		{id = "owo_rear_sight_ac5_01", name = "MAS49 sight seat", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac6" or type, {
		{id = "owo_rear_sight_empty_06", name = "Empty Sight", no_randomize = true},
		{id = "owo_rear_sight_ac6_01", name = "MAS49 bulge", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		-- the base sight is the ladder
		owo_rear_sight_01 = {
			model = _item_melee.."/grips/chain_sword_grip_06", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { sightac1 = "owo_rear_sight_ac1_01", sightac2 = "owo_rear_sight_ac2_01",
				sightac3 = "owo_rear_sight_ac3_01", sightac4 = "owo_rear_sight_ac4_01",
			}
		},
		owo_rear_sight_02 = {
			model = _item_melee.."/grips/chain_sword_grip_06", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { sightac1 = "owo_rear_sight_ac1_01", sightac2 = "owo_rear_sight_ac2_01",
				sightac3 = "owo_rear_sight_ac3_01", sightac4 = "owo_rear_sight_ac4_01",
			}
		},
		-- mas sight
		owo_rear_sight_o_00 = {
			model = _item_melee.."/grips/chain_sword_grip_07", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { sightac1 = "owo_rear_sight_ac1_02", sightac2 = "owo_rear_sight_ac2_02",
				sightac3 = "owo_rear_sight_ac3_01", sightac4 = "owo_rear_sight_ac4_01",
				sightac5 = "owo_rear_sight_ac5_01", sightac6 = "owo_rear_sight_empty",
			}
		},
		owo_rear_sight_o_01 = {
			model = _item_melee.."/grips/chain_sword_grip_07", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { sightac1 = "owo_rear_sight_ac1_02", sightac2 = "owo_rear_sight_ac2_02",
				sightac3 = "owo_rear_sight_ac3_01", sightac4 = "owo_rear_sight_ac4_01",
				sightac5 = "owo_rear_sight_ac5_01", sightac6 = "owo_rear_sight_ac6_01",
			}
		},
		-- mas 49/56
		owo_rear_sight_o_02 = {
			model = _item_melee.."/grips/chain_sword_grip_07", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { sightac1 = "owo_rear_sight_ac1_02", sightac2 = "owo_rear_sight_empty",
				sightac3 = "owo_rear_sight_ac3_01", sightac4 = "owo_rear_sight_ac4_01",
				sightac5 = "owo_rear_sight_ac5_01", sightac6 = "owo_rear_sight_ac6_01",
			}
		},
		owo_rear_sight_o_03 = {
			model = _item_melee.."/grips/chain_sword_grip_07", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { sightac1 = "owo_rear_sight_ac1_02", sightac2 = "owo_rear_sight_empty",
				sightac3 = "owo_rear_sight_ac3_01", sightac4 = "owo_rear_sight_ac4_01",
				sightac5 = "owo_rear_sight_ac5_01", sightac6 = "owo_rear_sight_empty",
			}
		},
		-- ### Helper Parts ###
		-- ladder sight select
		owo_rear_sight_ac1_01 = {
			model = _item_ranged.."/bayonets/rippergun_rifle_bayonet_02", type = "sightac1", 
			mesh_move = false, parent = "sight",
		},
		-- mas peep
		owo_rear_sight_ac1_02 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "sightac1", 
			mesh_move = false, parent = "sight",
		},
		-- ladder sight select
		owo_rear_sight_ac2_01 = {
			model = _item_ranged.."/bayonets/rippergun_rifle_bayonet_02", type = "sightac2", 
			mesh_move = false, parent = "sight",
		},
		-- mas peep
		owo_rear_sight_ac2_02 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sightac2", 
			mesh_move = false, parent = "sight",
		},
		-- mas 49/56 bulgey wulgey (fake)
		owo_rear_sight_ac2_03 = {
			model = _item_melee.."/heads/power_maul_head_03", type = "sightac2", 
			mesh_move = false, parent = "sight",
		},
		owo_rear_sight_ac3_01 = {
			model = _item_ranged.."/stocks/lasgun_rifle_stock_03", type = "sightac3", 
			mesh_move = false, parent = "sight",
		},
		owo_rear_sight_ac4_01 = {
			model = _item_ranged.."/stocks/lasgun_rifle_stock_03", type = "sightac4", 
			mesh_move = false, parent = "sight",
		},
		-- mas seat/feet
		owo_rear_sight_ac5_01 = {
			model = _item_ranged.."/magazines/lasgun_rifle_magazine_01", type = "sightac5", 
			mesh_move = false, parent = "sight",
		},
		-- mas bulgey wulgey (real)
		owo_rear_sight_ac6_01 = {
			model = _item_melee.."/heads/power_maul_head_03", type = "sightac6", 
			mesh_move = false, parent = "sight",
		},
		-- ### Empty ###
		owo_rear_sight_empty_01 = {
			model = "", type = "sightac1", 
			mesh_move = false, parent = "sight"
		},
		owo_rear_sight_empty_02 = {
			model = "", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_rear_sight_empty_03 = {
			model = "", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_rear_sight_empty_04 = {
			model = "", type = "sightac4", 
			mesh_move = false, parent = "sight"
		},
		owo_rear_sight_empty_05 = {
			model = "", type = "sightac5", 
			mesh_move = false, parent = "sight"
		},
		owo_rear_sight_empty_06 = {
			model = "", type = "sightac6", 
			mesh_move = false, parent = "sight"
		},
	})
end

-- Sight: M16 Carry Handle
function mod.owo_m16_sight(variant_id, type)
	mod.inject_attachments_owo(variant_id, "sight", {
		{id = "owo_m16_sight_01", name = "OwO M16 Carry Sight"},
		{id = "owo_m16_sight_02", name = "OwO M16 Carry Sight (No Rear Elevation Wheel)"},
	})
	mod.inject_attachments_owo(variant_id, "sightac1", {
		{id = "owo_m16_sight_empty_01", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_01", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac2", {
		{id = "owo_m16_sight_empty_02", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_02", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac3", {
		{id = "owo_m16_sight_empty_03", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_03", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac4", {
		{id = "owo_m16_sight_empty_04", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_04", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac5", {
		{id = "owo_m16_sight_empty_05", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_05", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac6", {
		{id = "owo_m16_sight_empty_06", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_06", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac7", {
		{id = "owo_m16_sight_empty_07", name = "Empty Sight", no_randomize = true},
		{id = "owo_m16_sight_helper_07", name = "OwO M16 Carry Sight'vesa", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_m16_sight_01  = {
			model = _item_ranged.."/recievers/lasgun_rifle_elysian_receiver_01", type = "sight", 
			mesh_move = false, parent = 'receiver', hide_mesh = {{"sight", 1}}, -- hiding the stock. i stole this from MT
			automatic_equip = { sightac1 = "owo_m16_sight_helper_01", sightac2 = "owo_m16_sight_helper_02", 
				sightac3 = "owo_m16_sight_helper_03", 
				sightac4 = "owo_m16_sight_helper_04", sightac5 = "owo_m16_sight_helper_05", 
				sightac6 = "owo_m16_sight_helper_06", sightac7 = "owo_m16_sight_helper_07", 
			}
		},
		owo_m16_sight_02  = {
			model = _item_ranged.."/recievers/lasgun_rifle_elysian_receiver_02", type = "sight", 
			mesh_move = false, parent = 'receiver', hide_mesh = {{"sight", 5}},
			automatic_equip = { sightac1 = "owo_m16_sight_helper_01", sightac2 = "owo_m16_sight_helper_02", 
				sightac3 = "owo_m16_sight_helper_03", 
				sightac4 = "owo_m16_sight_helper_04", sightac5 = "owo_m16_sight_helper_05", 
				sightac6 = "owo_m16_sight_helper_06", sightac7 = "owo_m16_sight_empty_07", 
			}
		},
		-- ### Helper Parts ###
		-- Carry handle side rails
		owo_m16_sight_helper_01 = {
			model = _item_ranged.."/stocks/autogun_rifle_ak_stock_01", type = 'sightac1',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_helper_02 = {
			model = _item_ranged.."/stocks/autogun_rifle_ak_stock_01", type = 'sightac2',
			mesh_move = false, parent = 'sight'
		},
		-- Rear sight aperture
		owo_m16_sight_helper_03 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_elysian_muzzle_01", type = 'sightac3',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_helper_04 = {
			model = _item_ranged.."/handles/combat_blade_handle_04", type = 'sightac4',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_helper_05 = {
			model = _item_ranged.."/handles/combat_blade_handle_04", type = 'sightac5',
			mesh_move = false, parent = 'sight'
		},
		-- Windage Knob
		owo_m16_sight_helper_06 = {
			model = _item_melee.."/heads/human_power_maul_head_05", type = 'sightac6',
			mesh_move = false, parent = 'sight'
		},
		-- Rear Elevation Knob
		-- seems to be a newer addition on a2+
		owo_m16_sight_helper_07 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = 'sightac7',
			mesh_move = false, parent = 'sight'
		},
		-- ### Empty ###
		owo_m16_sight_empty_01 = {
			model = "", type = 'sightac1',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_empty_02 = {
			model = "", type = 'sightac2',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_empty_03 = {
			model = "", type = 'sightac3',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_empty_04 = {
			model = "", type = 'sightac4',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_empty_05 = {
			model = "", type = 'sightac5',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_empty_06 = {
			model = "", type = 'sightac6',
			mesh_move = false, parent = 'sight'
		},
		owo_m16_sight_empty_07 = {
			model = "", type = 'sightac7',
			mesh_move = false, parent = 'sight'
		},
		
	})
end

-- Sight: Holographic Sights + Magnifiers
--		EOTech HWS (Holographic Weapon Sight)
function mod.owo_holosight(variant_id, type)
	mod.inject_attachments_owo(variant_id, "sight" or type, {
		{id = "owo_holosight_01_01", name = "OwO EOTech"},
		{id = "owo_holosight_01_02", name = "OwO EOTech + Magnifier"},
		{id = "owo_holosight_01_03", name = "OwO EOTech + Magnifier (Side)"},
		{id = "owo_holosight_01_01_ps", name = "OwO EOTech (Point Shooting)"},
		{id = "owo_holosight_01_02_ps", name = "OwO EOTech + M (PS)"},
		{id = "owo_holosight_01_03_ps", name = "OwO EOTech + M/s (PS)"},
	})
	mod.inject_attachments_owo(variant_id, "sightac1" or type, {
		{id = "owo_holosight_empty_01", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_helper_01", name = "OwO EOTech'vesa sight container 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac2" or type, {
		{id = "owo_holosight_empty_02", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_helper_02", name = "OwO EOTech'vesa sight container 2", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac3" or type, {
		{id = "owo_holosight_empty_03", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_helper_03", name = "OwO EOTech'vesa base bulge", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac4" or type, {
		{id = "owo_holosight_empty_04", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_helper_04", name = "OwO EOTech'vesa base", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary" or type, {
		{id = "owo_holosight_empty2", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_sight_secondary_01", name = "OwO EOTech Magnifier Stand", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary_ac1" or type, {
		{id = "owo_holosight_empty2_01", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_sight_secondary_helper_01", name = "OwO EOTech Magnifier 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary_ac2" or type, {
		{id = "owo_holosight_empty2_02", name = "Empty Sight", no_randomize = true},
		{id = "owo_holosight_sight_secondary_helper_02", name = "OwO EOTech Magnifier 2", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		-- EOTech
		-- purposefully did not hide housing. the seating makes up the for skinny centre of the ogryn grip
		owo_holosight_01_01 = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_holosight_helper_01", sightac2 = "owo_holosight_helper_02", 
				sightac3 = "owo_holosight_helper_03", sightac4 = "owo_holosight_helper_04",
				sight_2 = "reflex_scopehelper_01",
			},
			hide_mesh = {
				{"sight", 1}
			},
		},
		owo_holosight_01_02 = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_holosight_helper_01", sightac2 = "owo_holosight_helper_02", 
				sightac3 = "owo_holosight_helper_03", sightac4 = "owo_holosight_helper_04",
				sight_secondary = "owo_holosight_sight_secondary_01", sight_secondary_ac1 = "owo_holosight_sight_secondary_helper_01", sight_secondary_ac2 = "owo_holosight_sight_secondary_helper_02",
				sight_2 = "reflex_scopehelper_01",
			},
			hide_mesh = {
				{"sight", 1}
			},
		},
		owo_holosight_01_03 = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_holosight_helper_01", sightac2 = "owo_holosight_helper_02", 
				sightac3 = "owo_holosight_helper_03", sightac4 = "owo_holosight_helper_04",
				sight_secondary = "owo_holosight_sight_secondary_01", sight_secondary_ac1 = "owo_holosight_sight_secondary_helper_01", sight_secondary_ac2 = "owo_holosight_sight_secondary_helper_02",
				sight_2 = "reflex_scopehelper_01",
			},
			hide_mesh = {
				{"sight", 1}
			},
		},
		owo_holosight_01_01_ps = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_holosight_helper_01", sightac2 = "owo_holosight_helper_02", 
				sightac3 = "owo_holosight_helper_03", sightac4 = "owo_holosight_helper_04",
			}
		},
		owo_holosight_01_02_ps = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_holosight_helper_01", sightac2 = "owo_holosight_helper_02", 
				sightac3 = "owo_holosight_helper_03", sightac4 = "owo_holosight_helper_04",
				sight_secondary = "owo_holosight_sight_secondary_01", sight_secondary_ac1 = "owo_holosight_sight_secondary_helper_01", sight_secondary_ac2 = "owo_holosight_sight_secondary_helper_02"
			}
		},
		owo_holosight_01_03_ps = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_holosight_helper_01", sightac2 = "owo_holosight_helper_02", 
				sightac3 = "owo_holosight_helper_03", sightac4 = "owo_holosight_helper_04",
				sight_secondary = "owo_holosight_sight_secondary_01", sight_secondary_ac1 = "owo_holosight_sight_secondary_helper_01", sight_secondary_ac2 = "owo_holosight_sight_secondary_helper_02"
			}
		},
		-- ### Helper Parts ###
		owo_holosight_helper_01 = {
			model = _item_melee.."/grips/chain_sword_grip_06", type = "sightac1", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_helper_02 = {
			model = _item_melee.."/grips/chain_sword_grip_06", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_helper_03 = {
			model = _item_melee.."/grips/hatchet_grip_03", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_helper_04 = {
			model = _item_ranged.."/handles/combat_blade_handle_04", type = "sightac4",
			mesh_move = false, parent = "sight"
		},
		owo_holosight_sight_secondary_01 = {
			model = _item_melee.."/grips/2h_chain_sword_grip_01", type = "sight_secondary",
			mesh_move = false, parent = "sight"
		},
		owo_holosight_sight_secondary_helper_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_elysian_muzzle_01", type = "sight_secondary_ac1",
			mesh_move = false, parent = "sight"
		},
		owo_holosight_sight_secondary_helper_02 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_elysian_muzzle_01", type = "sight_secondary_ac2",
			mesh_move = false, parent = "sight"
		},
		-- ### Empty ###
		owo_holosight_empty_01 = {
			model = "", type = "sightac1", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_empty_02 = {
			model = "", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_empty_03 = {
			model = "", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_empty_04 = {
			model = "", type = "sightac4", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_empty2 = {
			model = "", type = "sight_secondary", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_empty2_01 = {
			model = "", type = "sight_secondary_ac1", 
			mesh_move = false, parent = "sight"
		},
		owo_holosight_empty2_02 = {
			model = "", type = "sight_secondary_ac2", 
			mesh_move = false, parent = "sight"
		},
	})
end

-- Sight: Telescopic Sights
--		Trijicon ACOG (Advanced Combat Optical Gunsight), SUSAT (Small Unit Small Arms)
function mod.owo_telescopic_sight(variant_id, type)
	mod.inject_attachments_owo(variant_id, "sight" or type, {
		{id = "owo_acog_sight_01", name = "OwO ACOG"},
		{id = "owo_acog_sight_01_ps", name = "OwO ACOG (Point Shooting)"},
		{id = "owo_acog_sight_02_01", name = "OwO ACOG + RMR"},
		{id = "owo_acog_sight_02_02", name = "OwO ACOG + RMR (Top Aim)"},
		{id = "owo_acog_sight_02_ps", name = "OwO ACOG + RMR (PS)"},
		{id = "owo_susat_01", name = "OwO SUSAT"},
		{id = "owo_susat_01_ps", name = "OwO SUSAT (PS)"},
		{id = "owo_susat_02_01", name = "OwO SUSAT + Red Dot"},
		{id = "owo_susat_02_02", name = "OwO SUSAT + Red Dot (Top Aim)"},
		{id = "owo_susat_02_ps", name = "OwO SUSAT + Red Dot (PS)"},
	})
	mod.inject_attachments_owo(variant_id, "sightac1" or type, {
		{id = "owo_acog_sight_empty_01", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_01", name = "OwO ACOG'vesa sight container 1", no_randomize = true},
		{id = "owo_susat_ac1_01", name = "SUSAT'vesa cylinder thing", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac2" or type, {
		{id = "owo_acog_sight_empty_02", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_02", name = "OwO ACOG'vesa rear sight container 1", no_randomize = true},
		{id = "owo_susat_ac2_01", name = "SUSAT'vesa rear scope 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac3" or type, {
		{id = "owo_acog_sight_empty_03", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_03", name = "OwO ACOG'vesa rear sight container 2", no_randomize = true},
		{id = "owo_susat_ac3_01", name = "SUSAT'vesa rear scope 2", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac4" or type, {
		{id = "owo_acog_sight_empty_04", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_04", name = "OwO ACOG'vesa Base", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac5" or type, {
		{id = "owo_acog_sight_empty_05", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_05", name = "OwO ACOG'vesa Knob", no_randomize = true},
		{id = "owo_susat_ac5_01", name = "SUSAT'vesa reticle 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac6" or type, {
		{id = "owo_acog_sight_empty_06", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_06", name = "OwO ACOG'vesa Knob", no_randomize = true},
		{id = "owo_susat_ac6_01", name = "SUSAT'vesa reticle 2", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac7" or type, {
		{id = "owo_acog_sight_empty_07", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_helper_07", name = "OwO ACOG'vesa Cable", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary" or type, {
		{id = "owo_acog_sight_empty2", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_sight_secondary_01", name = "OwO ACOG RMR", no_randomize = true},
	})
	--[[mod.inject_attachments_owo(variant_id, "sight_secondary_ac1" or type, {
		{id = "owo_acog_sight_empty", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_sight_secondary_helper_01", name = "OwO ACOG Magnifier 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary_ac2" or type, {
		{id = "owo_acog_sight_empty", name = "Empty Sight", no_randomize = true},
		{id = "owo_acog_sight_sight_secondary_helper_02", name = "OwO ACOG Magnifier 2", no_randomize = true},
	})]]

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_acog_sight_01 = {
			model = _item_ranged.."/sights/reflex_sight_01", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_helper_01", sightac2 = "owo_acog_sight_helper_02", 
				sightac3 = "owo_acog_sight_helper_03", sightac4 = "owo_acog_sight_helper_04",
				sightac5 = "owo_acog_sight_helper_05", sightac6 = "owo_acog_sight_helper_06",
				sightac7 = "owo_acog_sight_helper_07",
			},
			hide_mesh = {
				{"sight", 6,7}, -- Hides the housing
			},
		},
		owo_acog_sight_01_ps = {
			model = _item_ranged.."/sights/reflex_sight_01", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_helper_01", sightac2 = "owo_acog_sight_helper_02", 
				sightac3 = "owo_acog_sight_helper_03", sightac4 = "owo_acog_sight_helper_04",
				sightac5 = "owo_acog_sight_helper_05", sightac6 = "owo_acog_sight_helper_06",
				sightac7 = "owo_acog_sight_helper_07",
			},
			hide_mesh = {
				{"sight", 1}, -- Hides the reticle
			},
		},
		owo_acog_sight_02_01 = {
			model = _item_ranged.."/sights/reflex_sight_01", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_helper_01", sightac2 = "owo_acog_sight_helper_02", 
				sightac3 = "owo_acog_sight_helper_03", sightac4 = "owo_acog_sight_helper_04",
				sightac5 = "owo_acog_sight_helper_05", sightac6 = "owo_acog_sight_helper_06",
				sightac7 = "owo_acog_sight_helper_07",
				sight_secondary = "owo_acog_sight_sight_secondary_01",
			},
			hide_mesh = {
				{"sight", 6,7}, -- Hides the housing
			},
		},
		owo_acog_sight_02_02 = {
			model = _item_ranged.."/sights/reflex_sight_01", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_helper_01", sightac2 = "owo_acog_sight_helper_02", 
				sightac3 = "owo_acog_sight_helper_03", sightac4 = "owo_acog_sight_helper_04",
				sightac5 = "owo_acog_sight_helper_05", sightac6 = "owo_acog_sight_helper_06",
				sightac7 = "owo_acog_sight_helper_07",
				sight_secondary = "owo_acog_sight_sight_secondary_01", -- sight_secondary_ac1 = "owo_acog_sight_sight_secondary_helper_01", sight_secondary_ac2 = "owo_acog_sight_sight_secondary_helper_02"
			},
			hide_mesh = {
				{"sight", 1}, -- hides just the reticle
			},
		},
		owo_acog_sight_02_ps = {
			model = _item_ranged.."/sights/reflex_sight_01", type = "sight", 
			mesh_move = false, parent = "",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_helper_01", sightac2 = "owo_acog_sight_helper_02", 
				sightac3 = "owo_acog_sight_helper_03", sightac4 = "owo_acog_sight_helper_04",
				sightac5 = "owo_acog_sight_helper_05", sightac6 = "owo_acog_sight_helper_06",
				sightac7 = "owo_acog_sight_helper_07",
				sight_secondary = "owo_acog_sight_sight_secondary_01", -- sight_secondary_ac1 = "owo_acog_sight_sight_secondary_helper_01", sight_secondary_ac2 = "owo_acog_sight_sight_secondary_helper_02"
			},
			hide_mesh = {
				{"sight", 1}, -- hides just the reticle
			},
		},
		-- SUSAT
		owo_susat_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_empty", sightac2 = "owo_susat_ac2_01", 
				sightac3 = "owo_susat_ac3_01", sightac4 = "owo_acog_sight_helper_04", 
				sightac5 = "owo_susat_ac5_01", sightac6 = "owo_susat_ac6_01", 
				--lens = "scope_lens_02", lens_2 = "scope_lens_2_02",
			},
		},
		owo_susat_01_ps = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_susat_ac1_01", sightac2 = "owo_susat_ac2_01", 
				sightac3 = "owo_susat_ac3_01", sightac4 = "owo_acog_sight_helper_04", 
				sightac5 = "owo_susat_ac5_01", sightac6 = "owo_susat_ac6_01", 
			},
		},
		owo_susat_02_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_acog_sight_empty", sightac2 = "owo_susat_ac2_01", 
				sightac3 = "owo_susat_ac3_01", sightac4 = "owo_acog_sight_helper_04", 
				sightac5 = "owo_susat_ac5_01", sightac6 = "owo_susat_ac6_01", 
				sight_secondary = "owo_acog_sight_sight_secondary_01",
			},
		},
		owo_susat_02_02 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_susat_ac1_01", sightac2 = "owo_susat_ac2_01", 
				sightac3 = "owo_susat_ac3_01", sightac4 = "owo_acog_sight_helper_04", 
				sightac5 = "owo_susat_ac5_01", sightac6 = "owo_susat_ac6_01", 
				sight_secondary = "owo_acog_sight_sight_secondary_01",
			},
		},
		owo_susat_02_ps = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_susat_ac1_01", sightac2 = "owo_susat_ac2_01", 
				sightac3 = "owo_susat_ac3_01", sightac4 = "owo_acog_sight_helper_04", 
				sightac5 = "owo_susat_ac5_01", sightac6 = "owo_susat_ac6_01", 
				sight_secondary = "owo_acog_sight_sight_secondary_01",
			},
		},
		-- ### Helper Parts ###
		-- AC1
		-- 	ACOG: Front of scope
		owo_acog_sight_helper_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_elysian_muzzle_01", type = "sightac1", 
			mesh_move = false, parent = "sight"
		},
		-- 	SUSAT: cylinder thing
		owo_susat_ac1_01 = {
			model = _item_melee.."/pommels/axe_pommel_03", type = "sightac1", 
			mesh_move = false, parent = "sight"
		},
		-- AC2, 3
		-- 	ACOG: Rear of scope
		owo_acog_sight_helper_02 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_helper_03 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		--	SUSAT: Rear of scope
		owo_susat_ac2_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_05", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_susat_ac3_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_05", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		-- AC4
		-- 	Base
		owo_acog_sight_helper_04 = {
			model = _item_melee.."/grips/hatchet_grip_04", type = "sightac4",
			mesh_move = false, parent = "sight"
		},
		-- AC5, 6
		-- 	ACOG: Knobs
		owo_acog_sight_helper_05 = {
			model = _item_melee.."/pommels/shovel_pommel_01", type = "sightac5",
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_helper_06 = {
			model = _item_melee.."/pommels/shovel_pommel_01", type = "sightac6",
			mesh_move = false, parent = "sight"
		},
		-- SUSAT: Reticle
		owo_susat_ac5_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "sightac5", 
			mesh_move = false, parent = "sight"
		},
		owo_susat_ac6_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "sightac6", 
			mesh_move = false, parent = "sight"
		},
		-- Cable
		owo_acog_sight_helper_07 = {
			model = _item_melee.."/full/force_staff_full_01", type = "sightac7",
			mesh_move = false, parent = "sight"
		},
		-- RMR on top
		owo_acog_sight_sight_secondary_01 = {
			model = _item_ranged.."/sights/reflex_sight_02", type = "sight_secondary",
			mesh_move = false, parent = "sight"
		},
		-- ### Empty ###
		owo_acog_sight_empty_01 = {
			model = "", type = "sightac1", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty_02 = {
			model = "", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty_03 = {
			model = "", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty_04 = {
			model = "", type = "sightac4", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty_05 = {
			model = "", type = "sightac5", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty_06 = {
			model = "", type = "sightac6", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty_07 = {
			model = "", type = "sightac7", 
			mesh_move = false, parent = "sight"
		},
		owo_acog_sight_empty2 = {
			model = "", type = "sight_secondary", 
			mesh_move = false, parent = "sight"
		},
	})
end

-- Sight: Soviet PU scope
--		Sight rings are too mf fat
function mod.owo_pu_scope(variant_id, type)
	mod.inject_attachments_owo(variant_id, "sight" or type, {
		{id = "owo_pu_scope_01", name = "OwO Soviet PU Scope, Riser 1"},
		{id = "owo_pu_scope_02", name = "OwO Soviet PU Scope, Riser 1b"},
	})
	mod.inject_attachments_owo(variant_id, "sightac1" or type, {
		{id = "owo_pu_scope_empty_01", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_helper_01", name = "PU Scope'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac2" or type, {
		{id = "owo_pu_scope_empty_02", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_helper_02", name = "PU Scope'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac3" or type, {
		{id = "owo_pu_scope_empty_03", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_helper_03", name = "PU Scope'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac4" or type, {
		{id = "owo_pu_scope_empty_04", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_helper_04", name = "PU Scope'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac5" or type, {
		{id = "owo_pu_scope_empty_05", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_helper_05", name = "PU Scope'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sightac6" or type, {
		{id = "owo_pu_scope_empty_06", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_helper_06", name = "PU Scope'vesa", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary" or type, {
		{id = "owo_pu_scope_empty2", name = "Empty Scope", no_randomize = true},
		{id = "owo_pu_scope_riser_01", name = "PU Scope Riser", no_randomize = true},
	})
	--[[mod.inject_attachments_owo(variant_id, "sight_secondary_ac1" or type, {
		{id = "owo_pu_scope_empty", name = "Empty Scope"},
		{id = "owo_pu_scope2_helper_01", name = "PU Scope Riser'vesa"},
	})
	mod.inject_attachments_owo(variant_id, "sight_secondary_ac2" or type, {
		{id = "owo_pu_scope_empty", name = "Empty Scope"},
		{id = "owo_pu_scope2_helper_02", name = "PU Scope Riser'vesa"},
	})]]

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_pu_scope_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_pu_scope_helper_01", sightac2 = "owo_pu_scope_helper_02",
				sightac3 = "owo_pu_scope_helper_03", sightac4 = "owo_pu_scope_helper_04",
				sightac5 = "owo_pu_scope_helper_05", sightac6 = "owo_pu_scope_helper_06",
				sight_secondary = "owo_pu_scope_riser_01"
			}
		},
		owo_pu_scope_02 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sight", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { lens = "scope_lens_default", lens_2 = "scope_lens_default",
				sightac1 = "owo_pu_scope_helper_01", sightac2 = "owo_pu_scope_helper_02",
				sightac3 = "owo_pu_scope_helper_03", sightac4 = "owo_pu_scope_helper_04",
				sightac5 = "owo_pu_scope_helper_05", sightac6 = "owo_pu_scope_helper_06",
				sight_secondary = "owo_pu_scope_riser_01"
			}
		},
		-- ### Helper Parts ###
		owo_pu_scope_helper_01 = {
			model = _item_ranged.."/muzzles/lasgun_rifle_krieg_muzzle_02", type = "sightac1", 
			mesh_move = false, parent = "receiver"
		},
		-- Crosshair
		owo_pu_scope_helper_02 = {
			model = _item_ranged.."/handles/combat_blade_handle_04", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_helper_03 = {
			model = _item_ranged.."/handles/combat_blade_handle_04", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_helper_04 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "sightac4", 
			mesh_move = false, parent = "sight"
		},
		-- Knobs
		owo_pu_scope_helper_05 = {
			model = _item_melee.."/pommels/shovel_pommel_01", type = "sightac5", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_helper_06 = {
			model = _item_melee.."/pommels/shovel_pommel_01", type = "sightac6", 
			mesh_move = false, parent = "sight"
		},
		-- Riser
		owo_pu_scope_riser_01 = {
			model = _item_melee.."/grips/falchion_grip_03", type = "sight_secondary", 
			mesh_move = false, parent = "receiver",
			--automatic_equip = { sight_secondary_ac1 = "owo_pu_scope2_helper_01", sight_secondary_ac2 = "owo_pu_scope2_helper_02",}
		},
		--[[ Too thick
		owo_pu_scope2_helper_01 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "sight_secondary_ac1", 
			mesh_move = false, parent = "sight",
		},
		owo_pu_scope2_helper_02 = {
			model = _item_ranged.."/muzzles/autogun_rifle_ak_muzzle_03", type = "sight_secondary_ac2", 
			mesh_move = false, parent = "sight",
		},]]
		-- ### Empty ###
		owo_pu_scope_empty_01 = {
			model = "", type = "sightac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_pu_scope_empty_02 = {
			model = "", type = "sightac2", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_empty_03 = {
			model = "", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_empty_03 = {
			model = "", type = "sightac3", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_empty_04 = {
			model = "", type = "sightac4", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_empty_05 = {
			model = "", type = "sightac5", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_empty_06 = {
			model = "", type = "sightac6", 
			mesh_move = false, parent = "sight"
		},
		owo_pu_scope_empty2 = {
			model = "", type = "sight_secondary", 
			mesh_move = false, parent = "sight"
		},
	})
	
end

-- Sight_2: Reticle only
-- fuck it. i'll just use the ones mt already added and hide the mesh in the weapon classes
--[[function mod.owo_reticle_helper(variant_id)

	-- Adding to existing table, where empty sight is already included
	mod.inject_attachments_owo(variant_id, "sight_2", {
		-- {id = "owo_reticle_helper_empty", name = "Empty sight_2"},
		{id = "owo_reticle_helper_01", name = "Reticle 1 (·)"},
		{id = "owo_reticle_helper_02", name = "Reticle 2 [·]"},
		{id = "owo_reticle_helper_03", name = "Reticle 3 [+]"},
	})

	mod.inject_models(variant_id, {
		--owo_reticle_helper_empty = {
		--	model = "", type = "sight_2", 
		--	parent = "sight"
		--},
		owo_reticle_helper_01 = {
			model = _item_ranged.."/sights/reflex_sight_01", type = "sight_2", 
			parent = "sight", hide_mesh = {{"sight_2", 6}}, -- for some reason this is diff
		},
		owo_reticle_helper_02 = {
			model = _item_ranged.."/sights/reflex_sight_02", type = "sight_2", 
			parent = "sight", hide_mesh = {{"sight_2", 5}}, 
		},
		owo_reticle_helper_03 = {
			model = _item_ranged.."/sights/reflex_sight_03", type = "sight_2", 
			parent = "sight", hide_mesh = {{"sight_2", 5}},
		},
	})
end
]]

-- Magazine: Flat
--		Lasgun and Autogun mags
--		All done with scaling in the weapon classes
function mod.owo_magazine_flat(variant_id, type)
	mod.inject_attachments_owo(variant_id, "magazine" or type, {
		{id = "owo_lasgun_magazine_flat_01", name = "OwO Flat Mag (Las) 1"},
		{id = "owo_autogun_magazine_flat_03", name = "OwO Flat Mag (Autogun) 3"},
	})

	mod.inject_models(variant_id, {
		owo_lasgun_magazine_flat_01 = {
			model = _item_ranged.."/magazines/lasgun_rifle_magazine_01", type = "magazine", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0)
		},
		owo_autogun_magazine_flat_03 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_03", type = "magazine", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0)
		},
	})
end

-- Magazine: Rear Lasgun 
--		For Straight Grip and Recon Stock
-- 		I stole this from Syn
function mod.owo_lasgun_magazine_rear(variant_id, type)
	mod.inject_attachments_owo(variant_id, "magazine" or type, {
		{id = "owo_lasgun_magazine_rear_01", name = "OwO Rear Mag 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "rearmag", {
		{id = "owo_lasgun_magazine_rear_child_empty", name = "Empty Rearmag", no_randomize = true},
		{id = "owo_lasgun_magazine_rear_child_01", name = "OwO RearMagChild 1", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_lasgun_magazine_rear_01 = {
			model = _item_ranged.."/magazines/lasgun_pistol_magazine_01", type = "magazine", parent = "receiver", 
			move = vector3_box(0, 0, 0), remove = vector3_box(0, -.2, 0),
			automatic_equip = {
				rearmag= "owo_lasgun_magazine_rear_child_01"
			}
		},
		-- ### Helper Parts ###
		owo_lasgun_magazine_rear_child_01 = {
			model = _item_ranged.."/magazines/lasgun_rifle_magazine_01", type = "rearmag", mesh_move = false, parent = 'receiver'
		},
		-- ### Empty ###
		owo_lasgun_magazine_rear_child_empty = {
			model = "", type = "rearmag", mesh_move = false, parent = 'receiver'
		},
	})
end

-- Magazine: Jungle Mags
--		Autoguns
function mod.owo_jungle_mag(variant_id, type)
	mod.inject_attachments_owo(variant_id, "magazine" or type, {
		{id = "owo_jungle_mag_01", name = "OwO Jungle Mag 1 v^"},
		{id = "owo_jungle_mag_02", name = "OwO Jungle Mag 2 v^"},
		{id = "owo_jungle_mag_03", name = "OwO Jungle Mag 3 v^"},
		{id = "owo_jungle_mag_04", name = "OwO Jungle Mag 4 v^"},
		{id = "owo_jungle_mag_01_flip", name = "OwO Jungle Mag 1 ^v"},
		{id = "owo_jungle_mag_02_flip", name = "OwO Jungle Mag 2 ^v"},
		{id = "owo_jungle_mag_03_flip", name = "OwO Jungle Mag 3 ^v"},
		{id = "owo_jungle_mag_04_flip", name = "OwO Jungle Mag 4 ^v"},
		{id = "owo_jungle_mag_01_up", name = "OwO Jungle Mag 1 ^^ (L)"},
		{id = "owo_jungle_mag_02_up", name = "OwO Jungle Mag 2 ^^ (L)"},
		{id = "owo_jungle_mag_03_up", name = "OwO Jungle Mag 3 ^^ (L)"},
		{id = "owo_jungle_mag_04_up", name = "OwO Jungle Mag 4 ^^ (L)"},
		{id = "owo_jungle_mag_01_up_flip", name = "OwO Jungle Mag 1 ^^ (R)"},
		{id = "owo_jungle_mag_02_up_flip", name = "OwO Jungle Mag 2 ^^ (R)"},
		{id = "owo_jungle_mag_03_up_flip", name = "OwO Jungle Mag 3 ^^ (R)"},
		{id = "owo_jungle_mag_04_up_flip", name = "OwO Jungle Mag 4 ^^ (R)"},
	})
	mod.inject_attachments_owo(variant_id, "owo_magac1" or type, {
		{id = "owo_jungle_mag_empty_01", name = "OwO Jungle Mag Empty", no_randomize = true},
		{id = "owo_jungle_mag_helper_01", name = "OwO Jungle Mag'vesa 1", no_randomize = true},
		{id = "owo_jungle_mag_helper_02", name = "OwO Jungle Mag'vesa 2", no_randomize = true},
		{id = "owo_jungle_mag_helper_03", name = "OwO Jungle Mag'vesa 3", no_randomize = true},
		{id = "owo_jungle_mag_helper_04", name = "OwO Jungle Mag'vesa 4", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "owo_magac2" or type, {
		{id = "owo_jungle_mag_empty_02", name = "OwO Jungle Mag Empty", no_randomize = true},
		{id = "owo_jungle_mag_connector_f_01", name = "OwO Jungle Connector f 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "owo_magac3" or type, {
		{id = "owo_jungle_mag_empty_03", name = "OwO Jungle Mag Empty", no_randomize = true},
		{id = "owo_jungle_mag_connector_b_01", name = "OwO Jungle Connector b 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "owo_magac4" or type, {
		{id = "owo_jungle_mag_empty_04", name = "OwO Jungle Mag Empty", no_randomize = true},
		{id = "owo_jungle_mag_connector_l_01", name = "OwO Jungle Connector l 1", no_randomize = true},
	})
	mod.inject_attachments_owo(variant_id, "owo_magac5" or type, {
		{id = "owo_jungle_mag_empty_05", name = "OwO Jungle Mag Empty", no_randomize = true},
		{id = "owo_jungle_mag_connector_r_01", name = "OwO Jungle Connector r 1", no_randomize = true},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		-- Main magazine, v^ second mag on the left
		owo_jungle_mag_01 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_01", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			},
		},
		owo_jungle_mag_02 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_02", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_02", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_03 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_03", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_03", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_04 = {
			model = _item_ranged.."/magazines/autogun_rifle_ak_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_04", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		-- mirrored mags, ^v second mag on the right
		owo_jungle_mag_01_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_01", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_02_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_02", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_02", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_03_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_03", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_03", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_04_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_ak_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_04", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		-- ^^ second mag on the right
		owo_jungle_mag_01_up = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_01", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			},
		},
		owo_jungle_mag_02_up = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_02", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_02", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_03_up = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_03", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_03", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_04_up = {
			model = _item_ranged.."/magazines/autogun_rifle_ak_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_04", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		-- mirrored mags, ^^ second mag on the right
		owo_jungle_mag_01_up_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_01", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_02_up_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_02", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_02", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_03_up_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_03", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_03", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		owo_jungle_mag_04_up_flip = {
			model = _item_ranged.."/magazines/autogun_rifle_ak_magazine_01", type = "magazine", 
			mesh_move = false, parent = "receiver",
			automatic_equip = { owo_magac1 = "owo_jungle_mag_helper_04", owo_magac2 = "owo_jungle_mag_connector_f_01", 
				owo_magac3 = "owo_jungle_mag_connector_b_01", owo_magac4 = "owo_jungle_mag_connector_l_01", owo_magac5 = "owo_jungle_mag_connector_r_01",
			}
		},
		-- ### Helper Parts ###
		-- Backup magazine
		owo_jungle_mag_helper_01 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_01", type = "owo_magac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_helper_02 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_02", type = "owo_magac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_helper_03 = {
			model = _item_ranged.."/magazines/autogun_rifle_magazine_03", type = "owo_magac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_helper_04 = {
			model = _item_ranged.."/magazines/autogun_rifle_ak_magazine_01", type = "owo_magac1", 
			mesh_move = false, parent = "receiver"
		},
		-- "tape"
		owo_jungle_mag_connector_f_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "owo_magac2", 
			mesh_move = false, parent = "magazine"
		},
		owo_jungle_mag_connector_b_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "owo_magac3", 
			mesh_move = false, parent = "magazine"
		},
		owo_jungle_mag_connector_l_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "owo_magac4", 
			mesh_move = false, parent = "magazine"
		},
		owo_jungle_mag_connector_r_01 = {
			model = _item_melee.."/blades/combat_knife_blade_03", type = "owo_magac5", 
			mesh_move = false, parent = "magazine"
		},
		-- ### Empty ### 
		owo_jungle_mag_empty_01 = {
			model = "", type = "owo_magac1", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_empty_02 = {
			model = "", type = "owo_magac2", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_empty_03 = {
			model = "", type = "owo_magac3", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_empty_04 = {
			model = "", type = "owo_magac4", 
			mesh_move = false, parent = "receiver"
		},
		owo_jungle_mag_empty_05 = {
			model = "", type = "owo_magac5", 
			mesh_move = false, parent = "receiver"
		},
	})
end





--[[
TEMPLATES
mod.wc.add_custom_attachments.KUMQUAT = "KUMQUATs"
mod.wc.KUMQUATs = {
	""
}

function mod.owo_<NAME>(variant_id, type)
	mod.inject_attachments_owo(variant_id, "" or type, {
		{id = "owo_", name = "OwO "},
	})

	mod.inject_models(variant_id, {
		-- ### Base Parts ###
		owo_ = {
			model = _item_ranged.."", type = "", 
			mesh_move = false, parent = "",
			automatic_equip = {
				 = "",
			},
		},
		-- ### Helper Parts ###
		owo_ = {
			model = , type = "", 
			mesh_move = false, parent = "",
		},
		-- ### Empty ###
		owo_ _empty = {
			model = "", type = "", 
			mesh_move = false, parent = ""
		},
	})
end

mod.inject_fixes(this_variant, {
    {   dependencies = {"owo_",
        },
        grip = {offset = true, position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1)},
    },
})
]]