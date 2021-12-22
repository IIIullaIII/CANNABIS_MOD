-- get Boilerplate for Translations
local S = cannabis.S
local path = cannabis.path

minetest.register_node("cannabis:canapa_red", {
	description = S("Hemp red"),
	drawtype = "plantlike",
	tiles = {"cannabis_canapa_red.png"},
	inventory_image = "cannabis_canapa_red.png",
	wield_image = "cannabis_canapa_red.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = {snappy = 3, flammable = 2},
sounds ={"cannabis_canapa_s"},
        drop = {
   max_items = 3,
   items = {
      {items = {"cannabis:canapa_red"}, rarity = 1 },
      {items = {"cannabis:canapa_red_leaves"}, rarity = 1 },
      --{items = {"cannabis:canapa_red_seed"}, rarity = 1 },
   }
},
	after_dig_node = function(pos, node, metadata, digger)
		cannabis.dig_up_red(pos, node, digger)
	end,
})
--____________________________________

--function___________________________________________



-- Dig upwards function for dig_up 2 elements
--

function cannabis.dig_up_red(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name or nn.name == "cannabis:flowering_red" then
		minetest.node_dig(np, nn, digger)
	end
end
--______________________________________________________

function minetest.grow_canapa_red(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	        if name ~= "default:sand" 
	        and name ~= "farming:soil_wet"
	       and name ~= "default:desert_sand"
	       and name ~= "default:sandstone"  
	       and name ~= "default:silver_sand"
	       and name ~= "default:dry_dirt_with_dry_grass" 
	       and name ~= "default:dirt_with_grass" 
	       and name ~= "default:dirt" 
	       and name ~= "default:dry_dirt"then
		return
	end
	if not minetest.find_node_near(pos, 5, {"group:water"}) then
		return
	end
	pos.y = pos.y + 1
	local height = 0
	while node.name == "cannabis:canapa_red" and height < 6 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
			if height==6 then
	minetest.set_node(pos, {name = "cannabis:flowering_red"})
		else
	if height == 6 or node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cannabis:canapa_red"})
	return true
end
end
--mapgen
minetest.register_abm({
    label = "Grow canapa red",
	nodenames = {"cannabis:canapa_red"},
	neighbors ={"default:sand",
	            "default:sandstone",
	            "default:desert_sand",
	            "default:silver_sand",
	            "default:dry_dirt_with_dry_grass",
	            "default:dry_dirt",
	            "default:dirt_with_grass",
	            "default:dirt"},
	interval = 2,
	chance = 10,
	action = function(...)
		minetest.grow_canapa_red(...)
	end
})
--___________________________________________________________
if minetest.get_modpath("default") then

	
    minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:silver_sand",
		            "default:desert_sand",
		            "default:dirt",
		            "default:dry_dirt",
		            "default:sand",
		            "default:dry_dirt_with_dry_grass"
		           },
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y =100, z =100},
			seed = 354,
			octaves = 3,
			persist = 1.5
		},
        biomes = {--"canapa_swampr",
                   "sandstone_desert",
                   "savanna",
                   "taiga",
                   "coniferous_forest",
                   "deciduous_forest",
                   "desert",
                   "sandstone_desert",
                   "cold_desert","canapa_swamp",
                   "tundra_beach",
                   "savanna_shore",
                   "savanna_ocean",
                   "delicious_forest_shore",
                   "floatland_grassland"},
		y_min = 1,
		y_max = 2,
		decoration = "cannabis:canapa_red",
		height = 2,
		height_max = 7, 
		spawn_by ="default:water_source",
		num_spawn_by = 1,
	})


--[[	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dry_dirt",
		            "default:dirt",
		            "default:silver_sand",
		            "default:desert_sand",
		            "default:dry_dirt_with_dry_grass",
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
                   "cold_desert",
                   "tundra_beach",
                   "savanna_shore",
                   "delicious_forest_shore",
                   "floatland_grassland"},
		y_min = -1,
		y_max = 0,
		schematic = path .. "/schematics/canapa_red.mts",
	})]]

end
minetest.register_node('cannabis:seedling_r', {
	description = S("Hemp red(seedling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { '1hemp_seedling_red.png' },
	inventory_image = '1hemp_seedling_red.png',
	wield_image = '1hemp_seedling_red.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
sounds ={"cannabis_canapa_s3"},
	buildable_to = true,
})

minetest.register_node('cannabis:sproutling_r', {
	description = S("Hemp red (sproutling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'hemp_sproutling_red.png' },
	inventory_image = 'hemp_sproutling_red.png',
	wield_image = 'hemp_sproutling_red.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
sounds ={"cannabis_canapa_s3"},
	buildable_to = true,
})

minetest.register_node('cannabis:climbing_r', {
	description = S("Hemp red (climbing plant)"),
	drawtype = 'signlike',
	tiles = { 'hemp_climbing_red.png' },
	inventory_image = 'hemp_climbing_red.png',
	wield_image = 'hemp_climbing_red.png',
	sunlight_propagates = true,
	paramtype = 'light',
	paramtype2 = 'wallmounted',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
sounds ={"cannabis_canapa_s3"},
	selection_box = {
		type = "wallmounted",
		--wall_side = = <default>
	},
	buildable_to = true,
})
minetest.register_node('cannabis:flowering_red', {
	description = S("Hemp (Red flowering)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'cannabis_canapa_red_flower.png' },
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.5, 0.3}
	},
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
sounds ={"cannabis_canapa_s3"},
	buildable_to = true,
	  drop = {
   max_items = 3,
   items = {
      {items = {"cannabis:canapa_red_flower"}, rarity = 1 },
      {items = {"cannabis:canapa_red_seed"}, rarity = 1 },
   }}
})
