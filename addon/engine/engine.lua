local name, engine = ...

engine[1] = {}
engine[2] = {}
engine[3] = {}

function engine:unpack()
	return self[1], self[2], self[3]
end

addon = engine

SLASH_RELOADUI1 = "/rl"
SlashCmdList.RELOADUI = ReloadUI