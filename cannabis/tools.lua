-- [[mods/cannabis/tools.lua]]

--REGISTER TOOLS : PICKS SHOVELS AXES SWORDS
--
-- Picks______________________________________________________________________________
--

-- get Boilerplate for Translations
local S = cannabis.S

minetest.register_tool("cannabis:pick_hemp_steel", {
	description = S("Hemp Steel Pickaxe"),
	inventory_image = "cannabis_tool_steelpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("cannabis:pick_hemp_bronze", {
	description = S("Hemp Bronze Pickaxe"),
	inventory_image = "cannabis_tool_bronzepick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("cannabis:pick_hemp_mese", {
	description = S("Hemp Mese Pickaxe"),
	inventory_image = "cannabis_tool_mesepick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})
minetest.register_tool("cannabis:pick_hemp_diamond", {
	description = S("Hemp Diamond Pickaxe"),
	inventory_image = "cannabis_tool_diamondpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.5, [2]=0.4, [3]=0.3}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})
minetest.register_tool("cannabis:pick_hemp_high", {
	description = S("Hemp High Pickaxe"),
	inventory_image = "cannabis_tool_highpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("cannabis:pick_hemp_adminh", {
	description = S("Hemp Adminh Pickaxe"),
	inventory_image = "cannabis_tool_adminhpick.png",
	tool_capabilities = {
		full_punch_interval = 0.35,
		max_drop_level=3,
			groupcaps= {
			unbreakable = {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			fleshy =      {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			choppy =      {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			bendy =       {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			cracky =      {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			crumbly =     {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			snappy =      {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
		},
		damage_groups = {fleshy=10000},
	},
})
minetest.register_on_punchnode(function(pos, node, puncher)
	if puncher:get_wielded_item():get_name() == "cannabis:pick_hemp_adminh"
	and minetest.get_node(pos).name ~= "air" then
		minetest.log("action", puncher:get_player_name() .. " digs " .. minetest.get_node(pos).name .. " at " .. minetest.pos_to_string(pos) .. " using an Admin Pickaxe.")
		minetest.remove_node(pos) -- The node is removed directly, which means it even works on non-empty containers and group-less nodes.
		minetest.check_for_falling(pos) -- Run node update actions like falling nodes.
	end
end)
--
-- Shovels___________________________________________________________________________________________________________
--


minetest.register_tool("cannabis:shovel_hemp_high", {
	description = S("Hemp High Shovel"),
	inventory_image = "cannabis_tool_highshovel.png",
	wield_image = "cannabis_tool_highshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.00, [2]=0.40, [3]=0.25}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_tool("cannabis:shovel_hemp_steel", {
	description = S("Hemp Steel Shovel"),
	inventory_image = "cannabis_tool_steelshovel.png",
	wield_image = "cannabis_tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("cannabis:shovel_hemp_bronze", {
	description = S("Hemp Bronze Shovel"),
	inventory_image = "cannabis_tool_bronzeshovel.png",
	wield_image = "cannabis_tool_bronzeshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})
minetest.register_tool("cannabis:shovel_hemp_mese", {
	description = S("Hemp Mese Shovel"),
	inventory_image = "cannabis_tool_meseshovel.png",
	wield_image = "cannabis_tool_meseshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.60, [3]=0.30}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("cannabis:shovel_hemp_diamond", {
	description = S("Hemp Diamond Shovel"),
	inventory_image = "cannabis_tool_diamondshovel.png",
	wield_image = "cannabis_tool_diamondshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})


-- Axes____________________________________________________________________________________________________
--
minetest.register_tool("cannabis:axe_hemp_steel", {
	description = S("Hemp Steel Axe"),
	inventory_image = "cannabis_tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("cannabis:axe_hemp_bronze", {
	description = S("Hemp Bronze Axe"),
	inventory_image = "cannabis_tool_bronzeaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})
minetest.register_tool("cannabis:axe_hemp_mese", {
	description = S("Hemp Mese Axe"),
	inventory_image = "cannabis_tool_meseaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
})
minetest.register_tool("cannabis:axe_hemp_diamond", {
	description = S("Hemp Diamond Axe"),
	inventory_image = "cannabis_tool_diamondaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.10, [2]=0.90, [3]=0.50}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})
minetest.register_tool("cannabis:axe_hemp_high", {
	description = S("Hemp High Performance Axe"),
	inventory_image = "cannabis_tool_highaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})
--
-- Swords___________________________________________________________________________________________________

minetest.register_tool("cannabis:sword_hemp_steel", {
	description = S("Hemp Steel Sword"),
	inventory_image = "cannabis_tool_steelsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=30, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})
minetest.register_tool("cannabis:sword_hemp_bronze", {
	description = S("Hemp Bronze Sword"),
	inventory_image = "cannabis_tool_bronzesword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	}
})
minetest.register_tool("cannabis:sword_hemp_mese", {
	description = S("Hemp Mese Sword"),
	inventory_image = "cannabis_tool_mesesword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})
minetest.register_tool("cannabis:sword_hemp_diamond", {
	description = S("Hemp Diamond Sword"),
	inventory_image = "cannabis_tool_diamondsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})
minetest.register_tool("cannabis:sword_hemp_high", {
	description = S("Hemp High Performance Sword"),
	inventory_image = "cannabis_tool_highsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.8, [2]=0.8, [3]=0.25}, uses=50, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	}
})






--pick:___________________________________________________________________

minetest.register_craft({
	output = 'cannabis:pick_hemp_high',
	recipe = {
		{'cannabis:mixed_hr_ingot', 'cannabis:mixed_hr_ingot', 'cannabis:mixed_hr_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})



minetest.register_craft({
	output = 'cannabis:pick_hemp_steel',
	recipe = {
		{'default:steel_ingot', 'cannabis:high_performance_ingot', 'default:steel_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cannabis:pick_hemp_bronze',
	recipe = {
		{'default:bronze_ingot', 'cannabis:foglie_ingot', 'default:bronze_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cannabis:pick_hemp_mese',
	recipe = {
		{'default:mese_crystal', 'cannabis:fibra_ingot', 'default:mese_crystal'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cannabis:pick_hemp_diamond',
	recipe = {
		{'default:diamond', 'cannabis:tessuto_ingot', 'default:diamond'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

--shovel__________________________________________________________________________________________

minetest.register_craft({
	output = 'cannabis:shovel_hemp_high',
	recipe = {
		{'cannabis:mixed_hr_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})



minetest.register_craft({
	output = 'cannabis:shovel_hemp_steel',
	recipe = {
		{'default:steel_ingot'},
		{'group:stick'},
		{'cannabis:high_performance_ingot'},
	}
})

minetest.register_craft({
	output = 'cannabis:shovel_hemp_bronze',
	recipe = {
		{'default:bronze_ingot'},
		{'group:stick'},
		{'cannabis:foglie_ingot'},
	}
})

minetest.register_craft({
	output = 'cannabis:shovel_hemp_mese',
	recipe = {
		{'default:mese_crystal'},
		{'group:stick'},
		{'cannabis:fibra_ingot'},
	}
})

minetest.register_craft({
	output = 'cannabis:shovel_hemp_diamond',
	recipe = {
		{'default:diamond'},
		{'group:stick'},
		{'cannabis:tessuto_ingot'},
	}
})

--axe_______________________________________________________________________________________________

minetest.register_craft({
	output = 'cannabis:axe_hemp_high',
	recipe = {
		{'cannabis:mixed_hr_ingot', 'cannabis:mixed_hr_ingot'},
		{'group:stick', 'cannabis:mixed_hr_ingot'},
		{'group:stick',''},
	}
})


minetest.register_craft({
	output = 'cannabis:axe_hemp_steel',
	recipe = {
		{'cannabis:high_performance_ingot', 'default:steel_ingot'},
		{'group:stick', 'default:steel_ingot'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cannabis:axe_hemp_bronze',
	recipe = {
		{'cannabis:foglie_ingot', 'default:bronze_ingot'},
		{'group:stick', 'default:bronze_ingot'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cannabis:axe_hemp_mese',
	recipe = {
		{'cannabis:fibra_ingot', 'default:mese_crystal'},
		{'group:stick', 'default:mese_crystal'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'cannabis:axe_hemp_diamond',
	recipe = {
		{'cannabis:tessuto_ingot', 'default:diamond'},
		{'group:stick', 'default:diamond'},
		{'group:stick', ''},
	}
})

--sword_________________________________________________________________________________________________________

minetest.register_craft({
	output = 'cannabis:sword_hemp_high',
	recipe = {
		{'cannabis:mixed_hr_ingot'},
		{'cannabis:mixed_hr_ingot'},
		{'group:stick'},
	}
})


minetest.register_craft({
	output = 'cannabis:sword_hemp_steel',
	recipe = {
		{'default:steel_ingot'},
		{'cannabis:high_performance_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'cannabis:sword_hemp_bronze',
	recipe = {
		{'default:bronze_ingot'},
		{'cannabis:foglie_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'cannabis:sword_hemp_mese',
	recipe = {
		{'default:mese_crystal'},
		{'cannabis:fibra_ingot'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'cannabis:sword_hemp_diamond',
	recipe = {
		{'default:diamond'},
		{'cannabis:tessuto_ingot'},
		{'group:stick'},
	}
})
