-- get Boilerplate for Translations
local S = cannabis.S
local path = cannabis.path

minetest.register_node("cannabis:canapa", {
	description = S("Hemp"),
	drawtype = "plantlike",
	tiles = {"cannabis_canapa.png"},
	inventory_image = "cannabis_canapa.png",
	wield_image = "cannabis_canapa.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
	sounds = "cannabis_canapa_s",
        drop = {
   max_items = 3,
   items = {
      {items = {"cannabis:canapa"}, rarity = 1 },
      {items = {"cannabis:canapa_leaves"}, rarity = 1 },
     -- {items = {"cannabis:canapa_seed"}, rarity = 1 },
   }
},
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})
--function

function minetest.grow_canapa(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if             name ~= "default:dirt_with_grass" 
	           and name ~= "default:dirt" 
	           and name ~= "default:dirt_with_rainforest_litter"
	           and name ~= "default:dry_dirt"
	           and name ~= "default:dirt_with_snow"
	           and name ~= "default:dirt_with_coniferous_litter"   
	            then
		return
	end
	if not minetest.find_node_near(pos, 3, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "cannabis:canapa" and height < 6 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
		if height==6 then
	minetest.set_node(pos, {name = "cannabis:flowering"})
	--minetest.swap_node(pos, {name = "grow:liva2" })
	else
	if height == 6 or node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cannabis:canapa"})
	return true
end
end
--mapgen
minetest.register_abm({
    label = "Grow canapa",
	nodenames = {"cannabis:canapa"},
	neighbors ={"default:dirt_with_grass", 
	            "default:dirt", 
	            "default:dirt_with_rainforest_litter",
	            "default:dry_dirt",
	            "default:dirt_with_snow",
	            "default:dirt_with_coniferous_litter"  
	},
	interval = 2,
	chance = 10,
	action = function(...)
		minetest.grow_canapa(...)
	end
})
if minetest.get_modpath("default") then

--[[minetest.register_biome({
		name = "canapa_swamp",
		--node_dust = "",
		node_top ={ "default:dirt_with_grass",
		             "default:dirt_with_grass" ,
	                "default:dirt" ,
	                "default:dirt_with_rainforest_litter",
	                "default:dry_dirt",
	                "default:dirt_with_snow",
	                "default:dirt_with_coniferous_litter"},
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max = 2,
		heat_point = 89,
		humidity_point = 22,
	})]]
    
    
	
    minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass" ,
	                "default:dirt" ,
	                "default:dirt_with_rainforest_litter",
	                "default:dry_dirt",
	                "default:dirt_with_snow",
	                "default:dirt_with_coniferous_litter" },
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y =100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 1.5
		},
		fill_ratio = 0.03,
        biomes = {--"canapa_swamp",
                   "cold_desert",
                   "rainforest",
                   "grassland_dunes",
                   "coniferous_forest_dunes",
                   "savanna",
                   "taiga",
                   "coniferous_forest",
                   "deciduous_forest",
                   "desert",
                   "sandstone_desert",
                   "cold_desert","canapa_swamp",
                   "tundra_beach",
                   "savanna_shore",
                   "delicious_forest_shore",
                   "grassland",
                   "floatland_grassland"},
        
		y_min = 1,
		y_max = 3,
		decoration = "cannabis:canapa",
		height = 2,
		height_max = 7, 
		spawn_by = "default:water_source",
		num_spawn_by = 1,
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt_with_grass",
		            "default:dirt",
		            "default:sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		 biomes = {--"canapa_swampr",
                   "rainforest_swamp",
                   "savanna",
                   "taiga",
                   "coniferous_forest",
                   "deciduous_forest",
                   "desert",
                   "sandstone_desert",
                   "cold_desert","canapa_swamp",
                   "tundra_beach",
                   "savanna_shore",
                   "delicious_forest_shore",
                   "floatland_grassland"},
		y_min = 0,
		y_max = 0,
		schematic = path .. "/schematics/canapa.mts",--minetest.get_modpath("cannabis").."/schematics/canapa.mts",
	})
end
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
minetest.register_node('cannabis:flowering', {
	description = S("Hemp (flowering)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'cannabis_canapa_flower.png' },
	inventory_image = 'cannabis_canapa_flower.png',
	wield_image = 'cannabis_canapa_flower.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = "cannabis_canapa_s3",
	buildable_to = true,
	  drop = {
   max_items = 3,
   items = {
      {items = {"cannabis:canapa_flower"}, rarity = 1 },
    --  {items = {"cannabis:canapa_leaves"}, rarity = 1 },
        {items = {"cannabis:canapa_seed"}, rarity = 1 },
   }}
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
