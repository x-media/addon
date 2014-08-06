local x, c, l = select(2, ...):unpack()

-- locals
local blank = c["media"]["texture"]["blank"]
local normal = c["media"]["texture"]["normal"]

-- merge api
local function xAPI(object)
	local mt = getmetatable(object).__index

	--if not object.Size then mt.Size = Size end
end

local handled = {["Frame"] = true}
local object = CreateFrame("Frame")
xAPI(object)
xAPI(object:CreateTexture())
xAPI(object:CreateFontString())

object = EnumerateFrames()
while object do
	if not handled[object:GetObjectType()] then
		xAPI(object)
		handled[object:GetObjectType()] = true
	end

	object = EnumerateFrames(object)
end