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
dofile(path.."/armor.lua")
dofile(path.."/joint.lua")
dofile(path.."/canapa_rossa.lua")
dofile(path.."/craftred.lua")
dofile(path.."/rope.lua")
