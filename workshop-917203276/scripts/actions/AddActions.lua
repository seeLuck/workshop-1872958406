local _G = GLOBAL
local Action = _G.Action
local ACTIONS = _G.ACTIONS
local ActionHandler = _G.ActionHandler
local STRINGS = _G.STRINGS
local TUNING = _G.TUNING

local SEWINGNEW = Action({mount_valid=true})
local SEWINGQUICK = Action({mount_valid=true})
local SEWINGQUICKWET = Action({mount_valid=true})
SEWINGNEW.id = "SEWINGNEW"
SEWINGQUICK.id = "SEWINGQUICK"
SEWINGQUICKWET.id = "SEWINGQUICKWET"
SEWINGNEW.str = ACTIONS.REPAIR.str
SEWINGQUICK.str = ACTIONS.ADDFUEL.str
SEWINGQUICKWET.str = ACTIONS.ADDWETFUEL.str

SEWINGNEW.fn = function ( act )
    local sewtool = act.invobject
    local item = act.target
    if sewtool and sewtool.components.sewingnew and item and (item.components.perishable or item.components.finiteuses or item.components.fueled or item.components.armor) then
        sewtool.components.sewingnew:DoSewing(item, act.doer)
    end
    return true
end

SEWINGQUICK.fn = SEWINGNEW.fn
SEWINGQUICKWET.fn = SEWINGNEW.fn

AddAction(SEWINGNEW)
AddAction(SEWINGQUICK)
AddAction(SEWINGQUICKWET)

function SetupActionSewingnew( inst, doer, target, actions, right)
    local sewingnew = inst.components.sewingnew
    if not sewingnew then return end
    --快速填充
    if sewingnew.quick and type(sewingnew.quick) == "table" then
        for k,v in pairs(sewingnew.quick) do
            -- local wetmult = inst:GetIsWet() and 0.7 or 1
            if target.prefab == v then
                if inst:GetIsWet() then
                  table.insert(actions, ACTIONS.SEWINGQUICKWET)
                else
                  table.insert(actions, ACTIONS.SEWINGQUICK)
                end
                return
            end
        end
    end
    --非快速填充
    if type(sewingnew.repair_maps) == "table" then
        for k,v in pairs(sewingnew.repair_maps) do
            if type(v) == "table" then
                if v[1] == target.prefab then
                    table.insert(actions, ACTIONS.SEWINGNEW)
                end
            elseif type(v) == "string" then
                if v == target.prefab then
                    table.insert(actions, ACTIONS.SEWINGNEW)
                end
            end
        end
    end
end


AddComponentAction("USEITEM", "sewingnew", SetupActionSewingnew)

AddStategraphActionHandler("wilson", ActionHandler(SEWINGNEW, "dolongaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(SEWINGNEW, "dolongaction"))

AddStategraphActionHandler("wilson", ActionHandler(SEWINGQUICK, "doshortaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(SEWINGQUICK, "doshortaction"))

AddStategraphActionHandler("wilson", ActionHandler(SEWINGQUICKWET, "doshortaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(SEWINGQUICKWET, "doshortaction"))
