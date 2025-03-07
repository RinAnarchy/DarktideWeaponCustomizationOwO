local mod = get_mod("weapon_customization_owo")

 -- Locals from Weapon Customization plugin template
local vector3_box = Vector3Box
local _item = "content/items/weapons/player"
local _item_ranged = _item.."/ranged"
local _item_melee = _item.."/melee"
local _item_minion = "content/items/weapons/minions"

local this_variant = "stubrevolver_p1_m1" -- Quickdraw Stub Revolver

-- ############################################
-- Add Custom Attachments
-- Makes new tables for attachment anchors
-- ############################################
mod.wc.attachment[this_variant].muzzle_2 = {} -- MT and Syn didn't add this to revolver yet
mod.wc.attachment[this_variant].barrelshroud = {} -- MT and Syn didn't add this to revolver yet

mod.wc.attachment[this_variant].sightac1 = {}
--[[ Covered by MT Plugin 
mod.wc.attachment[this_variant].sightac2 = {}
mod.wc.attachment[this_variant].sightac3 = {}
mod.wc.attachment[this_variant].sightac4 = {}
]]
mod.wc.attachment[this_variant].sightac5 = {}
mod.wc.attachment[this_variant].sightac6 = {}
mod.wc.attachment[this_variant].sightac7 = {}
mod.wc.attachment[this_variant].sight_secondary = {}
mod.wc.attachment[this_variant].sight_secondary_ac1 = {}
mod.wc.attachment[this_variant].sight_secondary_ac2 = {}

-- ############################################
-- Injection Calls: attachments and models
-- from ranged.lua and melee.lua
-- ############################################
mod.owo_revolver_shotgun_barrel(this_variant, "barrel")
mod.owo_grip_laser(this_variant, "flashlight")
mod.owo_suppressor(this_variant, "muzzle")

mod.owo_alt_viewmodel(this_variant)

mod.owo_holosight(this_variant, "sight")
mod.owo_telescopic_sight(this_variant, "sight")

-- ############################################
-- Inject Fixes
-- ############################################
local _alternative_viewmodels_sight_2s = "owo_alt_viewmodel_01|owo_alt_viewmodel_02|owo_alt_viewmodel_03|owo_alt_viewmodel_04|owo_alt_viewmodel_05|owo_alt_viewmodel_06"
local _owo_all_holographic_sights = "owo_holosight_01_01|owo_holosight_01_02_z1|owo_holosight_01_02_z2|owo_holosight_01_03|owo_holosight_01_01ss|owo_holosight_01_02ss|owo_holosight_01_03ss"
local _owo_no_magnifier_holographic_sights = "owo_holosight_01_01|owo_holosight_01_01ss"
local _owo_magnifier_holographic_sights = "owo_holosight_01_02_z1|owo_holosight_01_02_z2|owo_holosight_01_03|owo_holosight_01_02ss|owo_holosight_01_03ss"
local _owo_magnifier_aligned_holographic_sights = "owo_holosight_01_02_z1|owo_holosight_01_02_z2|owo_holosight_01_02ss"
local _owo_magnifier_side_holographic_sights = "owo_holosight_01_03|owo_holosight_01_03ss"

mod.mt.inject_fixes(this_variant, {
    -- ######
	-- Sight_2: Alt Viewmodels
	-- ######
    --  Doom
    {   dependencies = { "owo_alt_viewmodel_01" },
        scope_offset =         { position = vector3_box(0, 0.2, -0.25), rotation = vector3_box(7, 0, 0), lense_transparency = false },
        no_scope_offset =      { position = vector3_box(0, 0.2, -0.25), rotation = vector3_box(7, 0, 0), lense_transparency = false,  },
    },
    {   dependencies = { "owo_alt_viewmodel_02" },
        scope_offset =         { position = vector3_box(0, -0.2, -0.05), rotation = vector3_box(2, 0, 0), lense_transparency = false, },
        no_scope_offset =      { position = vector3_box(0, -0.2, -0.05), rotation = vector3_box(2, 0, 0), lense_transparency = false, },
    },
    {   dependencies = { "owo_alt_viewmodel_03" },
        scope_offset =         { position = vector3_box(0, -0.2, -0.15), rotation = vector3_box(7, 0, 0), lense_transparency = false, },
        no_scope_offset =      { position = vector3_box(0, -0.2, -0.15), rotation = vector3_box(7, 0, 0), lense_transparency = false, },
    },
    -- CS:S
    {   dependencies = { "owo_alt_viewmodel_04" },
        scope_offset =         { position = vector3_box(0.45, 0.35, -0.15), rotation = vector3_box(0, 0, 0), lense_transparency = false, },
        no_scope_offset =      { position = vector3_box(0.45, 0.35, -0.15), rotation = vector3_box(0, 0, 0), lense_transparency = false, },
    },
    -- Hipfire
    {   dependencies = { "owo_alt_viewmodel_05" },
        scope_offset =         { position = vector3_box(0.25, 0.35, -0.15), rotation = vector3_box(0, 0, 0), lense_transparency = false, },
        no_scope_offset =      { position = vector3_box(0.25, 0.35, -0.15), rotation = vector3_box(0, 0, 0), lense_transparency = false, },
    },

    -- ######
    -- Sight: Holographic Sights + Magnifier
    -- ######
    --  -------------------------------------------
    --  EOTech
    --  -------------------------------------------
    --  Sight Helpers
    {   dependencies = { _owo_all_holographic_sights },
        rail =           { offset = false, parent = "barrel", parent_node = 9, position  = vector3_box(0, 0.02, 0.018), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 0.85, 0.8), automatic_equip = { rail = "rail_01"}, },

        sightac3 =       { offset = true, position  = vector3_box(0, 0.088, 0.01), rotation = vector3_box(180, 90, -90), scale = vector3_box(1.1, 0.57, 0.154),},
        sightac4 =       { offset = true, position  = vector3_box(0, 0.034, 0.008), rotation = vector3_box(90, 0, -180), scale = vector3_box(0.42, 0.24, 0.314),},
    },
    {   dependencies = { "owo_holosight_01_01|owo_holosight_01_02_z1|owo_holosight_01_02_z2|owo_holosight_01_03" },
        sightac1 =       { offset = true, position  = vector3_box(0.00, 0.018, 0.0), rotation = vector3_box(180, 90, -90), scale = vector3_box(1.25, 0.56, 0.286),},
        sightac2 =       { offset = true, position  = vector3_box(0.00, 0.018, 0.0), rotation = vector3_box(90, -90, 0), scale = vector3_box(1.25, 0.56, 0.286),},
    },
    --      Short Variant
    {   dependencies = { "owo_holosight_01_01ss|owo_holosight_01_02ss|owo_holosight_01_03ss" },
        sightac1 =       { offset = true, position  = vector3_box(0.00, 0.018, 0.018), rotation = vector3_box(180, 90, -90), scale = vector3_box(1.25, 0.366, 0.256),},
        sightac2 =       { offset = true, position  = vector3_box(0.00, 0.018, 0.018), rotation = vector3_box(90, -90, 0), scale = vector3_box(1.25, 0.366, 0.256),},
    },
    --  Main Sight body
    --      Patch to hide alt viewmodel sights. Copies position of case below because its children are lenses
    {   dependencies = { _owo_no_magnifier_holographic_sights,
            _alternative_viewmodels_sight_2s,
        },
        sight_2 =           { parent = "sight", position  = vector3_box(0, -0.02, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 0.769), hide_mesh = {{"sight_2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}} },
    },
    {   dependencies = { _owo_no_magnifier_holographic_sights },
        sight =             { offset = false, parent = "barrel", parent_node = 9, position  = vector3_box(0, 0, 0.021), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1.3),},
        sight_2 =           { parent = "sight", position  = vector3_box(0, -0.02, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 0.769), hide_mesh = {{"sight_2", 5,6}} },
    },
    --      Holo + Magnifier puts the holo a bit more forwards
    --          Patch to hide alt viewmodel sights. Copies position of case below because its children are lenses
    {   dependencies = { _owo_magnifier_holographic_sights,
            _alternative_viewmodels_sight_2s,
        },
        sight_2 =           { parent = "sight", position  = vector3_box(0, -0.02, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 0.769), hide_mesh = {{"sight_2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}} },
    },
    {   dependencies = { _owo_magnifier_holographic_sights },
        sight =             { offset = false, parent = "barrel", parent_node = 9, position  = vector3_box(0, 0.13, 0.021), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1.3),},
        sight_2 =           { parent = "sight", position  = vector3_box(0, -0.02, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 0.769), hide_mesh = {{"sight_2", 5,6}} },
    
        sight_secondary =         { offset = true, position  = vector3_box(0, -0.042, 0.0), rotation = vector3_box(180, 90, -90), scale = vector3_box(0.95, 0.184, 0.104),},
    },
    --  Magnifier
    --      Aligned
    {   dependencies = { _owo_magnifier_aligned_holographic_sights },
        sight_secondary_ac1 =      { offset = true, position  = vector3_box(0, -0.154, 0.034), rotation = vector3_box(0, 0, 0), scale = vector3_box(0.89, 1, 0.61),},
        sight_secondary_ac2 =      { offset = true, position  = vector3_box(0, -0.0162, 0.034), rotation = vector3_box(180, 0, 0), scale = vector3_box(0.89, 1, 0.61),},
    
        lens =              { offset = false, parent = "sight", position = vector3_box(0, -0.048, 0.034), rotation = vector3_box(0, 0, 0), scale = vector3_box(0.65, 0.155, 0.45), 
            data = {lens = 1},},
	    lens_2 =            { offset = false, parent = "sight", position = vector3_box(0, -0.12, 0.034), rotation = vector3_box(0, 0, 180), scale = vector3_box(0.65, 0.155, 0.45), 
            data = {lens = 2},},
    },
    --      Side
    {   dependencies = { _owo_magnifier_side_holographic_sights },
        sight_secondary_ac1 =      { offset = true, position  = vector3_box(0.042, -0.154, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(0.89, 1, 0.61),},
        sight_secondary_ac2 =      { offset = true, position  = vector3_box(0.042, -0.0162, 0.01), rotation = vector3_box(180, 0, 0), scale = vector3_box(0.89, 1, 0.61),},
    
        lens =              { offset = false, parent = "sight", position = vector3_box(0.042, -0.048, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(0.65, 0.155, 0.52), 
            data = {lens = 1},},
	    lens_2 =            { offset = false, parent = "sight", position = vector3_box(0.042, -0.12, 0.01), rotation = vector3_box(0, 0, 180), scale = vector3_box(0.65, 0.155, 0.52), 
            data = {lens = 2},},
    },
    --  -------------------------------------------
    --  Aligning sights to crosshair
    --  -------------------------------------------
    {   dependencies = { _owo_no_magnifier_holographic_sights },
        scope_offset =      { position = vector3_box(0, -0.0, -0.0463), rotation = vector3_box(0, 0, 0), lense_transparency = true },
    },
    {   dependencies = { _owo_magnifier_aligned_holographic_sights },
        scope_offset =      { position = vector3_box(0, -0.0, -0.046), rotation = vector3_box(0, 0, 0), lense_transparency = true },
    },
    {   dependencies = { _owo_magnifier_side_holographic_sights },
        scope_offset =      { position = vector3_box(0, -0.0, -0.046), rotation = vector3_box(0, 0, 0), lense_transparency = false },
    },

    -- ######
    -- Sight: Telescopic Sights
    -- ######
    --  -------------------------------------------
    --  Trijicon ACOG
    --  -------------------------------------------
    --  ACOG only
    --      Main sight and reticle
    --          Patch to hide alt viewmodel sights. Copies position of case below because its children are lenses
    {   dependencies = { "owo_acog_sight_01f|owo_acog_sight_01f_z1|owo_acog_sight_02f|owo_acog_sight_02f_z1|owo_acog_sight_02f_top",
        _alternative_viewmodels_sight_2s,
        },
        sight_2 =           { parent = "sight", position  = vector3_box(0, -0.02, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 0.769), hide_mesh = {{"sight_2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}} },
    },
    {   dependencies = { "owo_acog_sight_01f|owo_acog_sight_01f_z1|owo_acog_sight_02f|owo_acog_sight_02f_z1|owo_acog_sight_02f_top" },
        sight =             { offset = false, parent = "barrel", parent_node = 9, position  = vector3_box(0, 0.074, 0.038), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),},
        sight_2 =           { offset = true, position  = vector3_box(0, -0.046, 0.13), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1) },
    },
    --      Main sight and reticle (backwards)
    --          Patch to hide alt viewmodel sights. Copies position of case below because its children are lenses
    {   dependencies = { "owo_acog_sight_01|owo_acog_sight_01_z1|owo_acog_sight_02|owo_acog_sight_02_z1|owo_acog_sight_02_top",
            _alternative_viewmodels_sight_2s,
        },
        sight_2 =           { parent = "sight", position  = vector3_box(0, -0.02, 0.01), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 0.769), hide_mesh = {{"sight_2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}} },
    },
    {   dependencies = { "owo_acog_sight_01|owo_acog_sight_01_z1|owo_acog_sight_02|owo_acog_sight_02_z1|owo_acog_sight_02_top" },
        sight =             { offset = false, parent = "barrel", parent_node = 9, position  = vector3_box(0, 0.074, 0.038), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),},
        sight_2 =           { offset = true, position  = vector3_box(0, -0.046, 0.13), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1) },
    },
    --      Sight Helpers
    {   dependencies = { "owo_acog_sight_01|owo_acog_sight_01_z1|owo_acog_sight_02|owo_acog_sight_02_z1|owo_acog_sight_02_top|owo_acog_sight_01f|owo_acog_sight_01f_z1|owo_acog_sight_02f|owo_acog_sight_02f_z1|owo_acog_sight_02f_top" },
        sightac1 =       { offset = true, position  = vector3_box(0, -0.022, 0.032), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.3, 1, 1.3),},
        sightac2 =       { offset = true, position  = vector3_box(0, -0.132, 0.032), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),},
        sightac3 =       { offset = true, position  = vector3_box(0, 0.064, 0.032), rotation = vector3_box(-180, 0, 0), scale = vector3_box(1, 1, 1),},
        -- Base
        sightac4 =       { offset = true, position  = vector3_box(0, -0.018, -0.012), rotation = vector3_box(-90, 0, 0), scale = vector3_box(1, 0.63, 0.56),},
        -- Knobs
        sightac5 =       { offset = true, position  = vector3_box(0, -0.01, 0.061), rotation = vector3_box(-180, 0, -180), scale = vector3_box(0.45, 0.68, 0.24),},
        sightac6 =       { offset = true, position  = vector3_box(0.028, -0.014, 0.034), rotation = vector3_box(-180, -90, -180), scale = vector3_box(0.45, 0.45, 0.12),},
        -- Cable
        sightac7 =       { offset = true, position  = vector3_box(0, -0.018, 0.066), rotation = vector3_box(-90, 0, 0), scale = vector3_box(0.515, 0.195, 0.525),},
    
        -- For whatever fucking reason, the recon body won't apply position transformations to lenses
        -- These are the same for forwards and backwards
        lens =              { offset = false, parent = "sight", position = vector3_box(0, 0.026, 0.0345), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.03, 0.3, 1.03), 
            data = {lens = 1},},
	    lens_2 =            { offset = false, parent = "sight", position = vector3_box(0, -0.098, 0.0315), rotation = vector3_box(0, 0, 180), scale = vector3_box(0.65, 0.155, 0.65), 
            data = {lens = 2},},
    },
    --  ACOG with RMR on top
    {   dependencies = { "owo_acog_sight_02|owo_acog_sight_02_z1|owo_acog_sight_02_top|owo_acog_sight_02f|owo_acog_sight_02f_z1|owo_acog_sight_02f_top" },
        sight_secondary =       { offset = true, position  = vector3_box(0, -0.062, 0.074), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 0.7, 1),},
    },
    --  -------------------------------------------
    --  SUSAT
    --  -------------------------------------------
    {   dependencies = { "owo_susat_01|owo_susat_01_ps|owo_susat_01_z1|owo_susat_02|owo_susat_02_z1|owo_susat_02_top" },
        sight =             { offset = false, parent = "barrel", parent_node = 9, position  = vector3_box(0, 0.008, 0.060), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),},
        -- cylinder thing
        sightac1 =       { offset = true, position  = vector3_box(0, 0.096, 0.034), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.6, 1.47, 1.27), 
            data = {sightac1 = 1},},
        -- Rear
        sightac2 =       { offset = true, position  = vector3_box(0, -0.0081, 0.0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.36, 0.514, 1.36),},
        sightac3 =       { offset = true, position  = vector3_box(0, -0.008, 0.0), rotation = vector3_box(0, 17, 0), scale = vector3_box(1.36, 0.514, 1.36),},
        -- Base
        sightac4 =       { offset = true, position  = vector3_box(0, 0.07, -0.036), rotation = vector3_box(-90, 0, 0), scale = vector3_box(1, 0.63, 0.56),},
        -- Reticle
        sightac5 =       { offset = true, position  = vector3_box(-0.0028, 0.066, -0.026), rotation = vector3_box(0, 6, 0), scale = vector3_box(0.15, 0.45, 0.09),},
        sightac6 =       { offset = true, position  = vector3_box(0.0028, 0.066, -0.026), rotation = vector3_box(0, -6, 0), scale = vector3_box(0.15, 0.45, 0.09),},
        sightac7 =       { offset = true, position  = vector3_box(0, -0.008, 0.0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.0, 1.0, 1.0),},

        lens =              { offset = false, parent = "sightac7", position = vector3_box(0, 0.096, 0.0), rotation = vector3_box(0, 0, 0), scale = vector3_box(0.85, 0.3, 0.85), 
            data = {lens = 1},},
	    lens_2 =            { offset = false, parent = "sightac7", position = vector3_box(0, 0.032, 0.0), rotation = vector3_box(0, 0, 180), scale = vector3_box(0.65, 0.155, 0.65), 
            data = {lens = 2},},
    },
    -- SUSAT with red dot
    {   dependencies = { "owo_susat_02|owo_susat_02_z1|owo_susat_02_top" },
        sight_secondary =     { offset = true, position  = vector3_box(0, 0.022, 0.03), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 0.7, 1),},
    },
    --  -------------------------------------------
    --  Aligning sights to crosshair
    --  -------------------------------------------
    --  Aiming with main sight
    --      ACOG
    {   dependencies = { "owo_acog_sight_01f|owo_acog_sight_01f_z1|owo_acog_sight_02f|owo_acog_sight_02f_z1" },
        scope_offset =      { position = vector3_box(0, -0.0, -0.0528), rotation = vector3_box(0, 0, 0), lense_transparency = true },
    },
    --      ACOG Backwards
    {   dependencies = { "owo_acog_sight_01|owo_acog_sight_01_z1|owo_acog_sight_02|owo_acog_sight_02_z1" },
        scope_offset =      { position = vector3_box(0, -0.0, -0.0528), rotation = vector3_box(0, 0, 0), lense_transparency = true },
    },
    --      SUSAT
    {   dependencies = { "owo_susat_01|owo_susat_01_z1|owo_susat_02|owo_susat_02_z1",
        },
        scope_offset =      { position = vector3_box(0, 0.0, -0.042), rotation = vector3_box(0, 0, 0), lense_transparency = true },
    },
    --  Aiming with RMR on ACOG
    {   dependencies = { "owo_acog_sight_02_top|owo_acog_sight_02f_top" },
        scope_offset =      { position = vector3_box(0.0002, 0.001, -0.127), rotation = vector3_box(0, 0, 0), lense_transparency = false },
    },
    --  Aiming with RMR on SUSAT
    {   dependencies = { "owo_susat_02_top" },
        scope_offset =      { position = vector3_box(0.0002, 0.001, -0.112), rotation = vector3_box(0, 0, 0), lense_transparency = false },
    },

    -- ######
	-- Muzzle: SUPPRESSOR
	-- ######
    {   dependencies = {"owo_revolver_shotgun_barrel_base_04",
            "owo_suppressor_01|owo_suppressor_02"
        },
        muzzle = {parent = "barrel", parent_node = 9, 
            position = vector3_box(0, 0.328, -0.02), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.2, 1.8, 1.2),},
        muzzle_2 = {parent = "barrel", parent_node = 9, 
            position = vector3_box(0, 0.328, -0.02),rotation = vector3_box(0, 22, 0), scale = vector3_box(1.2, 1.8, 1.2 ),},	
    },
    {   dependencies = {"owo_revolver_shotgun_barrel_base_05|owo_revolver_shotgun_barrel_base_06|owo_revolver_shotgun_barrel_base_08",
            "owo_suppressor_01|owo_suppressor_02"
        },
        muzzle = {parent = "barrel", parent_node = 9, 
            position = vector3_box(0, 0.236, -0.02), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.2, 1.8, 1.2),},
        muzzle_2 = {parent = "barrel", parent_node = 9, 
            position = vector3_box(0, 0.236, -0.02),rotation = vector3_box(0, 22, 0), scale = vector3_box(1.2, 1.8, 1.2 ),},	
    },
    {	dependencies = { "owo_suppressor_01|owo_suppressor_02"},
        muzzle = {parent = "barrel", parent_node = 9, offset = false, 
            position = vector3_box(0, 0.192, -0.022), rotation = vector3_box(0, 0, 0), scale = vector3_box(1.2, 1.8, 1.2 ),},
    },
    {	dependencies = {"owo_suppressor_01"},
        muzzle_2 = {parent = "barrel", parent_node = 9, offset = false, 
            position = vector3_box(0, 0.192, -0.022),rotation = vector3_box(0, 22, 0), scale = vector3_box(1.2, 1.8, 1.2 ),},	
    },
    {	dependencies = {"owo_suppressor_02"},
        muzzle_2 = {parent = "barrel", parent_node = 9, offset = false, 
            position = vector3_box(0, 0.192, -0.022), rotation = vector3_box(0, 17, 0), scale = vector3_box(1.2, 1.8, 1.2 ),},
    },
    {	dependencies = { "owo_suppressor_03"},
        muzzle = { offset = true,   position = vector3_box(0, 0.5, 0),    rotation = vector3_box(0, 0, 180),    scale = vector3_box(0.36, 0.4, 0.36) },
        muzzle_2 = { offset = true,   position = vector3_box(0, 0.3, 0),    rotation = vector3_box(-90, 0, 0),    scale = vector3_box(1.3, 1.3, 1.11) },
    },
    {	dependencies = { "owo_suppressor_04|owo_suppressor_05"},
        muzzle = { offset = true,   position = vector3_box(0, 0.072, 0),    rotation = vector3_box(0, 0, 0),    scale = vector3_box(1.2, 1.8, 1.2) },
        muzzle_2 = { offset = true,   position = vector3_box(0, 0.52, 0),    rotation = vector3_box(-90, 0, 0),    scale = vector3_box(1.80, 1.80, 1.5) },
    },
    -- the skinny bayonet. sits on muzzle
    {	dependencies = {"owo_suppressor_01|owo_suppressor_02", 
            "autogun_bayonet_03"
        },
        bayonet = {parent = "barrel", parent_node = 9, offset = false, 
            position = vector3_box(0, 0.03, -0.032), rotation = vector3_box(0, 0, 0), scale = vector3_box(0.85, 0.5, 0.85 ),},
    },

    -- #####
    -- Barrel: Shotgun Extension
    -- offset false/true. doesn't change pos either way. does change scale.
    -- #####
    {   dependencies = {"owo_revolver_shotgun_barrel_base_04|owo_revolver_shotgun_barrel_base_05|owo_revolver_shotgun_barrel_base_06|owo_revolver_shotgun_barrel_base_08",
        },
        -- trigger move is used in wc/weapon_attachments/WEAPON.lua
        -- monkey see monkey do :3
        barrel = { offset = true, mesh_move = false, 
            position = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),
            rotation_node = 2,
            trigger_move = {"muzzle", "rail", "sight", "barrelshroud", "muzzle_2"}, animation_wait_detach = {"muzzle_2", "barrelshroud", "sight", "rail", "muzzle"},
        },
        -- Offset is false so it can be reparented to barrel on load, which lets it follow the animation
        barrelshroud = {parent = "barrel", parent_node = 9, offset = false, mesh_move = false, 
            position = vector3_box(0, 0.026, -0.022), scale = vector3_box(0.722, 0.460, 0.815),},
        emblem_left = {position = vector3_box(-0.021, 0.159, .0315), rotation = vector3_box(0, 0, 180), scale = vector3_box(.65, -.65, .65)},
        emblem_right = {position = vector3_box(0.021, 0.159, .0315), rotation = vector3_box(0, 0, 0), scale = vector3_box(.65, .65, .65)},
    },
   --      Long barrel
        --Not doing until i figure out the positioning issue bug
    {   dependencies = {"owo_revolver_shotgun_barrel_base_04_l|owo_revolver_shotgun_barrel_base_05_l|owo_revolver_shotgun_barrel_base_06_l|owo_revolver_shotgun_barrel_base_08_l",
        },
        barrel = { offset = true, mesh_move = false, 
            position = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),
            rotation_node = 2,
            trigger_move = {"muzzle", "rail", "sight", "barrelshroud", "muzzle_2"}, animation_wait_detach = {"muzzle_2", "barrelshroud", "sight", "rail", "muzzle"},
        },
        barrelshroud = {parent = "barrel", parent_node = 9, offset = false, mesh_move = false, 
            position = vector3_box(0, 0.026, -0.022), scale = vector3_box(0.722, 0.660, 0.815),},
        emblem_left = {position = vector3_box(-0.021, 0.159, .0315), rotation = vector3_box(0, 0, 180), scale = vector3_box(.65, -.65, .65)},
        emblem_right = {position = vector3_box(0.021, 0.159, .0315), rotation = vector3_box(0, 0, 0), scale = vector3_box(.65, .65, .65)},
    },
    --      Muzzle handling
    {   dependencies = {"owo_revolver_shotgun_barrel_base_04",
        },
        muzzle = {parent = "barrel", parent_node = 9, parent = "barrel", 
            position = vector3_box(0, 0.328, -0.02), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),},
    },
    {    dependencies = {"owo_revolver_shotgun_barrel_base_05|owo_revolver_shotgun_barrel_base_06|owo_revolver_shotgun_barrel_base_08",
        },
        muzzle = {parent = "barrel", parent_node = 9, parent = "barrel", 
            position = vector3_box(0, 0.236, -0.02), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1),},
    },

    -- #####
    -- Flashlight: Grip Laser
    -- #####
    {   dependencies = {"owo_grip_laser_01|owo_grip_laser_02"},
        flashlight = {position = vector3_box(-0.01, 0.044, -0.016), scale = vector3_box(0.345, 0.3, 0.285)},
    },

    -- ################
    -- Hiding unused attachments
    -- ################
    -- Barrels
    {   dependencies = { "owo_revolver_shotgun_barrel_04|owo_revolver_shotgun_barrel_05|owo_revolver_shotgun_barrel_06|owo_revolver_shotgun_barrel_08"-- "!owo_revolver_shotgun_barrel_base_04_l", "!owo_revolver_shotgun_barrel_base_05_l", "!owo_revolver_shotgun_barrel_base_06_l", "!owo_revolver_shotgun_barrel_base_08_l"
        },
            barrelshroud = {hide_mesh = {{"barrelshroud", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    -- Muzzles
    {	dependencies = {"owo_suppressor_helper_01|owo_suppressor_helper_02|owo_suppressor_helper_03|owo_suppressor_helper_04" },
        muzzle_2 = {hide_mesh = { 	{"muzzle_2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15} }},
    },
    -- Sights
    {   dependencies = {"owo_holosight_helper_01|owo_pu_scope_helper_01|owo_acog_sight_helper_01|owo_susat_ac1_01"},
        sightac1 = { hide_mesh = {{"sightac1", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = {"owo_holosight_helper_02|owo_pu_scope_helper_02|owo_acog_sight_helper_02|owo_susat_ac2_01"},
        sightac2 = { hide_mesh = {{"sightac2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = {"owo_holosight_helper_03|owo_pu_scope_helper_03|owo_acog_sight_helper_03|owo_susat_ac3_01"},
        sightac3 = { hide_mesh = {{"sightac3", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = {"owo_holosight_helper_04|owo_pu_scope_helper_04|owo_acog_sight_helper_04"},
        sightac4 = { hide_mesh = {{"sightac4", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = { "owo_rear_sight_ac5_01|owo_pu_scope_helper_05|owo_acog_sight_helper_05|owo_susat_ac5_01"},
        sightac5 = { hide_mesh = {{"sightac5", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = { "owo_rear_sight_ac6_01|owo_pu_scope_helper_06|owo_acog_sight_helper_06|owo_susat_ac6_01"},
        sightac6 = { hide_mesh = {{"sightac6", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = { "owo_acog_sight_helper_07|owo_susat_ac7_01"},
        sightac7 = { hide_mesh = {{"sightac7", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = { "owo_holosight_sight_secondary_01|owo_acog_sight_sight_secondary_01|owo_pu_scope_riser_01"},
        sight_secondary = { hide_mesh = {{"sight_secondary", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
    {   dependencies = { "owo_holosight_sight_secondary_helper_01"},
        sight_secondary_ac1 = { hide_mesh = {{"sight_secondary_ac1", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},  
    },
    {   dependencies = { "owo_holosight_sight_secondary_helper_02"},
        sight_secondary_ac2 = { hide_mesh = {{"sight_secondary_ac2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
})
