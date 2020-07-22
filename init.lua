-- Concrete-Master (0.1) by TheQuantumMehcanic

local clay = {}

concrete.dyes = {
	{"white",      "White",      "basecolor_white"},
	{"grey",       "Grey",       "basecolor_grey"},
	{"black",      "Black",      "basecolor_black"},
	{"red",        "Red",        "basecolor_red"},
	{"yellow",     "Yellow",     "basecolor_yellow"},
	{"green",      "Green",      "basecolor_green"},
	{"cyan",       "Cyan",       "basecolor_cyan"},
	{"blue",       "Blue",       "basecolor_blue"},
	{"magenta",    "Magenta",    "basecolor_magenta"},
	{"orange",     "Orange",     "excolor_orange"},
	{"violet",     "Violet",     "excolor_violet"},
	{"brown",      "Brown",      "unicolor_dark_orange"},
	{"pink",       "Pink",       "unicolor_light_red"},
	{"dark_grey",  "Dark Grey",  "unicolor_darkgrey"},
	{"dark_green", "Dark Green", "unicolor_dark_green"},
}



for _, row in ipairs(concrete.dyes) do

	-- node definition
	minetest.register_node("Concrete:" .. row[1], {
		description = row[2] .. "Concrete",
		tiles = {"concrete" .. row[1] ..".png"},
		groups = {cracky=3, concrete=1},
		
	})

	-- craft from dye and white clay
	minetest.register_craft({
		type = "shapeless",
		output = "concrete:" .. row[1],
		recipe = {"group:dye," .. row[3], "group:concrete"},
	})

	-- register stair and slab
	stairs.register_stair_and_slab("comcrete_".. row[1], "concrete:".. row[1],
		{cracky=3},
		{"concrete_" .. row[1] .. ".png"},
		"Concrete " .. row[2] .. " Stair",
		"Concrete " .. row[2] .. " Slab",
end       
          
-- Register custum dye

minetest.register_craft( {
	type = "shapeless",
	output = "dye:dark_grey 4",
	recipe = {
		"dye:black", "dye:black", "dye:white",
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:grey 4",
	recipe = {
		"dye:black", "dye:white", "dye:white",
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:green 4",
	recipe = {
		"default:cactus",
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "dye:black 4",
	recipe = {
		"default:coal_lump",
	},
})
