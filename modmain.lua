if GetModConfigData("usercmd") then
	modimport("scripts/usercmd.lua")
end

if GetModConfigData("beenice") then
	modimport("scripts/beenice.lua")
end

if GetModConfigData("lanternColor") then
	modimport("scripts/lanterncolor.lua")
end

if GetModConfigData("smartIceMachine") then
	modimport("scripts/smarticemachine.lua")
end

if GetModConfigData("worldClean") then
	modimport("scripts/worldclean.lua")
end

if GetModConfigData("seasonStart") ~= false then
	modimport("scripts/seasonstart.lua")
end

if GetModConfigData("farmer") then
	modimport("scripts/farmer.lua")
end

if GetModConfigData("dontdrop") then
	modimport("scripts/dontdrop.lua")
end

modimport("scripts/settings.lua")
modimport("scripts/stack.lua")
modimport("scripts/autocatch.lua")
modimport("scripts/thermalstone.lua")
modimport("scripts/toolsfule.lua")
modimport("scripts/boatpatch.lua")
modimport("scripts/equipmentswitcher.lua")
-- modimport("scripts/wallmath.lua")
modimport("scripts/eyeturret.lua")
modimport("scripts/sisturn.lua")