      --armor
        
        if minetest.get_modpath("cannabis") then
	local stats = {
		fibra = { name="fibra", armor=3.8, heal=28, use=100 },
        tessuto= { name="tessuto", armor=2.0, heal=18, use=50 },
		foglie = { name="foglie", armor=2.7, heal=8, use=10 },
		high = { name="high_performance", armor=3.9, heal=38, use=1 },
		adminh =  { name="adminh", armor=100, heal=100, use=100 ,armor_water=1,not_in_creative_inventory=0},
		
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
			description = v.name.." Helmet",
			inventory_image = "cannabis_armor_inv_helmet_"..k..".png",
			groups = {armor_head=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
		minetest.register_tool("cannabis:chestplate_"..k, {
			description = v.name.." Chestplate",
			inventory_image = "cannabis_armor_inv_chestplate_"..k..".png",
			groups = {armor_torso=math.floor(8*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
		minetest.register_tool("cannabis:leggings_"..k, {
			description = v.name.." Leggings",
			inventory_image = "cannabis_armor_inv_leggings_"..k..".png",
			groups = {armor_legs=math.floor(7*v.armor), armor_heal=v.heal, armor_use=v.use},
			wear = 0,
		})
		minetest.register_tool("cannabis:boots_"..k, {
			description = v.name.." Boots",
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
				description = v.name.." hemp Shield",
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
