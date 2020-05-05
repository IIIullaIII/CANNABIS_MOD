if minetest.get_modpath("ropes") then
	minetest.register_craft({
		output = 'ropes:ropesegment',
		recipe = {
			{'cannabis:canapa_fiber'},
			{'cannabis:canapa_fiber'},
			{'cannabis:canapa_fiber'},
		}
	})
end
