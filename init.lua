--aliases
minetest.get_modpath("cannabis")
--minetest.register_alias("canapa","cannabis:canapa")

--tools
local path = minetest.get_modpath("cannabis")
dofile(path.."/tools.lua")
dofile(path.."/canapa.lua")
dofile(path.."/craft.lua")
dofile(path.."/armor.lua")







--craft item :fiber, fuel, plastic, paper,flower,oil,flour,bred,raisin,seed,leaves

minetest.register_craftitem("cannabis:canapa_fiber", {
	description = "Fiber",
	inventory_image = "cannabis_canapa_fiber.png",
})
minetest.register_craftitem("cannabis:canapa_fuel", {
	description = "Fuel",
	inventory_image = "cannabis_fuel.png",
})

minetest.register_craftitem("cannabis:canapa_plastic", {
	description = "Plastic",
	inventory_image = "cannabis_plastic.png",
})

minetest.register_craftitem("cannabis:canapa_paper", {
	description = "Paper",
	inventory_image = "cannabis_paper.png",
})
minetest.register_craftitem("cannabis:canapa_flour", {
	description = "Flour",
	inventory_image = "cannabis_canapa_flour.png",
})

minetest.register_craftitem("cannabis:canapa_bread", {
	description = "Bread",
	inventory_image = "cannabis_canapa_bread.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("cannabis:canapa_seed", {
	description = "Hemp_Seed",
	inventory_image = "cannabis_canapa_seed.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("cannabis:canapa_leaves", {
	description = "Hemp_Leaves",
	inventory_image = "cannabis_canapa_leaves.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_flower", {
	description = "Hemp_Flower",
	inventory_image = "cannabis_canapa_flower.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_raisin", {
	description = "Hemp_Raisin",
	inventory_image = "cannabis_canapa_raisin.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_oil", {
	description = "Hemp_Oil",
	inventory_image = "cannabis_canapa_oil.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_glue", {
	description = "Hemp_Glue",
	inventory_image = "cannabis_canapa_glue.png",
	on_use = minetest.item_eat(1),
})


   

-- This file supplies hemp for the plantlife modpack
-- Last revision:  2016-01-14





minetest.register_node('cannabis:seedling', {
	description = ("hemp (seedling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { '1hemp_seedling.png' },
	inventory_image = '1hemp_seedling.png',
	wield_image = '1hemp_seedling.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = "cannabis_canapa_s3",
	buildable_to = true,
})

minetest.register_node('cannabis:sproutling', {
	description = ("hemp (sproutling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'hemp_sproutling.png' },
	inventory_image = 'hemp_sproutling.png',
	wield_image = 'hemp_sproutling.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = "cannabis_canapa_s3",
	buildable_to = true,
})

minetest.register_node('cannabis:climbing', {
	description = ("hemp (climbing plant)"),
	drawtype = 'signlike',
	tiles = { 'hemp_climbing.png' },
	inventory_image = 'hemp_climbing.png',
	wield_image = 'hemp_climbing.png',
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = 'wallmounted',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = "cannabis_canapa_s3",
	selection_box = {
		type = "wallmounted",
		--wall_side = = <default>
	},
	buildable_to = true,
})
