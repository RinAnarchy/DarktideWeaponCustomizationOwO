local mod = get_mod("weapon_customization_owo")
local syn = get_mod("weapon_customization_syn_edits")

 -- Locals from Weapon Customization plugin template
local vector3_box = Vector3Box
local _item = "content/items/weapons/player"
local _item_ranged = _item.."/ranged"
local _item_melee = _item.."/melee"
local _item_minion = "content/items/weapons/minions"

local this_variant = "combataxe_p2_m1" -- Tactical Axe

-- ############################################
-- Add Custom Attachments
-- Makes new tables for attachment anchors
-- ############################################
mod.wc.attachment[this_variant].head2 = {} -- Syn hasn't added this slot to this weapon family yet


-- ############################################
-- Injection Calls: attachments and models
-- from ranged.lua and melee.lua
-- ############################################
mod.owo_tacax_spike(this_variant, "head")

-- ############################################
-- Inject Fixes
-- ############################################
mod.inject_fixes(this_variant, {
    -- ######
    -- Head: TACAX SPIKE
    -- ######
    {	dependencies = {"owo_tacax_spike_01"},
        head = {offset = true, position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1 ) },
        head2 = {offset = true, position = vector3_box(0, 0, 0), rotation = vector3_box(0, 0, 0), scale = vector3_box(1, 1, 1 ) },
    },

    -- ####################################################################################
    -- HIDING HELPERS
    -- By putting it down here, they will only be hidden if the fixes from above are not found
    -- Because they match the main parts first, if there is no match it means the main part is not attached
    -- ####################################################################################
    -- Head
    {	dependencies = {"owo_tacax_spike_helper_01"},
        head2 = { hide_mesh = {{"head2", 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15}}},
    },
})