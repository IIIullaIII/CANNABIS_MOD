--crafting

minetest.register_craft({
	output = 'cannabis:canapa_oil 4 ',
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_flower","cannabis:canapa_raisin","cannabis:canapa_flower"},
	}
})



minetest.register_craft({
	output = 'cannabis:canapa_plastic 8 ',
	recipe ={ 
        {"cannabis:canapa","cannabis:canapa","cannabis:canapa"},
        {"cannabis:canapa","cannabis:canapa","cannabis:canapa"},
        }
})


          minetest.register_craft({
	output = 'cannabis:canapa_glue 10 ',
	recipe = {
		{"cannabis:canapa_plastic","cannabis:canapa_raisin","cannabis:canapa_plastic"},
                {"cannabis:canapa_raisin","cannabis:canapa_oil","cannabis:canapa_raisin"},
                {"cannabis:canapa_plastic","cannabis:canapa_raisin","cannabis:canapa_plastic"},
	}
})
  
          minetest.register_craft({
	output = 'cannabis:hp_block_canapa 4 ',
	recipe = {
		{"cannabis:canapa_fiber","cannabis:canapa_glue","cannabis:canapa_fiber"},
                {"cannabis:canapa_glue","cannabis:canapa_fiber","cannabis:canapa_glue"},
                {"cannabis:canapa_fiber","cannabis:canapa_glue","cannabis:canapa_fiber"},
	}
})

  
        minetest.register_craft({
	output = 'cannabis:canapa_raisin 3 ',
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_flower","cannabis:canapa_flower",""},
	}
})
        

minetest.register_craft({
	output = 'cannabis:canapa_flower 5 ',
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_leaves","cannabis:canapa_leaves",""},
	}
})


minetest.register_craft({
	output = 'cannabis:canapa_seed 10 ',
	recipe = {
		{"cannabis:canapa","",""},
                {"","cannabis:canapa",""},
                {"","","cannabis:canapa"},
	}
})


minetest.register_craft({
	output = 'cannabis:canapa_fiber 10 ',
	recipe = {
		{"","","cannabis:canapa"},
                {"","cannabis:canapa",""},
                {"cannabis:canapa","",""},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "cannabis:canapa_flour 4",
	recipe = {"cannabis:canapa_seed", "cannabis:canapa_seed", "cannabis:canapa_seed", "cannabis:canapa_seed"}
})

minetest.register_craft({
	type = "cooking",
	cooktime = 15,
	output = "cannabis:canapa_bread",
	recipe = "cannabis:canapa_flour"
})
--__________________________________________________________________________________________________

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
	burntime = 5,
})
    minetest.register_craft({
	output = 'cannabis:canapa_paper 6 ',
	recipe = {
		{'cannabis:canapa', 'cannabis:canapa', 'cannabis:canapa'
                },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "cannabis:climbing 30",
	recipe = {"cannabis:cannabis_foglie_block", "cannabis:cannabis_foglie_block", "cannabis:cannabis_foglie_block"}
})

minetest.register_craft({
	type = "shapeless",
	output = "cannabis:mixed_hr_ingot 3",
	recipe = {"cannabis:fibra_ingot", "cannabis:foglie_ingot", "cannabis:tessuto_ingot"}
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_fiber",
	output = "cannabis:fibra_ingot",
})


minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_leaves",
	output = "cannabis:foglie_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_paper",
	output = "cannabis:tessuto_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "cannabis:canapa_plastic",
	cooktime = 2,
	output = "cannabis:high_performance_ingot",
})
