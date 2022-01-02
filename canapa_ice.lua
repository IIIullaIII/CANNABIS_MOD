-- get Boilerplate for Translations
local S = cannabis.S
local path = cannabis.path

minetest.register_node("cannabis:canapa_ice", {
	description = S("Hemp ice"),
	drawtype = "plantlike",
	tiles = {"cannabis_canapa_ice.png"},
	inventory_image = "cannabis_canapa_ice.png",
	wield_image = "cannabis_canapa_ice.png",
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
      {items = {"cannabis:canapa_ice"}, rarity = 1 },
      {items = {"cannabis:canapa_ice_leaves"}, rarity = 1 },
      --{items = {"cannabis:canapa_ice_seed"}, rarity = 1 },
   }
},
	after_dig_node = function(pos, node, metadata, digger)
		cannabis.dig_up_ice(pos, node, digger)
	end,
})
--____________________________________
if minetest.get_modpath("farming") then
function minetest.grow_canapa_ice(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	        if name ~= "farming:soil_wet"
	       then
		return
	end
	if not minetest.find_node_near(pos, 5, {"default:water"}) then
		return
	end
	
	pos.y = pos.y + 1
	local height = 0
	while node.name == "cannabis:canapa_ice" and height < 6 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
			if height==6 then
	minetest.set_node(pos, {name = "cannabis:flowering_ice"})
		else
	if height == 6 or node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cannabis:canapa_ice"})
	return true
end
end
end
--___________________________________
--function


-- Dig upwards function for dig_up 2 elements
--

function cannabis.dig_up_ice(pos, node, digger)
	if digger == nil then return end
	local np = {x = pos.x, y = pos.y + 1, z = pos.z}
	local nn = minetest.get_node(np)
	if nn.name == node.name or nn.name == "cannabis:flowering_ice" then
		minetest.node_dig(np, nn, digger)
	end
end


--____________________________________


function minetest.grow_canapa_ice(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	        if name ~= "default:sand" 
	       and name ~= "farming:soil_wet"
	       --and name ~= "farming:soil"
	       and name ~= "default:silver_sand"
	       and name ~= "default:dirt_with_snow"
	       and name ~= "default:permafrost_with_moss"
	       and name ~= "default:dirt" 
	       and name ~= "default:dirt_with_coniferous_litter" then
		return
	end
	if not minetest.find_node_near(pos, 5, {"default:snow"}) then
		return
	end
	--[[if minetest.get_modpath("farming") then
	 local name=minetest.get_node(pos).name 
	if name ~= "farming:soil_wet" then 
	return 
	end
	end
	if minetest.get_modpath("farming") then
	 if not minetest.find_node_near(pos, 5, {"default:water"}) then
		return
		end
		end]]
	pos.y = pos.y + 1
	local height = 0
	while node.name == "cannabis:canapa_ice" and height < 6 do
		height = height + 1
		pos.y = pos.y + 1
		node = minetest.get_node(pos)
	end
			if height==6 then
	minetest.set_node(pos, {name = "cannabis:flowering_ice"})
		else
	if height == 6 or node.name ~= "air" then
		return
	end
	minetest.set_node(pos, {name = "cannabis:canapa_ice"})
	return true
end
end
--mapgen
minetest.register_abm({
    label = "Grow canapa ice",
	nodenames = {"cannabis:canapa_ice"},
	neighbors ={    "default:silver_sand",
		            "default:dirt",
		            "default:sand",
		           	"default:dirt_with_snow", 
		           	"default:dirt_with_coniferous_litter",
		           	"default:permafrost_with_moss",},
	interval = 2,
	chance = 10,
	action = function(...)
		minetest.grow_canapa_ice(...)
	end
})
--___________________________________________________________
if minetest.get_modpath("default") then
    
	
    minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:silver_sand",
		            "default:dirt",
		            "default:sand",
		           	"default:dirt_with_snow", 
		           	"default:dirt_with_coniferous_litter",
		           	"default:permafrost_with_moss",
		           	     },
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y =100, z =100},
			seed = 354,
			octaves = 1,
			persist = 1
		},
        biomes = {
                   "taiga",
                   "coniferous_forest",
                   "tundra",
                   "snowy_grassland",
                   "cold_desert",
                   "tundra_beach",
                   "delicious_forest_shore",
                   "floatland_coniferous_forest"},
		y_min = 6,
		y_max = 31000,
		decoration = "cannabis:canapa_ice",
		height = 2,
		height_max = 7, 
		spawn_by ="default:snow",
		num_spawn_by = 1,
	})




end
minetest.register_node('cannabis:seedling_i', {
	description = S("Hemp ice(seedling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { '1hemp_seedling_ice.png' },
	inventory_image = '1hemp_seedling_ice.png',
	wield_image = '1hemp_seedling_ice.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds ={"cannabis_canapa_s3"},
	buildable_to = true,
})

minetest.register_node('cannabis:sproutling_i', {
	description = S("Hemp ice (sproutling)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'hemp_sproutling_ice.png' },
	inventory_image = 'hemp_sproutling_ice.png',
	wield_image = 'hemp_sproutling_ice.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
sounds ={"cannabis_canapa_s3"},
	buildable_to = true,
})

minetest.register_node('cannabis:climbing_i', {
	description = S("Hemp ice (climbing plant)"),
	drawtype = 'signlike',
	tiles = { 'hemp_climbing_ice.png' },
	inventory_image = 'hemp_climbing_ice.png',
	wield_image = 'hemp_climbing_ice.png',
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
minetest.register_node('cannabis:flowering_ice', {
	description = S("Hemp (Ice flowering)"),
	drawtype = 'plantlike',
	waving = 1,
	tiles = { 'cannabis_canapa_ice_flower.png' },
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
      {items = {"cannabis:canapa_ice_flower"}, rarity = 1 },
      {items = {"cannabis:canapa_ice_seed"}, rarity = 1 },
   }}
})
