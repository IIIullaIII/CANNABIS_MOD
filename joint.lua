-- get Boilerplate for Translations
local S = cannabis.S

	minetest.register_craftitem("cannabis:joint_fumo_acceso", {
	description = S("Joint of hash lit"),
	inventory_image = "joint_joint_fac.png",
	stack_max = 1 ,
	on_use = function(itemstack, user, pointed_thing)
		     itemstack:add_wear(1000)		     
		return itemstack
		end
    
	})
	   minetest.register_craftitem("cannabis:joint_erba_acceso", {
	description = S("Joint of weed lit"),
	inventory_image = "joint_joint_cac.png",
    stack_max = 1 ,
   -- post_effect_color = smokeCOLOR,
    on_use = function(itemstack, user, pointed_thing)
            
		     itemstack:add_wear(1000)     
		return itemstack 
	
	           
	            end
    })
	minetest.register_craftitem("cannabis:joint_erba_spento", {
	description = S("Joint of weed unlit"),
	inventory_image = "joint_joint_csp.png",
   	
	})
	minetest.register_craftitem("cannabis:joint_fumo_spento", {
	description = S("Joint of hash unlit"),
	inventory_image = "joint_joint_fsp.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cima", {
	description = S("Flowering chopped"),
	inventory_image = "joint_cima_s.png",
    
	})
	minetest.register_craftitem("cannabis:joint_fumo", {
	description = S("Hash melted"),
	inventory_image = "joint_fumo_s.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cartina", {
	description = S("Rolling paper"),
	inventory_image = "joint_cartina.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cartina_cima", {
	description = S("Rolling paper with hemp leaves and flowering chopped "),
	inventory_image = "joint_cartina_cima.png",
    
	})
	minetest.register_craftitem("cannabis:joint_cartina_fumo", {
	description = S("Rolling paper with hemp leaves melted hash"),
	inventory_image = "joint_cartina_fumo.png",
    
	})
    minetest.register_craftitem("cannabis:joint_filter_box", {
	description = S("Filters pack"),
	inventory_image = "joint_filter_p.png",
    
	})
	 minetest.register_craftitem("cannabis:joint_filter", {
	description = S("Filter"),
	inventory_image = "joint_filter.png",
    
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
 minetest.register_craft({
	output = "cannabis:joint_accendino 5 ",
	recipe = {
		{"default:steel_ingot","default:torch","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_fuel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_plastic","cannabis:canapa_plastic"},
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
--end
if minetest.get_modpath("fire") then
      minetest.register_craft({
	output = "cannabis:joint_accendino 5 ",
	recipe = {
		{"default:steel_ingot","fire:flint_and_steel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_fuel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_plastic","cannabis:canapa_plastic"},
	}
})
end
