-- get Boilerplate for Translations
local S = cannabis.S

minetest.register_craftitem("cannabis:canapa_ice_seed", {
	description = S("Hemp Seed"),
	inventory_image = "cannabis_canapa_ice_seed.png",
	groups = {seed = 2, food_artichoke = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "cannabis:canapa_ice")
	end,
	on_use = minetest.item_eat(10),
})

minetest.register_craftitem("cannabis:canapa_ice_leaves", {
	description = S("Hemp Leaves"),
	inventory_image = "cannabis_canapa_ice_leaves.png",
	on_use = minetest.item_eat(5),
})

minetest.register_craftitem("cannabis:canapa_ice_flower", {
	description = S("Hemp ice Flower"),
	inventory_image = "cannabis_canapa_ice_flower.png",
	on_use = minetest.item_eat(5),
})
-------------------------------------------------------------------

minetest.register_craft({
	output = "cannabis:canapa_oil 4 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_ice_flower","cannabis:canapa_ice_raisin","cannabis:canapa_ice_flower"},
	}
})

minetest.register_craft({
	output = "cannabis:canapa_fuel 4 ",
	recipe ={ 
        {"cannabis:canapa_ice","cannabis:canapa_ice",""},    
        {"cannabis:canapa_ice","cannabis:canapa_ice",""},
        {"cannabis:canapa_ice","cannabis:canapa_ice",""},
        }
})

minetest.register_craft({
	output = "cannabis:canapa_plastic 8 ",
	recipe ={ 
        {"cannabis:canapa_ice","cannabis:canapa_ice","cannabis:canapa_ice"},
        {"cannabis:canapa_ice","cannabis:canapa_ice","cannabis:canapa_ice"},
        }
})


          minetest.register_craft({
	output = "cannabis:canapa_glue 10 ",
	recipe = {
		{"cannabis:canapa_ice_plastic","cannabis:canapa_ice_raisin","cannabis:canapa_ice_plastic"},
                {"cannabis:canapa_ice_raisin","cannabis:canapa_ice_oil","cannabis:canapa_ice_raisin"},
                {"cannabis:canapa_ice_plastic","cannabis:canapa_ice_raisin","cannabis:canapa_ice_plastic"},
	}
})
  
          minetest.register_craft({
	output = "cannabis:hp_block_canapa 4 ",
	recipe = {
		{"cannabis:canapa_ice_fiber","cannabis:canapa_ice_glue","cannabis:canapa_ice_fiber"},
                {"cannabis:canapa_ice_glue","cannabis:canapa_ice_fiber","cannabis:canapa_ice_glue"},
                {"cannabis:canapa_ice_fiber","cannabis:canapa_ice_glue","cannabis:canapa_ice_fiber"},
	}
})

  
        minetest.register_craft({
	output = "cannabis:canapa_raisin 3 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_ice_flower","cannabis:canapa_ice_flower",""},
	}
})
       minetest.register_craft({
	output = "cannabis:climbing_i",
	recipe = {
		{"cannabis:canapa_ice_leaves","cannabis:canapa_ice_leaves","cannabis:canapa_ice_leaves"},
                {"cannabis:canapa_ice_leaves","cannabis:canapa_ice_leaves","cannabis:canapa_ice_leaves"},
                {"cannabis:canapa_ice_leaves","cannabis:canapa_ice_leaves","cannabis:canapa_ice_leaves"},
	}
}) 


minetest.register_craft({
	output = "cannabis:canapa_ice_seed 10 ",
	recipe = {
		{"cannabis:canapa_ice","",""},
                {"","cannabis:canapa_ice",""},
                {"","","cannabis:canapa_ice"},
	}
})


minetest.register_craft({
	output = "cannabis:canapa_fiber 10 ",
	recipe = {
		{"","","cannabis:canapa_ice"},
                {"","cannabis:canapa_ice",""},
                {"cannabis:canapa_ice","",""},
	}
})

minetest.register_craft({
	output = "cannabis:canapa_paper 6 ",
	recipe = {
		{"cannabis:canapa_ice", "cannabis:canapa_ice", "cannabis:canapa_ice"
                },
	}
})

minetest.register_craft({
	type = "fuel",        
	recipe = "cannabis:canapa_ice",
	burntime = 15,
})




minetest.register_craft({
	type = "shapeless",
	output = "cannabis:canapa_ice_flour 4",
	recipe = {"cannabis:canapa_ice_seed", "cannabis:canapa_ice_seed", "cannabis:canapa_ice_seed", "cannabis:canapa_ice_seed"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "cannabis:canapa_bread",
	recipe = "cannabis:canapa_flour"
})

 minetest.register_craft({
	output = "cannabis:cannabis_foglie_ice_block",
	recipe = {
		{"cannabis:climbing_i","cannabis:climbing_i","cannabis:climbing_i"},
         {"cannabis:climbing_i","cannabis:climbing_i","cannabis:climbing_i"},
           {"cannabis:climbing_i","cannabis:climbing_i","cannabis:climbing_i"},
	}
})   

minetest.register_craft({
	type = "shapeless",
	output = "cannabis:mixed_hr_ingot 3",
	recipe = {"cannabis:fibra_ingot", "cannabis:foglie_ingot", "cannabis:tessuto_ingot"}
})
minetest.register_craft({
	type = "shapeless",
	output = "cannabis:climbing_i 9",
	recipe = {"cannabis:cannabis_foglie_ice_block", "", ""}
})
