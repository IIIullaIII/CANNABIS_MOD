-- get Boilerplate for Translations
local S = cannabis.S
local path = cannabis.path

	--[[minetest.register_craftitem("cannabis:joint_fumo_acceso", {
	description = S("Joint of hash lit"),
	inventory_image = "joint_joint_fac.png",
	stack_max = 1 ,
	on_use = function(pos,player,pointed_thing)
local p = player:get_pos()

        minetest.add_particlespawner({
                amount = 600,
                time = 3,
				minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
				maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
				minvel = {x=0.2, y=0.2, z=0.2},
				maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
				texture = "j_smoke.png",
			--	playername = player
			toggle_eyes(player:get_player_name(), 1)
	
    })   
    minetest.sound_play("canapa_joint", {
	to_player = "",
	gain = 1.0,
            }) 
            after_use=minetest.item_eat(2)
           after_use =function(itemstack, user, pointed_thing)
		     itemstack:take_item()		     
		return 
		end 
                     
     end
        }) ]]
--______________________________________________________________________________________________________________________________________________
--|                                                                                                                                             |
--|                                                                       CRAFT ITEM JOINT                                                      |
--|_____________________________________________________________________________________________________________________________________________|
      
      
--_______________________________________________________________________fumo spento___________________________________________________________________
	minetest.register_craftitem("cannabis:joint_fumo_spento", {
	description = S("Joint of hash unlit"),
	inventory_image = "joint_joint_fsp.png",
    
	})
--_______________________________________________________________________erba verde spento_____________________________________________________________  
        minetest.register_craftitem("cannabis:joint_erba_spento", {
	description = S("Joint of weed unlit"),
	inventory_image = "joint_joint_csp.png",
   	
	})
--_______________________________________________________________________erba rossa spento_____________________________________________________________  
	minetest.register_craftitem("cannabis:joint_erba_rossa_spento", {
	description = S("Joint of red_weed unlit"),
	inventory_image = "joint_joint_cspr.png",
   	
	})
--_______________________________________________________________________erba ice spento_______________________________________________________________  
	minetest.register_craftitem("cannabis:joint_erba_ice_spento", {
	description = S("Joint of ice_weed unlit"),
	inventory_image = "joint_joint_cspi.png",
    
	})

--_______________________________________________________________________FUMO ACCESO___________________________________________________________________


--[[ ___________________________________________________________________________________________________________________________________________________________
    |                                                                                                                                                           |
    |          	                                                                                                                                                |
    |               local item = ItemStack("my_mod:my_item")               --aggiunge un item dopo l uso codice da mettere alla fine come il codice del sound   |
    |               player:get_inventory():add_item("main", item)                                                                                               |
    |                                                                                                                                                           |
    |                                                                                                                                                           |
    |___________________________________________________________________________________________________________________________________________________________|]]

        
   	minetest.register_craftitem("cannabis:joint_fumo_acceso", {
    description = S("Joint of hash lit"),
    inventory_image = "joint_joint_fac.png",
    stack_max = 1,
    on_use = function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()
            minetest.add_particlespawner({
                amount = 600,
                time = 3,
                minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
                maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
                minvel = {x=0.2, y=0.2, z=0.2},
                maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
                texture = "j_smoke_f.png"
            })   
            minetest.sound_play("canapa_joint", { to_player = "", gain = 1.0 })
            toggle_f_eyes(player:get_player_name(), 1)
            local new_stack = ItemStack("cannabis:joint_fumo_acceso_m")  
            return new_stack
        end
    end
})

--_______________________________________________________________________FUMO ACCESO CONSUMATO_______________________________________________________
                 
 minetest.register_craftitem("cannabis:joint_fumo_acceso_m", {
    description = S("Half Joint of hash lit"),
    inventory_image = "joint_joint_fac_m.png",
    stack_max = 1,
    on_use = function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()
            minetest.add_particlespawner({
                amount = 500,
                time = 3,
                minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
                maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
                minvel = {x=0.2, y=0.2, z=0.2},
                maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
                texture = "j_smoke_f.png"
            })   
            minetest.sound_play("canapa_joint_f", { to_player = "", gain = 1.0 })
            toggle_f_eyes(player:get_player_name(), 1)
            return itemstack
        end
    end
})

--______________________________________________________________________ E. VERDE ACCESA_________________________________________________


	   minetest.register_craftitem("cannabis:joint_erba_acceso", {
	description = S("Joint of weed lit"),
	inventory_image = "joint_joint_cac.png",
    stack_max = 1 ,
   -- post_effect_color = smokeCOLOR,
    on_use =function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()

        minetest.add_particlespawner({
                amount = 600,
                time = 3,
				minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
				maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
				minvel = {x=0.2, y=0.2, z=0.2},
				maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
				texture = "j_smoke_v.png",
		    })
    minetest.sound_play("canapa_joint_v", { to_player = "", gain = 1.0 })
            toggle_v_eyes(player:get_player_name(), 1)
            local new_stack = ItemStack("cannabis:joint_erba_acceso_m")  -- sostituisce un item con un altro item
            return new_stack
        end
    end	
 })
--_______________________________________________________________________E. VERDE CONSUMATA_______________________________________
            
	   minetest.register_craftitem("cannabis:joint_erba_acceso_m", {
    description = S("Half Joint of weed lit"),
    inventory_image = "joint_joint_cac_m.png",
    stack_max = 1,
    on_use = function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()
            minetest.add_particlespawner({
                amount = 500,
                time = 3,
                minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
                maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
                minvel = {x=0.2, y=0.2, z=0.2},
                maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
                texture = "j_smoke_v.png"
            })   
    minetest.sound_play("canapa_joint_v", { to_player = "", gain = 1.0 })
            toggle_v_eyes(player:get_player_name(), 1)
            return itemstack
        end
    end
})
	
--_______________________________________________________________________E. ROSSA______________________________________

	   minetest.register_craftitem("cannabis:joint_erba_rossa_acceso", {
	description = S("Joint of red weed lit"),
	inventory_image = "joint_joint_cacr.png",
    stack_max = 1 ,
    on_use =function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()

        minetest.add_particlespawner({
                amount = 600,
                time = 3,
				minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
				maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
				minvel = {x=0.2, y=0.2, z=0.2},
				maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
				texture = "j_smoke_r.png",
		    })
    minetest.sound_play("canapa_joint_r", { to_player = "", gain = 1.0 })
            toggle_r_eyes(player:get_player_name(), 1)
      local new_stack = ItemStack("cannabis:joint_erba_rossa_acceso_m")  -- sostituisce un item con un altro item
            return new_stack
        end
    end	
 })
--_______________________________________________________________________E.ROSSA ACCESA CONSUMATA_______________________
            
	minetest.register_craftitem("cannabis:joint_erba_rossa_acceso_m", {
    description = S("Half Joint of red weed lit"),
    inventory_image = "joint_joint_cacr_m.png",
    stack_max = 1,
    on_use = function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()
            minetest.add_particlespawner({
                amount = 500,
                time = 3,
                minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
                maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
                minvel = {x=0.2, y=0.2, z=0.2},
                maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
                texture = "j_smoke_r.png"
            })   
     minetest.sound_play("canapa_joint_r", { to_player = "", gain = 1.0 })
            toggle_r_eyes(player:get_player_name(), 1)
            return itemstack
        end
    end
})
--_______________________________________________________________________E. ICE____________________________________________

	   minetest.register_craftitem("cannabis:joint_erba_ice_acceso", {
	description = S("Joint of ice_weed lit"),
	inventory_image = "joint_joint_caci.png",
    stack_max = 1 ,
   -- post_effect_color = smokeCOLOR,
    on_use =function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()

        minetest.add_particlespawner({
                amount = 600,
                time = 3,
				minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
				maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
				minvel = {x=0.2, y=0.2, z=0.2},
				maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
				texture = "j_smoke_i.png",
		    })
    minetest.sound_play("canapa_joint_i", { to_player = "", gain = 1.0 })
            toggle_i_eyes(player:get_player_name(), 1)
        local new_stack = ItemStack("cannabis:joint_erba_ice_acceso_m")  -- sostituisce un item con un altro item
            return new_stack
        end
    end	
 })
--_______________________________________________________________________E. ICE ACCESA CONSUMATA_______________________________
            
	  minetest.register_craftitem("cannabis:joint_erba_ice_acceso_m", {
    description = S("Half Joint of ice_weed lit"),
    inventory_image = "joint_joint_caci_m.png",
    stack_max = 1,
    on_use = function(itemstack,player,pointed_thing)
        if itemstack:take_item() ~= nil then
            local p = player:get_pos()
            minetest.add_particlespawner({
                amount = 500,
                time = 3,
                minpos = {x=p.x-2,y=p.y+1,z=p.z-1},
                maxpos = {x=p.x+2,y=p.y+15,z=p.z+2},
                minvel = {x=0.2, y=0.2, z=0.2},
                maxvel = {x=0.4, y=0.8, z=0.4},
                minacc = {x=-0.2,y=0,z=-0.2},
                maxacc = {x=0.2,y=0.1,z=0.2},
                minexptime = 6,
                maxexptime = 8,
                minsize = 10,
                maxsize = 12,
                collisiondetection = false,
                vertical = false,
                texture = "j_smoke_i.png"
            })   
    minetest.sound_play("canapa_joint_i", { to_player = "", gain = 1.0 })
            toggle_i_eyes(player:get_player_name(), 1)
            return itemstack
        end
    end
})	    

--______________________________________________________________________________________________________________________________________________
--|                                                                                                                                             |
--|                                                                       CRAFTITEM STAFF                                                       |
--|_____________________________________________________________________________________________________________________________________________|       

--_______________________________________________________________________INFIORESCENZA VERDE TRITURATA____________________________________________
	minetest.register_craftitem("cannabis:joint_cima", {
	description = S("Flowering chopped"),
	inventory_image = "joint_cima_s.png",
    
	})
--_______________________________________________________________________INFIORESCENZA ROSSA TRITURATA____________________________________________
	minetest.register_craftitem("cannabis:joint_cimar", {
	description = S("Red flowering chopped"),
	inventory_image = "joint_cima_sr.png",
    
	})
--_______________________________________________________________________INFIORESCENZA ICE TRITURATA____________________________________________
	minetest.register_craftitem("cannabis:joint_cimai", {
	description = S("Ice flowering chopped"),
	inventory_image = "joint_cima_si.png",
    
	})
--_______________________________________________________________________FUMO SQUAGLIATO______________________________________________________
	minetest.register_craftitem("cannabis:joint_fumo", {
	description = S("Hash melted"),
	inventory_image = "joint_fumo_s.png",
    
	})
--_______________________________________________________________________CARTINE______________________________________________________________
	minetest.register_craftitem("cannabis:joint_cartina", {
	description = S("Rolling paper"),
	inventory_image = "joint_cartina.png",
    
	})
--_______________________________________________________________________CARTINA DA ARROTOLARE CON CIMA VERDE E FOGLIE__________________________
	minetest.register_craftitem("cannabis:joint_cartina_cima", {
    description = S("Rolling paper with hemp leaves and flowering chopped "),
	inventory_image = "joint_cartina_cima.png",

	})
--_______________________________________________________________________CARTINA DA ARROTOLARE CON CIMA ROSSA E FOGLIE__________________________
	minetest.register_craftitem("cannabis:joint_cartina_cimar", {
    description = S("Rolling paper with hemp leaves and red flowering chopped "),
	inventory_image = "joint_cartina_cimar.png",

	})
--_______________________________________________________________________CARTINA DA ARROTOLARE CON CIMA ICE E FOGLIE__________________________
	minetest.register_craftitem("cannabis:joint_cartina_cimai", {
    description = S("Rolling paper with hemp leaves and ice flowering chopped "),
	inventory_image = "joint_cartina_cimai.png",

	})
--_______________________________________________________________________CARTINA DA ARROTOLARE CON FUMO E FOGLIE_________________________________
	minetest.register_craftitem("cannabis:joint_cartina_fumo", {
	description = S("Rolling paper with hemp leaves and melted hash"),
	inventory_image = "joint_cartina_fumo.png",
    
	})
--_______________________________________________________________________SCATOLA DI FILTRI________________________________________________________	
    minetest.register_craftitem("cannabis:joint_filter_box", {
	description = S("Filters pack"),
	inventory_image = "joint_filter_p.png",
    
	})
--_______________________________________________________________________FILTRI ARROTOLATI________________________________________________________
	 minetest.register_craftitem("cannabis:joint_filter", {
	description = S("Filter"),
	inventory_image = "joint_filter.png",
    
	})
--_______________________________________________________________________ACCENDINO_________________________________________________________________
	minetest.register_craftitem("cannabis:joint_lighter", {
	description = S("Lighter"),
	inventory_image = "joint_accendino.png",
    
	})


--______________________________________________________________________________________________________________________________________________
--|                                                                                                                                             |
--|                                                                       CRAFT JOINT                                                           |
--|_____________________________________________________________________________________________________________________________________________|

--_______________________________________________________________________FUMO SPENTO_________________
	  minetest.register_craft({
	output = "cannabis:joint_fumo_spento ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_filter","cannabis:joint_cartina_fumo",""},
	}
})
--_______________________________________________________________________FUMO ACCESO_________________
 minetest.register_craft({
	output = "cannabis:joint_fumo_acceso ",
	
	recipe = {
		--{"","",""},
        {"cannabis:joint_fumo_spento"},
        
        {"cannabis:joint_lighter"},
	}
})
--_______________________________________________________________________ERBA VERDE SPENTO___________
 minetest.register_craft({
	output = "cannabis:joint_erba_spento ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_filter","cannabis:joint_cartina_cima",""},
	}
})
--_______________________________________________________________________ERBA VERDE ACCESO___________
minetest.register_craft({
	output = "cannabis:joint_erba_acceso ",
	recipe = {
		--{"","",""},
        {"cannabis:joint_erba_spento"},
        {"cannabis:joint_lighter"},
	}
})
--_______________________________________________________________________ERBA ROSSA SPENTO___________
 minetest.register_craft({
	output = "cannabis:joint_erba_rossa_spento ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_filter","cannabis:joint_cartina_cimar",""},
	}
})
--_______________________________________________________________________ERBA ROSSA ACCESO___________
minetest.register_craft({
	output = "cannabis:joint_erba_rossa_acceso ",
	recipe = {
		--{"","",""},
        {"cannabis:joint_erba_rossa_spento"},
        {"cannabis:joint_lighter"},
	}
})
--_______________________________________________________________________ERBA ICE SPENTO___________
 minetest.register_craft({
	output = "cannabis:joint_erba_ice_spento ",
	recipe = {
		{"","",""},
        {"","",""},
        {"cannabis:joint_filter","cannabis:joint_cartina_cimai",""},
	}
})
--_______________________________________________________________________ERBA ICE ACCESO___________
minetest.register_craft({
	output = "cannabis:joint_erba_ice_acceso ",
	recipe = {
		--{"","",""},
        {"cannabis:joint_erba_ice_spento"},
        {"cannabis:joint_lighter"},
	}
})
--______________________________________________________________________________________________________________________________________________
--|                                                                                                                                             |
--|                                                                       CRAFT JOINT  STAFF                                                    |
--|_____________________________________________________________________________________________________________________________________________|

--_________________________________________________________________________________________

--_______________________________________________________________________SQUAGLIARE FUMO______

    minetest.register_craft({
	output = "cannabis:joint_fumo 3 ",
	recipe = {
		{"","",""},
        {"","cannabis:canapa_raisin",""},
        {"","cannabis:joint_lighter",""},
	}
})
--_______________________________________________________________________MESCOLA CIMA_______________________

   
  local Color_list = {
	{ "canapa_red_flower", "canapa_red_leaves"},
	{ "canapa_flower", "canapa_leaves"},
    { "canapa_ice_flower", "canapa_ice_leaves"},
	
}

for i in ipairs(Color_list) do
	local flowers = Color_list[i][1]
	local leaves = Color_list[i][2] 
   
    
--_______________________________________________________________________MESCOLA CIMA VERDE CON FOGLIE_______________________
      
   
    minetest.register_craft({
	output = "cannabis:joint_cima 3 ",
	recipe = {
		{"","cannabis:"..leaves.."",""},
        {"","cannabis:canapa_flower",""},
        {"","cannabis:"..leaves.."",""},
	}
})
--_______________________________________________________________________MESCOLA CIMA ROSSA CON FOGLIE_______________________

 minetest.register_craft({
	output = "cannabis:joint_cimar 3 ",
	recipe = {
		{"","cannabis:"..leaves.."",""},
        {"","cannabis:canapa_red_flower",""},
        {"","cannabis:"..leaves.."",""},
	}
})
--_______________________________________________________________________MESCOLA CIMA ICE CON FOGLIE_______________________
 minetest.register_craft({
	output = "cannabis:joint_cimai 3 ",
	recipe = {
		{"","cannabis:"..leaves.."",""},
        {"","cannabis:canapa_ice_flower",""},
        {"","cannabis:"..leaves.."",""},
	}
})
--____________________________________________________________________________________________________	         
   
	

	--______________________________________________________________________________
	--craft

    --____________________________________________________________________accendino__________

       minetest.register_craft({
	output = "cannabis:joint_lighter 5 ",
	recipe = {
{"default:steel_ingot","fire:flint_and_steel","cannabis:canapa_plastic"},
{"cannabis:canapa_plastic","cannabis:canapa_fuel","cannabis:canapa_plastic"},
{"cannabis:canapa_plastic","cannabis:canapa_plastic","cannabis:canapa_plastic"},
	}
})
--_______________________________________________________________________cartina__________________
        minetest.register_craft({
	output = "cannabis:joint_cartina 10 ",
	recipe = {
   {"","",""},
   {"","",""},
   {"cannabis:canapa_paper","cannabis:canapa_paper","cannabis:canapa_paper"},
	}
})
--_______________________________________________________________________mettere la mescola d erba verde nella cartina___________________________________
       minetest.register_craft({
	output = "cannabis:joint_cartina_cima ",
	recipe = {
		{"","",""},
        {"","cannabis:joint_cima","cannabis:"..leaves..""},
        {"","cannabis:joint_cartina",""},
	}
})
--_______________________________________________________________________mettere la mescola d erba rossa nella cartina___________________________________
       minetest.register_craft({
	output = "cannabis:joint_cartina_cimar ",
	recipe = {
		{"","",""},
        {"","cannabis:joint_cimar","cannabis:"..leaves..""},
        {"","cannabis:joint_cartina",""},
	}
})
--_______________________________________________________________________mettere la mescola d erba ice nella cartina___________________________________
       minetest.register_craft({
	output = "cannabis:joint_cartina_cimai ",
	recipe = {
		{"","",""},
        {"","cannabis:joint_cimai","cannabis:"..leaves..""},
        {"","cannabis:joint_cartina",""},
	}
})
--________________________________________________________________________mettere la mescola fumo foglie nella cartina fare table per usare tutte le foglie

      minetest.register_craft({
	output = "cannabis:joint_cartina_fumo ",
	recipe = {
		{"","",""},
        {"","cannabis:joint_fumo","cannabis:"..leaves..""},
        {"","cannabis:joint_cartina",""},
	}
})
--________________________________________________________________________box filtri___________________________________________________________________________
      minetest.register_craft({
	output = "cannabis:joint_filter_box ",
	recipe = {
		{"","",""},
        {"cannabis:canapa_paper","cannabis:canapa_paper",""},
        {"cannabis:canapa_paper","cannabis:canapa_paper",""},
	}
})
--__________________________________________________________________________arrotolare filtri__________________________________________________________________
 minetest.register_craft({
	type = "shapeless",
	output = "cannabis:joint_filter 10 ",
	recipe = {"cannabis:joint_filter_box"}
})
--_______________________________________________________________________accendino con torch________________________________________________________________
 
 minetest.register_craft({
	output = "cannabis:joint_lighter 3 ",
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
--________________________________________________________________________accendino con acciarino vedere flint e still acciarino per dare stesse funzioni ad accendino
if minetest.get_modpath("fire") then
      minetest.register_craft({
	output = "cannabis:joint_lighter 10 ",
	recipe = {
		{"default:steel_ingot","fire:flint_and_steel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_fuel","cannabis:canapa_plastic"},
                {"cannabis:canapa_plastic","cannabis:canapa_plastic","cannabis:canapa_plastic"},
	}
})
end
end
