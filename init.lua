--minetest.register_alias("canapa","cannabis:canapa")

cannabis = {}

local S

if(minetest.get_translator) then
   S = minetest.get_translator(minetest.get_current_modname())

else
    S = function ( s ) return s end

end

cannabis.S = S

--tools
local path = minetest.get_modpath("cannabis")
dofile(path.."/tools.lua")
dofile(path.."/canapa.lua")
dofile(path.."/craft.lua")
dofile(path.."/armor.lua")







--craft item :fiber, fuel, plastic, paper,flower,oil,flour,bred,raisin,seed,leaves

minetest.register_craftitem("cannabis:canapa_fiber", {
	description = S("Fiber"),
	inventory_image = "cannabis_canapa_fiber.png",
})
minetest.register_craftitem("cannabis:canapa_fuel", {
	description = S("Fuel"),
	inventory_image = "cannabis_fuel.png",
})

minetest.register_craftitem("cannabis:canapa_plastic", {
	description = S("Plastic"),
	inventory_image = "cannabis_plastic.png",
})

minetest.register_craftitem("cannabis:canapa_paper", {
	description = S("Paper"),
	inventory_image = "cannabis_paper.png",
})
minetest.register_craftitem("cannabis:canapa_flour", {
	description = S("Flour"),
	inventory_image = "cannabis_canapa_flour.png",
})

minetest.register_craftitem("cannabis:canapa_bread", {
	description = S("Bread"),
	inventory_image = "cannabis_canapa_bread.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("cannabis:canapa_seed", {
	description = S("Hemp Seed"),
	inventory_image = "cannabis_canapa_seed.png",
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("cannabis:canapa_leaves", {
	description = S("Hemp Leaves"),
	inventory_image = "cannabis_canapa_leaves.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_flower", {
	description = S("Hemp Flower"),
	inventory_image = "cannabis_canapa_flower.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_raisin", {
	description = S("Hemp Raisin"),
	inventory_image = "cannabis_canapa_raisin.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_oil", {
	description = S("Hemp Oil"),
	inventory_image = "cannabis_canapa_oil.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_glue", {
	description = S("Hemp Glue"),
	inventory_image = "cannabis_canapa_glue.png",
	on_use = minetest.item_eat(1),
})


   

-- This file supplies hemp for the plantlife modpack
-- Last revision:  2016-01-14





minetest.register_node('cannabis:seedling', {
	description = S("Hemp (seedling)"),
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
	description = S("Hemp (sproutling)"),
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
	description = S("Hemp (climbing plant)"),
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
