local S = cannabis.S

        --armor
        
        if minetest.get_modpath("cannabis") then
	local stats = {
		fibra = { name="fibra", armor=1.8, heal=10, use=650 },
        tessuto= { name="tessuto", armor=2.5, heal=8, use=200 },
		foglie = { name="foglie", armor=2.7, heal=10, use=100 },
		high = { name="high_performance", armor=2.7, heal=10, use=75 },
	}
	local mats = {
		fibra="cannabis:fibra_ingot",
		tessuto="cannabis:tessuto_ingot",
		foglie="cannabis:foglie_ingot",
		high="cannabis:high_performance_ingot",
	}
	for k, v in pairs(stats) do
		minetest.register_tool("cannabis:helmet_"..k, {
			description = v.name..S(" Helmet"),
			inventory_image = "cannabis_armor_inv_helmet_"..k..".png",
			groups = {armor_head=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
		minetest.register_tool("cannabis:chestplate_"..k, {
			description = v.name..S(" Chestplate"),
			inventory_image = "cannabis_armor_inv_chestplate_"..k..".png",
			groups = {armor_torso=math.floor(8*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
		minetest.register_tool("cannabis:leggings_"..k, {
			description = v.name..S(" Leggings"),
			inventory_image = "cannabis_armor_inv_leggings_"..k..".png",
			groups = {armor_legs=math.floor(7*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
		minetest.register_tool("cannabis:boots_"..k, {
			description = v.name..S(" Boots"),
			inventory_image = "cannabis_armor_inv_boots_"..k..".png",
			groups = {armor_feet=math.floor(4*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
	end

	for k, v in pairs(mats) do
		minetest.register_craft({
			output = "cannabis:helmet_"..k,
			recipe = {
				{v, v, v},
				{v, "", v},
				{"", "", ""},
			},
		})
		minetest.register_craft({
			output = "cannabis:chestplate_"..k,
			recipe = {
				{v, "", v},
				{v, v, v},
				{v, v, v},
			},
		})
		minetest.register_craft({
			output = "cannabis:leggings_"..k,
			recipe = {
				{v, v, v},
				{v, "", v},
				{v, "", v},
			},
		})
		minetest.register_craft({
			output = "cannabis:boots_"..k,
			recipe = {
				{v, "", v},
				{v, "", v},
			},
		})
	end
            	if minetest.get_modpath("shields") then
		for k, v in pairs(stats) do
			minetest.register_tool("cannabis:shield_"..k, {
				description = v.name..S(" Hemp Shield"),
				inventory_image = "cannabis_armor_inv_shield_"..k..".png",
				groups = {armor_shield=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use},
				wear = 0,
			})
			local m = mats[k]
			minetest.register_craft({
				output = "cannabis:shield_"..k,
				recipe = {
					{m, m, m},
					{m, m, m},
					{"", m, ""},
				},
			})
		end
	end
end

minetest.register_craftitem("cannabis:mixed_hr_ingot", {
	description = S("Mixed HR Ingot"),
	inventory_image = "cannabis_mixed_hr_ingot.png",
})

minetest.register_craftitem(":cannabis:fibra_ingot", {
	description = S("Fiber Ingot"),
	inventory_image = "cannabis_fibra_ingot.png",
})
minetest.register_craftitem(":cannabis:foglie_ingot", {
	description = S("Sheet Ingot"),
	inventory_image = "cannabis_foglie_ingot.png",
})
minetest.register_craftitem("cannabis:high_performance_ingot", {
	description = S("High Performance Ingot"),
	inventory_image = "cannabis_high_performance_ingot.png",
})
minetest.register_craftitem(":cannabis:tessuto_ingot", {
	description = S("Textil Ingot"),
	inventory_image = "cannabis_tessuto_ingot.png",
})
local function for_each_registered_item(action)
	local already_reg = {}
	for k, _ in pairs(minetest.registered_items) do
		table.insert(already_reg, k)
	end
	local really_register_craftitem = minetest.register_craftitem
	minetest.register_craftitem = function(name, def)
		really_register_craftitem(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_tool = minetest.register_tool
	minetest.register_tool = function(name, def)
		really_register_tool(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_node = minetest.register_node
	minetest.register_node = function(name, def)
		really_register_node(name, def)
		action(string.gsub(name, "^:", ""))
	end
	for _, name in ipairs(already_reg) do
		action(name)
	end
end

local function register_block(block, ingot)
	minetest.register_craft({
		output = block,
		recipe = {
			{ingot, ingot, ingot},
			{ingot, ingot, ingot},
			{ingot, ingot, ingot},
		}
	})

	minetest.register_craft({
		output = ingot.." 9",
		recipe = {
			{block}
		}
	})
end

register_block("cannabis:cannabis_fibra_block", "cannabis:fibra_ingot")
register_block("cannabis:cannabis_high_performance_block", "cannabis:high_performance_ingot")
register_block("cannabis:cannabis_tessuto_block", "cannabis:tessuto_ingot")
register_block("cannabis:cannabis_foglie_block", "cannabis:foglie_ingot")

minetest.register_node("cannabis:cannabis_foglie_block", {
	description = S("Sheet Block"),
	tiles = { "cannabis_foglie_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis:cannabis_canapa_s3"
})

minetest.register_node("cannabis:cannabis_tessuto_block", {
	description = S("Textil Block"),
	tiles = { "cannabis_tessuto_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis_canapa_s3"
})
--register node


minetest.register_node("cannabis:hp_block_canapa", 
    {
	description = S("High Performance Block Canapa"),
	tiles = {"hp_block_canapa.png"},
	is_ground_content = false,
	groups = {choppy = 30, oddly_breakable_by_hand = 1, flammable = 3, wood = 1},
	sounds = "cannabis:cannabis_canapa_s2",
})


minetest.register_node("cannabis:cannabis_high_performance_block", {
	description = S("High Performance Block"),
	tiles = { "cannabis_high_performance_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis_canapa_s3"
})
minetest.register_node("cannabis:cannabis_fibra_block", {
	description = S("Fiber Block"),
	tiles = { "cannabis_fibra_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = "cannabis_canapa_s3"
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_fiber",
	output = "cannabis:fibra_ingot",
})


minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_leaves",
	output = "cannabis:foglie_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_paper",
	output = "cannabis:tessuto_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_plastic",
	cooktime = 2,
	output = "cannabis:high_performance_ingot",
})

local function for_each_registered_item(action)
	local already_reg = {}
	for k, _ in pairs(minetest.registered_items) do
		table.insert(already_reg, k)
	end
	local really_register_craftitem = minetest.register_craftitem
	minetest.register_craftitem = function(name, def)
		really_register_craftitem(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_tool = minetest.register_tool
	minetest.register_tool = function(name, def)
		really_register_tool(name, def)
		action(string.gsub(name, "^:", ""))
	end
	local really_register_node = minetest.register_node
	minetest.register_node = function(name, def)
		really_register_node(name, def)
		action(string.gsub(name, "^:", ""))
	end
	for _, name in ipairs(already_reg) do
		action(name)
	end
end
