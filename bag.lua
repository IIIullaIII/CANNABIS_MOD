
local S = cannabis.S
local path = cannabis.path
-- register bag tools
if minetest.get_modpath("unified_inventory") ~= nil then
minetest.register_tool("cannabis:bag_bob_small", {
	description = S("Small Bob Bag"),
	inventory_image = "bags_bob_small.png",
	groups = {bagslots=8},
})

minetest.register_tool("cannabis:bag_bob_medium", {
	description = S("Medium Bob Bag"),
	inventory_image = "bags_bob_medium.png",
	groups = {bagslots=16},
})

minetest.register_tool("cannabis:bag_bob_large", {
	description = S("Large Bob Bag"),
	inventory_image = "bags_bob_large.png",
	groups = {bagslots=24},
})
end
-- register bag crafts
--if minetest.get_modpath("farming") ~= nil then
	minetest.register_craft({
		output = "cannabis:bag_bob_small",
		recipe = {
			{"",           "cannabis:canapa_fiber", ""},
			{"cannabis:canapa_cloth", "cannabis:canapa_cloth",     "cannabis:canapa_cloth"},
			{"cannabis:canapa_cloth", "cannabis:canapa_cloth",     "cannabis:canapa_cloth"},
		},
	})

	minetest.register_craft({
		output = "cannabis:bag_bob_medium",
		recipe = {
			{"",               "",                            ""},
			{"cannabis:canapa_fiber", "cannabis:bag_small", "cannabis:canapa_fiber"},
			{"cannabis:canapa_fiber", "cannabis:bag_small", "cannabis:canapa_fiber"},
		},
	})

	minetest.register_craft({
		output = "cannabis:bag_bob_large",
		recipe = {
			{"",               "",                             ""},
			{"cannabis:cannabis_tessuto_block", "cannabis:bag_medium", "cannabis:cannabis_tessuto_block"},
			{"cannabis:cannabis_tessuto_block", "cannabis:bag_medium", "cannabis:cannabis_tessuto_block"},
	    },
	})
