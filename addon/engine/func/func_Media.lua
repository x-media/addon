local x, c, l = select(2, ...):unpack()

c["media"] = {
	["textures"] = {
		["blank"] = [[Interface\AddOns\addon\media\texture\blank.tga]],
		["normal"] = [[Interface\AddOns\addon\media\texture\normal.tga]],
	},

	["font"] = {
		["combat"] = [[Interface\AddOns\addon\media\font\combat.ttf]],
		["normal"] = [[Interface\AddOns\addon\media\font\normal.ttf]],
		["pixel"] = [[Interface\AddOns\addon\media\font\pixel.ttf]],
	},
}