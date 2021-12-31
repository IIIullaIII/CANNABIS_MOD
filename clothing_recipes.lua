local S = cannabis.S
local path = cannabis.path

local craft_cloth = {
    {"cape",""},
	{"skullcap",""},
	{"glove_right",""},
	{"glove_left",""},
	{"gloves",""},
	{"shirt",""},
	{"shorts",""},
	{"shortshirt",""},
	{"undershirt",""},
	{"hood_mask",""},
	{"pants",""}

}
	local colors_l ={
	--{"col"},
	{"yellow"},
	{"red"},
	{"cyan"},
	{"pink"},
	{"orange"},
	{"green"},
	{"white"},
	{"green"},
	{"violet"},
	{"blue"}
}
for i in ipairs(colors_l) do
	local colors = colors_l[i][1]

for i in ipairs(craft_cloth) do
	      
local clot = craft_cloth[i][1]

minetest.register_craft({
	output = "cannabis:canapa_"..clot.."_hemp", 
	recipe = {			
			{"","","" },
			{"","","" },
			{"cannabis:canapa_"..clot.."_fabric_hemp","cannabis:flowering","" }		
			
		}
	})
minetest.register_craft({
	output = "cannabis:canapa_"..clot.."_red_hemp", 
	recipe = {			
			{"","","" },
			{"","","" },
			{"cannabis:canapa_"..clot.."_fabric_hemp","cannabis:flowering_red","" }		
			
		}
	})
	minetest.register_craft({
	output = "cannabis:canapa_"..clot.."_ice_hemp", 
	recipe = {			
			{"","","" },
			{"","","" },
				{"cannabis:canapa_"..clot.."_fabric_hemp","cannabis:flowering_ice","" }		
			
		}
	})
	minetest.register_craft({
	output = "cannabis:canapa_"..clot.."_jamaican", 
	recipe = {			
			{"","","" },
			{"","","" },
				{"cannabis:canapa_"..clot.."_fabric_hemp","cannabis:canapa_glue","" }		
			
		}
	})
	minetest.register_craft({
	output = "cannabis:canapa_"..clot.."_u_style", 
	recipe = {			
			{"","","" },
			{"","","" },
				{"cannabis:canapa_"..clot.."_fabric_hemp","cannabis:canapa_raisin","" }		
			
		}
	})
	
--_____________________________________________________________cape
	 minetest.register_craft({
		output = "cannabis:canapa_cape_fabric_hemp",
		recipe = {			
			{"cannabis:canapa_cloth","","" },
			{"cannabis:canapa_cloth","","" },
			{"cannabis:canapa_cloth","","" }		
			
		}
	})
	--_________________________________________________________skullcap
		 minetest.register_craft({
		output = "cannabis:canapa_skullcap_fabric_hemp",
		recipe = {			
			{"cannabis:canapa_cloth","","" },
			{"cannabis:canapa_cloth","","" },
			{"","","" }		
			
		}
	})
	--______________________________________________________________glove_left
		 minetest.register_craft({
		output = "cannabis:canapa_glove_left_fabric_hemp",
		recipe = {			
			{"","","" },
			{"","","" },
			{"cannabis:canapa_cloth","","" }		
			
		}
	})
	--_______________________________________________________________glove_right
			 minetest.register_craft({
		output = "cannabis:canapa_glove_right_fabric_hemp",
		recipe = {			
			{"","","" },
			{"","","" },
			{"","","cannabis:canapa_cloth" }		
			
		}
	})
	--______________________________________________________________gloves
			 minetest.register_craft({
		output = "cannabis:canapa_gloves_fabric_hemp",
		recipe = {			
			{"","","" },
			{"","","" },
			{"cannabis:canapa_glove_left_fabric_hemp","cannabis:canapa_glove_right_fabric_hemp","" }		
			
		}
	})
	--_________________________________________________________________shirt
			 minetest.register_craft({
		output = "cannabis:canapa_shirt_fabric_hemp",
		recipe = {			
			{"cannabis:canapa_fiber","cannabis:canapa_cloth","cannabis:canapa_fiber" },
			{"","cannabis:canapa_cloth","" },
			{"","cannabis:canapa_cloth","" }		
			
		}
	})
	--___________________________________________________________________________________shortshirt
			 minetest.register_craft({
		output = "cannabis:canapa_shortshirt_fabric_hemp",
		recipe = {			
			
			{"cannabis:canapa_fiber","cannabis:canapa_cloth","cannabis:canapa_fiber" },
			{"","cannabis:canapa_cloth","" },
			{"","cannabis:canapa_cloth","" }		
			
		}
	})
	--________________________________________________________________________________undershirt
				 minetest.register_craft({
		output = "cannabis:canapa_undershirt_fabric_hemp",
		recipe = {			
			{"cannabis:canapa_fiber","","cannabis:canapa_fiber" },
			{"","cannabis:canapa_cloth","" },
			{"","cannabis:canapa_cloth","" }		
			
		}
	})
--________________________________________________________________________________________pants
		minetest.register_craft({
		output = "cannabis:canapa_pants_fabric_hemp",
		recipe = {			
			{"cannabis:canapa_fiber","cannabis:canapa_fiber","cannabis:canapa_fiber" },
			{"","cannabis:canapa_cloth","" },
			{"","cannabis:canapa_cloth","" }		
			
		}
	})
	--_________________________________________________________________________________hood_mask
				 minetest.register_craft({
		output = "cannabis:canapa_hood_mask_fabric_hemp",
		recipe = {			
			{"cannabis:canapa_fiber","","cannabis:canapa_fiber" },
			{"","cannabis:canapa_fiber","" },
			{"","cannabis:canapa_cloth","" }		
			
		}
	})
	--________________________________________________________________________short
	
	minetest.register_craft({
		output = "cannabis:canapa_shorts_fabric_hemp",
		recipe = {			
		
			{"cannabis:canapa_fiber","cannabis:canapa_fiber","cannabis:canapa_fiber" },
			{"cannabis:canapa_cloth","","cannabis:canapa_cloth" },
			{"","","" }			
		}
	})
	--_____________________________________________________________________________________________colored____________
	

	 minetest.register_craft({
	output = "cannabis:canapa_"..clot.."_fabric_hemp_"..colors, 
	recipe = {			
			{"","","" },
			{"","","" },
			{"cannabis:canapa_"..clot.."_fabric_hemp","dye:"..colors,"" }		
			
		}
	})

	
	
end
end
