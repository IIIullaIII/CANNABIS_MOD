
	minetest.register_craftitem("cannabis:joint_fumo_acceso", {
	description = "Joint fumo acceso",
	inventory_image = "joint_joint_fac.png",
	stack_max = 1 ,
	on_use = function(itemstack, user, pointed_thing)
		     itemstack:add_wear(1000)		     
		return itemstack
		end
    
	})
	minetest.register_craftitem("cannabis:joint_erba_spento", {
	description = "Joint erba spento",
	inventory_image = "joint_joint_csp.png",
   	
	})
	minetest.register_craftitem("cannabis:joint_fumo_spento", {
	description = "Joint fumo spento",
	inventory_image = "joint_joint_fsp.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cima", {
	description = "Joint cima triturata",
	inventory_image = "joint_cima_s.png",
    
	})
	minetest.register_craftitem("cannabis:joint_fumo", {
	description = "Joint fumo triturato",
	inventory_image = "joint_fumo_s.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cartina", {
	description = "Joint cartina",
	inventory_image = "joint_cartina.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cartina_cima", {
	description = "Joint cartina con erba",
	inventory_image = "joint_cartina_cima.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cartina_fumo", {
	description = "Joint cartina con fumo",
	inventory_image = "joint_cartina_fumo.png",
    
	})
    minetest.register_craftitem("cannabis:joint_filter_box", {
	description = "Joint filter confezione",
	inventory_image = "joint_filter_p.png",
    
	})
	 minetest.register_craftitem("cannabis:joint_filter", {
	description = "Joint filto",
	inventory_image = "joint_filter.png",
    
	})
	minetest.register_craftitem("cannabis:joint_accendino", {
	description = "Joint accendino",
	inventory_image = "joint_accendino.png",
    
	})
	--______________________________________________________________________________
	--craft
    --______________________________________________________________________________
    minetest.register_craft({
	output = "cannabis:joint_fumo 3 ",
	recipe = {
		{"","",""},
        {"","cannabis:canapa_raisin",""},
        {"","cannabis:joint_accendino",""},
	}
})
    minetest.register_craft({
	output = "cannabis:joint_cima 3 ",
	recipe = {
		{"","cannabis:canapa_leaves",""},
        {"","cannabis:canapa_flower",""},
        {"","cannabis:canapa_leaves",""},
	}
})
       minetest.register_craft({
	output = "cannabis:joint_accendino 5 ",
	recipe = {
		{"default:steel_ingot","fire:flint_and_steel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_fuel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_plastic","cannabis:canapa_plastic"},
	}
})
        minetest.register_craft({
	output = "cannabis:joint_cartina 10 ",
	recipe = {
		{"","",""},
                {"","",""},
                {"cannabis:canapa_paper","cannabis:canapa_paper","cannabis:canapa_paper"},
	}
})
       minetest.register_craft({
	output = "cannabis:joint_cartina_cima ",
	recipe = {
		{"","",""},
        {"","cannabis:joint_cima",""},
        {"","cannabis:joint_cartina",""},
	}
})
      minetest.register_craft({
	output = "cannabis:joint_cartina_fumo ",
	recipe = {
		{"","",""},
        {"","cannabis:joint_fumo","cannabis:canapa_leaves"},
        {"","cannabis:joint_cartina",""},
	}
})
      minetest.register_craft({
	output = "cannabis:joint_filter_box ",
	recipe = {
		{"","",""},
        {"cannabis:canapa_paper","cannabis:canapa_paper",""},
        {"cannabis:canapa_paper","cannabis:canapa_paper",""},
	}
})
 minetest.register_craft({
	type = "shapeless",
	output = "cannabis:joint_filter 10 ",
	recipe = {"cannabis:joint_filter_box", "", "", ""}
})
   minetest.register_craft({
	output = "cannabis:joint_fumo_spento ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_filter","cannabis:joint_cartina_fumo",""},
	}
})
 minetest.register_craft({
	output = "cannabis:joint_erba_spento ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_filter","cannabis:joint_cartina_cima",""},
	}
})
 minetest.register_craft({
	output = "cannabis:joint_fumo_acceso ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_fumo_spento","cannabis:joint_accendino",""},
	}
})
minetest.register_craft({
	output = "cannabis:joint_erba_acceso ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_erba_spento","cannabis:joint_accendino",""},
	}
})
-----------------------------------------
--local smokeCOLOR = {
   -- green = { a=64, r=1, g=255, b=1 } ,
   -- blue  = { a=64, r=1, g=1,   b=25 },
--}

-- Iterate through waters.
-- Color wll be the key (green or blue)
-- underwatercolor will be the value (one of the tables above)
--for color, smokecolor in pairs(smokeCOLOR) do
    -- water
    minetest.register_craftitem("cannabis:joint_erba_acceso", {
	description = "Joint erba acceso",
	inventory_image = "joint_joint_cac.png",
    stack_max = 1 ,
   -- post_effect_color = smokeCOLOR,
    on_use = function(itemstack, user, pointed_thing)
            
		     itemstack:add_wear(1000)     
		return itemstack 
	
	           
	            end
    })

--end
