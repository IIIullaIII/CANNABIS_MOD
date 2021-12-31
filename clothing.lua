
local S = cannabis.S
local path = cannabis.path


local Color_list = {
	{ "hemp", "c"},
	{ "u_style", "u"},
    { "red_hemp", "cr"},
	{ "ice_hemp", "ci"},
	{ "fabric_hemp", "t"},
	{ "jamaican", "jam"}
	
}
local craftitem ={

	--{"cape"},
	{"skullcap"},
	{"glove_right"},
	{"glove_left"},
	{"gloves"},
	{"shirt"},
	{"shorts"},
	{"shortshirt"},
	{"undershirt"},
	{"hood_mask"},
	{"pants"}
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
for i in ipairs(Color_list) do
	local colordesc = Color_list[i][1]
	local color = Color_list[i][2]

for i in ipairs(craftitem) do
	local item = craftitem[i][1] 
--    local col= craftitem[i][2]
    
for i in ipairs(colors_l) do
--	local item = craftitem[i][1] 
    local colit= colors_l[i][1]

minetest.register_craftitem("cannabis:canapa_"..item.."_fabric_hemp_"..colit, {
		description = S(item.." fabric_hemp "..colit),
		inventory_image = "clothing_inv_"..item.."_t.png^"..colit..".png",
		uv_image = "clothing_uv_"..item.."_t.png^"..colit..".png",
		groups = {clothing=1},
	})
	
	minetest.register_craftitem("cannabis:canapa_"..item.."_"..colordesc, {
		description = S(item.." "..colordesc),
		inventory_image = "clothing_inv_"..item.."_"..color..".png",
		uv_image = "clothing_uv_"..item.."_"..color..".png",
		groups = {clothing=1},
	})
	
minetest.register_craftitem("cannabis:canapa_cape_"..colordesc, {
		description = S(item.." "..colordesc),
		inventory_image = "clothing_inv_cape_"..color..".png",
		uv_image = "clothing_uv_cape_"..color..".png",
		groups = {cape=1},
	})
	
	minetest.register_craftitem("cannabis:canapa_cape_fabric_hemp_"..colit, {
		description = S(item.." fabric_hemp "..colit),
		inventory_image = "clothing_inv_cape_t.png^"..colit..".png",
		uv_image = "clothing_uv_cape_t.png^"..colit..".png",
		groups = {cape=1},
	})

end
end
end
--________________________________________________________





--______________________________TODO

--[[
clothing.spinning_machine:recipe_register_input(
      "cannabis:canapa_fiber",
      {
        inputs = 1,
        outputs = {"cannabis:canapa_spool"},
        production_time = 30,
        consumption_step_size = 1,
      });
  clothing.loom:recipe_register_input(
      "",
      {
        inputs = {"cannabis:canapa_spool", "cannabis:canapa_spool",
                  "cannabis:canapa_spool", "cannabis:canapa_spool",
                 },
        outputs = {{"cannabis:canapa_cloth","clothing:yarn_spool_empty 4"},},
        production_time = 30,
        consumption_step_size = 1,
      });
]]
