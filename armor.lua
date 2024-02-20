-- get Boilerplate for Translations

local S = cannabis.S
local path = cannabis.path
        
if minetest.get_modpath("cannabis") then
	local stats = {
		
        tessuto= { name="tessuto",fire=4, armor=2.0, heal=18, use=50,jump=0.6,speed=1.5,gravity=-0.1 },
		foglie = { name="foglie",fire=4, armor=2.7, heal=8, use=10 ,jump=0.7,speed=1.5,gravity=-0.2},
		fibra = { name="fibra", fire=5,armor=3.8, heal=28, use=100,jump=0.8,speed=1.5,gravity=-0.3},
		high = { name="high_performance",fire=5, armor=3.9, heal=38, use=70,jump=0.9,speed=1.5,gravity=-0.4 },
		adminh =  { name="adminh",fire=5, armor=100, heal=100, use=100 ,armor_water=1,jump=1,speed=1.5,gravity=-0.5,not_in_creative_inventory=0},
		
	}
	local mats = {
		fibra="cannabis:fibra_ingot",
		tessuto="cannabis:tessuto_ingot",
		foglie="cannabis:foglie_ingot",
		high="cannabis:high_performance_ingot",
		adminh="cannabis:adminh_block",
	}
	for k, v in pairs(stats) do
		minetest.register_tool("cannabis:helmet_"..k, {
			description = v.name..S(" Helmet"),
			inventory_image = "cannabis_armor_inv_helmet_"..k..".png",
			groups = {armor_head=math.floor(5*v.armor),armor_fire=v.fire, armor_heal=v.heal, armor_use=v.use,},
			armor_groups = {fleshy=6, radiation=17000},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
			wear = 0,
		})
		minetest.register_tool("cannabis:chestplate_"..k, {
			description = v.name.. S(" Chestplate"),
			inventory_image = "cannabis_armor_inv_chestplate_"..k..".png",
			groups = {armor_torso=math.floor(8*v.armor), armor_heal=v.heal, armor_use=v.use},
			armor_groups = {fleshy=6, radiation=19000},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
			wear = 0,
		})
		minetest.register_tool("cannabis:leggings_"..k, {
			description = v.name.. S(" Leggings"),
			inventory_image = "cannabis_armor_inv_leggings_"..k..".png",
			groups = {armor_legs=math.floor(7*v.armor), armor_heal=v.heal, armor_use=v.use},
			armor_groups = {fleshy=6, radiation=12000},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
			wear = 0,
		})
		minetest.register_tool("cannabis:boots_"..k, {
			description = v.name..S(" Boots"),
			inventory_image = "cannabis_armor_inv_boots_"..k..".png",
			groups = {armor_feet=math.floor(4*v.armor), armor_heal=v.heal, armor_use=v.use,physics_jump=v.jump, physics_speed=v.speed, physics_gravity=v.gravity},
			armor_groups = {fleshy=6, radiation=10000},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
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
				description = v.name.. S(" Hemp Shield"),
				inventory_image = "cannabis_armor_inv_shield_"..k..".png",
				groups = {armor_shield=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use},
				armor_groups = {fleshy=6, radiation=20000},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
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
		end -- for k,v
	end -- if minetest.get_modpath("shields")
end--if minetest.get_modpath("cannabis")
