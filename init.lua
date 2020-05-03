--aliases
--minetest.get_modpath("cannabis")
minetest.register_alias("canapa","cannabis:canapa")

--tools
local path = minetest.get_modpath("cannabis")
dofile(path.."/tools.lua")
dofile(path.."/canapa.lua")
dofile(path.."/node_ingot.lua")
dofile(path.."/craftitem.lua")
dofile(path.."/armor.lua")
dofile(path.."/joint.lua")
dofile(path.."/canapa_rossa.lua")
dofile(path.."/craftred.lua")
dofile(path.."/rope.lua")
