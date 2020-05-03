minetest.register_node("cannabis:canapa_red", {
	description = "Canapa",
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
	sounds = "cannabis_canapa_s",
        drop = {
   max_items = 3,
   items = {
      {items = {"cannabis:canapa_red"}, rarity = 1 },
      {items = {"cannabis:canapa_red_leaves"}, rarity = 1 },
      {items = {"cannabis:canapa_red_seed"}, rarity = 1 },
   }
},
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})
--function

function minetest.grow_canapa_red(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:desert_sand" and name ~= "default:sand" then
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
	if height == 5 or node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cannabis:canapa_red"})
	return true
end
--mapgen
minetest.register_abm({
    label = "Grow canapa red",
	nodenames = {"cannabis:canapa_red"},
	neighbors ={"default:desert_sand","default:sand"},
	interval = 5,
	chance = 40,
	action = function(...)
		minetest.grow_canapa_red(...)
	end
})
minetest.register_biome({
		name = "canapa_swampr",
		--node_dust = "",
		node_top ={"default:desert_sand","summer:sabbia_mare"},
		depth_top = 1,
		node_filler = "default:desert_sand",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max =31000,
		--heat_point = 0,
	--	humidity_point = 1,
	})
    
    
	
    minetest.register_decoration({
		deco_type = "simple",
		place_on = {"summer:sabbia_mare","default:dirt_with_grass","default:desert_sand","default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 1,
			octaves = 3,
			persist = 1.5
		},
        biomes = {"canapa_swampr"},
		y_min = 1,
		y_max = 5,
		decoration = "cannabis:canapa_red",
		height = 5,
		height_max = 5, 
		spawn_by ={ "default:desert_sand","default:sand"},
		num_spawn_by = 1,
	})


	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt","default:dirt_with_grass","default:desert_sand","default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"canapa_swampr"},
		y_min = 0,
		y_max = 31000,
		schematic = "canapa.mts",
	})


minetest.register_node('cannabis:seedling_r', {
	description = ("hemp red(seedling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { '1hemp_seedling_red.png' },
	inventory_image = '1hemp_seedling_red.png',
	wield_image = '1hemp_seedling_red.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = "cannabis_canapa_s3",
	buildable_to = true,
})

minetest.register_node('cannabis:sproutling_r', {
	description = ("hemp red (sproutling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'hemp_sproutling_red.png' },
	inventory_image = 'hemp_sproutling_red.png',
	wield_image = 'hemp_sproutling_red.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = "cannabis_canapa_s3",
	buildable_to = true,
})

minetest.register_node('cannabis:climbing_r', {
	description = ("hemp red (climbing plant)"),
	drawtype = 'signlike',
	tiles = { 'hemp_climbing_red.png' },
	inventory_image = 'hemp_climbing_red.png',
	wield_image = 'hemp_climbing_red.png',
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
