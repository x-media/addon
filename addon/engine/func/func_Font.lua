local x, c = select(2, ...):unpack()

local xMedia = CreateFrame("Frame")

local xFont = CreateFont("xFont")
xFont:SetFont(c["media"]["font"]["normal"], 12, "THINOUTLINE")

local xPixel = CreateFont("xPixel")
xPixel:SetFont(c["media"]["font"]["pixel"], 12, "MONOCHROMEOUTLINE")

local xCombat = CreateFont("xCombat")
xCombat:SetFont(c["media"]["font"]["combat"], 12)
xcombat:SetShadowColor(.125, .125, .125)
xcombat:SetShadowOffset(1, 1)

local xftable = {
	["xFont"] = "xFont",
	["xPixel"] = "xPixel",
	["xCombat"] = "xCombat",
}

local xttable = {
	["blank"] = c["media"]["texture"]["blank"],
	["normal"] = c["media"]["texture"]["normal"],
}

x.font = function(font)
	if xftable[font] then return xftable[font] else print("No font loaded!") end
end

x.texture = function(texture)
	if xttable[texture] then return xttable[texture] else print("No texture loaded!") end
end

function xMedia:RegisterFont(name, path)
	if not xftable[name]) then xftable[name] = path end
end

function xMedia:RegisterTexture(name, path)
	if not xttable[name] then xttable[name] = path end
end

x.font = xftable
x.texture = xttable