--aliases
--minetest.get_modpath("cannabis")
minetest.register_alias("canapa","cannabis:canapa")

--tools
cannabis = {}       -- A global Object for the mod
cannabis.path = minetest.get_modpath("cannabis") -- The path of the mod
local path = cannabis.path

-- Get Boilerplate to translate
local S
if(minetest.get_translator) then
   S = minetest.get_translator(minetest.get_current_modname())

else
    S = function ( s ) return s end

end

cannabis.S = S  -- Stores the boilerplate for global access

dofile(path.."/tools.lua")
dofile(path.."/canapa.lua")
dofile(path.."/node_ingot.lua")
dofile(path.."/craftitem.lua")
--dofile(path.."/clothing.lua")
dofile(path.."/joint.lua")
dofile(path.."/canapa_red.lua")
dofile(path.."/craftred.lua")
dofile(path.."/rope.lua")
dofile(path.."/wool.lua")
dofile(path.."/eye_effect.lua")
dofile(path.."/canapa_ice.lua")
dofile(path.."/craftice.lua")
dofile(path.."/armor.lua")

if minetest.get_modpath("3D_armor") then
dofile(path.."/armor.lua")
end
if minetest.get_modpath("clothing") then
dofile(path.."/clothing.lua")
dofile(path.."/clothing_recipes.lua")
end
if minetest.get_modpath("unified_inventory") then
dofile(path.."/bag.lua")
end
if minetest.get_modpath("ropes") then
dofile(path.."/rope.lua")
end
