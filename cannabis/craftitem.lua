
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

--crafting

minetest.register_craft({
	output = "cannabis:canapa_oil 4 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_flower","cannabis:canapa_raisin","cannabis:canapa_flower"},
	}
})

minetest.register_craft({
	output = "cannabis:canapa_fuel 4 ",
	recipe ={ 
        {"cannabis:canapa","cannabis:canapa",""},    
        {"cannabis:canapa","cannabis:canapa",""},
        {"cannabis:canapa","cannabis:canapa",""},
        }
})

minetest.register_craft({
	output = "cannabis:canapa_plastic 8 ",
	recipe ={ 
        {"cannabis:canapa","cannabis:canapa","cannabis:canapa"},
        {"cannabis:canapa","cannabis:canapa","cannabis:canapa"},
        }
})


          minetest.register_craft({
	output = "cannabis:canapa_glue 10 ",
	recipe = {
		{"cannabis:canapa_plastic","cannabis:canapa_raisin","cannabis:canapa_plastic"},
                {"cannabis:canapa_raisin","cannabis:canapa_oil","cannabis:canapa_raisin"},
                {"cannabis:canapa_plastic","cannabis:canapa_raisin","cannabis:canapa_plastic"},
	}
})
   minetest.register_craft({
	output = "cannabis:climbing ",
	recipe = {
		{"cannabis:canapa_leaves","cannabis:canapa_leaves","cannabis:canapa_leaves"},
                {"cannabis:canapa_leaves","cannabis:canapa_leaves","cannabis:canapa_leaves"},
                {"cannabis:canapa_leaves","cannabis:canapa_leaves","cannabis:canapa_leaves"},
	}
})   
          minetest.register_craft({
	output = "cannabis:hp_block_canapa 4 ",
	recipe = {
		{"cannabis:canapa_fiber","cannabis:canapa_glue","cannabis:canapa_fiber"},
                {"cannabis:canapa_glue","cannabis:canapa_fiber","cannabis:canapa_glue"},
                {"cannabis:canapa_fiber","cannabis:canapa_glue","cannabis:canapa_fiber"},
	}
})

  
        minetest.register_craft({
	output = "cannabis:canapa_raisin 3 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_flower","cannabis:canapa_flower",""},
	}
})
        

minetest.register_craft({
	output = "cannabis:canapa_flower 5 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_leaves","cannabis:canapa_leaves",""},
	}
})


minetest.register_craft({
	output = "cannabis:canapa_seed 10 ",
	recipe = {
		{"cannabis:canapa","",""},
                {"","cannabis:canapa",""},
                {"","","cannabis:canapa"},
	}
})


minetest.register_craft({
	output = "cannabis:canapa_fiber 10 ",
	recipe = {
		{"","","cannabis:canapa"},
                {"","cannabis:canapa",""},
                {"cannabis:canapa","",""},
	}
})

minetest.register_craft({
	output = "cannabis:canapa_paper 6 ",
	recipe = {
		{"cannabis:canapa", "cannabis:canapa", "cannabis:canapa"
                },
	}
})

minetest.register_craft({
	type = "fuel",        
	recipe = "cannabis:canapa",
	burntime = 15,
})

minetest.register_craft({
	type = "fuel",        
	recipe = "cannabis:canapa_fuel",
	burntime = 50,
})



minetest.register_craft({
	type = "shapeless",
	output = "cannabis:canapa_flour 4",
	recipe = {"cannabis:canapa_seed", "cannabis:canapa_seed", "cannabis:canapa_seed", "cannabis:canapa_seed"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "cannabis:canapa_bread",
	recipe = "cannabis:canapa_flour"
})
   minetest.register_craft({
	output = "cannabis:cannabis_foglie_block 5 ",
	recipe = {
		{"cannabis:climbing","cannabis:climbing","cannabis:climbing"},
	    {"cannabis:climbing","cannabis:climbing","cannabis:climbing"},
	 	{"cannabis:climbing","cannabis:climbing","cannabis:climbing"},
	}
})   

minetest.register_craft({
	type = "shapeless",
	output = "cannabis:climbing 9",
	recipe = {"cannabis:cannabis_foglie_block","",""}
})

minetest.register_craft({
	type = "shapeless",
	output = "cannabis:mixed_hr_ingot 3",
	recipe = {"cannabis:fibra_ingot", "cannabis:foglie_ingot", "cannabis:tessuto_ingot"}
})

