minetest.register_alias("canapa", "cannabis:canapa")
--nodes

local S = cannabis.S

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
	groups = {snappy=3,flammable=2},
	sounds = default.node_sound_leaves_defaults(),
        drop = {
   max_items = 2,
   items = {
      {items = {"cannabis:canapa"}, rarity = 1 },
      {items = {"cannabis:canapa_leaves"}, rarity = 1 },
   }
},
	after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
})

-- Papyrus


	-- canapa mapgen

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 50, y = 50, z = 50},
			seed = 454,
			octaves = 3,
			persist = 0.7 
                },
		y_min = 1,
		y_max = 1,
		decoration = "cannabis:canapa",
		height = 2,
		height_max = 6,
		spawn_by = "default:water_source",
		num_spawn_by = 1,
	})



--mapgen cannabis
        	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"default:dirt", "default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x=100, y=100, z=100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_shore"},
		y_min = 1,
		y_max = 6,
		schematic = minetest.get_modpath("cannabis").."/schematics/canapa.mts",
	})
        
      --  canapa grow
        
        function minetest.grow_canapa(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "default:dirt_with_grass" and name ~= "default:dirt" then
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
	if height == 6 or node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cannabis:canapa"})
	return true
        end
        
minetest.register_abm({
	nodenames = {"cannabis:canapa"},
	neighbors = {"default:dirt", "default:dirt_with_grass"},
	interval = 10,
	chance = 2,
	action = function(...)
		minetest.grow_canapa(...)
	end
})



function default.dig_up(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name then
		minetest.node_dig(np, nn, digger)
	end
end

--craft

minetest.register_craft({
	output = 'cannabis:paper',
	recipe = {
		{'cannabis:canapa', 'cannabis:canapa', 'cannabis:canapa'},
	}
})
minetest.register_craft({
	output = 'cannabis:canapa_fuel 4 ',
	recipe ={ 
        {"cannabis:canapa","cannabis:canapa",""},    
        {"cannabis:canapa","cannabis:canapa",""},
        {"cannabis:canapa","cannabis:canapa",""},
        }
})
    minetest.register_craft({
	type = "fuel",        
	recipe = "cannabis:canapa_fuel",
	burntime = 25,
})

minetest.register_craft({
	type = "fuel",
	recipe = "cannabis:canapa",
	burntime = 10,
})
