local x, c, l = select(2, ...):unpack()

-- character parameter
x.Class = select(2, UnitClass("player"))
x.Name = select(1, UnitName("player"))
x.Level = UnitLevel("player")
x.Faction = UnitFactionGroup("player")
x.Realm = GetRealmName()

-- client parameter
x.Locale = GetLocale()
x.Patch, x.Build, x.Release, x.Toc = GetBuildInfo()

-- addon parameter
x.Version = GetAddOnMetadata("addon", "Version")
x.vNumber = tonumber(x.Version)
x.Dump = function() return end