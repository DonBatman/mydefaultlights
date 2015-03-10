local ceiling_lights = {   --color , Description , Image , Item
	{ "white" , "White" , "default_snow" , "default:snowblock"},
	{ "light_grey" , "Light Grey" , "default_steel_block" , "default:steelblock"},
	{ "yellow" , "Yellow" ,  "default_gold_block" , "default:goldblock"},	
	{ "orange" , "Orange" ,  "default_bronze_block" , "default:bronzeblock"},	
	{ "blue" , "Blue" , "default_diamond_block" , "default:diamondblock"},	
	{ "lava" , "Lava" , "default_lava" , "default:lava_source"},
}

for i in ipairs(ceiling_lights) do
	local color = ceiling_lights[i][1]
	local desc = ceiling_lights[i][2]
	local img = ceiling_lights[i][3]
	local item = ceiling_lights[i][4]

minetest.register_node("mydefaultlights:ceiling_light_"..color, {
	description = desc.."Ceiling light",
	tiles = {img..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 14,
	groups = {snappy = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.375, -0.375, 0.5, -0.5, 0.375}, 
			{-0.375, -0.375, -0.5, 0.375, -0.5, 0.5}, 
		}
	},
	on_place = minetest.rotate_node,
})
end
