if minetest.get_modpath("wool") ~= nil then
	minetest.register_craft({
		output = "wool:white",
		recipe = {
			{"cannabis:canapa_fiber","cannabis:canapa_fiber", "cannabis:canapa_fiber"},
			{"cannabis:canapa_fiber","cannabis:canapa_fiber", "cannabis:canapa_fiber"},
			{"cannabis:canapa_fiber","cannabis:canapa_fiber", "cannabis:canapa_fiber"},
		},
	})
end
