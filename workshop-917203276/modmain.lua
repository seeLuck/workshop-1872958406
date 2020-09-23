local _G = GLOBAL
_G.RET = {}
local RET = _G.RET
local TUNING = _G.TUNING
TUNING.LANGA = (_G.KnownModIndex:IsModEnabled("workshop-367546858") or _G.KnownModIndex:IsModEnabled("workshop-572538624")) and "chs" or "eng"
TUNING.ALLOW={}
TUNING.ALLOW["hambat"] = GetModConfigData("HAMBAT")
TUNING.ALLOW["nightsword"] = GetModConfigData("NIGHTSWORD")
TUNING.ALLOW["nightstick"] = GetModConfigData("NIGHTSTICK")
TUNING.ALLOW["tornado"] = GetModConfigData("TORNADO")
TUNING.ALLOW["other_equipment"] = GetModConfigData("OTHER_EQUIPMENT")
TUNING.ALLOW["perishable_wears"] = GetModConfigData("PERISHABLE_WEARS")
TUNING.ALLOW["equipment_self"] = GetModConfigData("EQUIPMENT_SELF")
modimport("scripts/tables.lua")
modimport("scripts/actions/AddActions.lua")

local LIST = RET.LIST
local ALLOW = TUNING.ALLOW

for k,v in pairs(LIST) do
    local prefabname = nil
    local repairmap = nil
    if type(v) == "table" then
        prefabname = v[1]
        repairmap = v[2]
    elseif type(v) == "string" then
        prefabname = v
        repairmap = v
    end
    AddPrefabPostInit(prefabname, function (inst)
        local sewingnew = inst.components.sewingnew
        if sewingnew == nil then
			--if not _G.TheWorld.ismastersim then
			  inst:AddComponent("sewingnew")
		      sewingnew = inst.components.sewingnew
			--end
        end
        if type(repairmap) == "table" then
            for k1,v1 in pairs(repairmap) do
			--if not _G.TheWorld.ismastersim then
                sewingnew:AddRepairMap(v1)
			--end
            end
        elseif type(repairmap) == "string" then
			--if not _G.TheWorld.ismastersim then
            sewingnew:AddRepairMap(repairmap)
		--end
        end

        --添加噩梦燃料的快速填充目标为影刀
        if ALLOW["nightsword"] == 2 and prefabname == "nightmarefuel" then
			--if not _G.TheWorld.ismastersim then
            sewingnew:AddQuickTarget("nightsword")
		--end
        end
    end)

end
