-- get Boilerplate for Translations
local S = cannabis.S

--craft item :fiber, fuel, plastic, paper,flower,oil,flour,bred,resin,seed,leaves

minetest.register_craftitem("cannabis:canapa_fiber", {
	description = S("Fiber"),
	inventory_image = "cannabis_canapa_fiber.png",
})
minetest.register_craftitem("cannabis:canapa_fuel", {
	description = S("BioFuel"),
	inventory_image = "cannabis_fuel.png",
})

minetest.register_craftitem("cannabis:canapa_plastic", {
	description = S("Plastic"),
	inventory_image = "cannabis_plastic.png",
})
minetest.register_craftitem("cannabis:canapa_cloth", {
	description = S("Cloth"),
	inventory_image = "cannabis_cloth.png",
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
	groups = {seed = 2, food_artichoke = 1, flammable = 2},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.place_seed(itemstack, placer, pointed_thing, "cannabis:canapa")
	end,
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
	description = S("Hemp Resin"),
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

--crafting
--____________________________________________________________________________oil_______________________________________
minetest.register_craft({
	output = "cannabis:canapa_oil 4 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_flower","cannabis:canapa_raisin","cannabis:canapa_flower"},
	}
})
--________________________________________________________________________fuel________________________________________________
minetest.register_craft({
	output = "cannabis:canapa_fuel 4 ",
	recipe ={ 
        {"cannabis:canapa","cannabis:canapa",""},    
        {"cannabis:canapa","cannabis:canapa",""},
        {"cannabis:canapa","cannabis:canapa",""},
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
	burntime = 70,
})
--_______________________________________________________________________plastic__________________________________________________
minetest.register_craft({
	output = "cannabis:canapa_plastic 8 ",
	recipe ={ 
        {"cannabis:canapa","cannabis:canapa","cannabis:canapa"},
        {"cannabis:canapa","cannabis:canapa","cannabis:canapa"},
        }
})
--________________________________________________________________________glue_____________________________________________________
minetest.register_craft({
	output = "cannabis:canapa_glue 10 ",
	recipe = {
		{"cannabis:canapa_plastic","cannabis:canapa_raisin","cannabis:canapa_plastic"},
                {"cannabis:canapa_raisin","cannabis:canapa_oil","cannabis:canapa_raisin"},
                {"cannabis:canapa_plastic","cannabis:canapa_raisin","cannabis:canapa_plastic"},
	}
})
--________________________________________________________________________climbing___________________________________________________
minetest.register_craft({
	output = "cannabis:climbing",
	recipe = {
		{"cannabis:canapa_leaves","cannabis:canapa_leaves","cannabis:canapa_leaves"},
                {"cannabis:canapa_leaves","cannabis:canapa_leaves","cannabis:canapa_leaves"},
                {"cannabis:canapa_leaves","cannabis:canapa_leaves","cannabis:canapa_leaves"},
	}
})

--_____________________________________________________________________________CRAFT BLOCK______________________________________________


--________________________________________________________________________foglie_____________________________________________________

minetest.register_craft({
	output = "cannabis:cannabis_foglie_block 5 ",
	recipe = {
		{"cannabis:climbing","cannabis:climbing","cannabis:climbing"},
	    {"cannabis:climbing","cannabis:climbing","cannabis:climbing"},
	 	{"cannabis:climbing","cannabis:climbing","cannabis:climbing"},
	}
})   
   
--_______________________________________________________________________hp_block_canapa_______________________________________________
minetest.register_craft({
	output = "cannabis:hp_block_canapa 4 ",
	recipe = {
		{"cannabis:canapa_fiber","cannabis:canapa_glue","cannabis:canapa_fiber"},
                {"cannabis:canapa_glue","cannabis:canapa_fiber","cannabis:canapa_glue"},
                {"cannabis:canapa_fiber","cannabis:canapa_glue","cannabis:canapa_fiber"},
	}
})



--____________________________________________________________________________________________________________
--________________________________________________________________________resina (fumo)_______________________
minetest.register_craft({
	output = "cannabis:canapa_raisin 3 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_flower","cannabis:canapa_flower",""},
	}
})
--________________________________________________________________________tessuto______________________________
minetest.register_craft({
	output = "cannabis:canapa_cloth 3 ",
	recipe = {
		{"cannabis:canapa_fiber", "cannabis:canapa_fiber", "cannabis:canapa_fiber"},
        {"cannabis:canapa_fiber", "cannabis:canapa_fiber", "cannabis:canapa_fiber"},
	}
})
--________________________________________________________________________fiber_________________________________
minetest.register_craft({
	output = "cannabis:canapa_fiber 10 ",
	recipe = {
		{"","","cannabis:canapa"},
                {"","cannabis:canapa",""},
                {"cannabis:canapa","",""},
	}
})
--_________________________________________________________________________paper_________________________________
minetest.register_craft({
	output = "cannabis:canapa_paper 6 ",
	recipe = {
		{"cannabis:canapa", "cannabis:canapa", "cannabis:canapa"
                },
	}
})
minetest.register_craft({
	output = "default:paper 10 ",
	recipe = {
		{"cannabis:canapa_paper"},
	}
})
--_________________________________________________________________________flour__________________________________
minetest.register_craft({
	type = "shapeless",
	output = "cannabis:canapa_flour 4",
	recipe = {"cannabis:canapa_seed", "cannabis:canapa_seed", "cannabis:canapa_seed", "cannabis:canapa_seed"}
})
--_________________________________________________________________________bread___________________________________
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "cannabis:canapa_bread",
	recipe = "cannabis:canapa_flour"
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

--____________________________________________________________________________ register bag crafts_____________________________________
if minetest.get_modpath("unified_inventory") ~= nil then
	minetest.register_craft({
		output = "cannabis:bag_bob_small",
		recipe = {
			{"","cannabis:canapa_fiber",""},
			{"cannabis:canapa_cloth", "cannabis:canapa_cloth",     "cannabis:canapa_cloth"},
			{"cannabis:canapa_cloth", "cannabis:canapa_cloth",     "cannabis:canapa_cloth"},
		},
	})
	

	minetest.register_craft({
		output = "cannabis:bag_bob_medium",
		recipe = {
			{"cannabis:canapa_cloth","","cannabis:canapa_cloth"},
			{"cannabis:canapa_fiber", "cannabis:bag_bob_small", "cannabis:canapa_fiber"},
			{"cannabis:canapa_fiber", "cannabis:bag_bob_small", "cannabis:canapa_fiber"},
		},
	})

	minetest.register_craft({
		output = "cannabis:bag_bob_large",
		recipe = {
			{"cannabis:canapa_cloth","cannabis:canapa_cloth","cannabis:canapa_cloth"},
			{"cannabis:cannabis_tessuto_block", "cannabis:bag_bob_medium", "cannabis:cannabis_tessuto_block"},
			{"cannabis:cannabis_tessuto_block", "cannabis:bag_bob_medium", "cannabis:cannabis_tessuto_block"},
	    },
	})

end
