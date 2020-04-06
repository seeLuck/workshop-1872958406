_G = GLOBAL

_G.TUNING.EMERGENCY_BURNT_NUMBER = 1
_G.TUNING.EMERGENCY_BURNING_NUMBER = 1 -- number of fires to maintain warning level one automatically
_G.TUNING.EMERGENCY_WARNING_TIME = 1   -- minimum length of warning period
_G.TUNING.EMERGENCY_RESPONSE_TIME = 1 -- BURNT_NUMBER structures must burn within this time period to trigger flingomatic emergency response

_G.TUNING.EMERGENCY_SHUT_OFF_TIME = 30 -- stay on for this length of time
_G.TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME = 480 * 50

local whitelist_for_ice_flingomatic = {
	"campfire",
	"firepit",
	"coldfire",
	"coldfirepit",
	"nightlight",
	"pigtorch",
}

for k, v in pairs(whitelist_for_ice_flingomatic) do
	AddPrefabPostInit(v, function(inst)
		inst:AddTag("burnt")
	end)
end

--local NOTAGS = { "FX", "NOCLICK", "DECOR", "INLIMBO", "burnt", "player", "monster" }

---[[
local WarningColours =
{
    green = { 163 / 255, 255 / 255, 186 / 255 },
    yellow = { 255 / 255, 228 / 255, 81 / 255 },
    red = { 255 / 255, 146 / 255, 146 / 255 },
}

local function GetWarningLevelLight(level)
    return (level == nil and "off")
        or (level <= 0 and "green")
        or (level <= TUNING.EMERGENCY_BURNT_NUMBER and "yellow")
        or "red"
end

local function TableIndexToInt(levelLightStr)
	if levelLightStr == "green" then
		return 163 / 255, 255 / 255, 186 / 255
	elseif levelLightStr == "yellow" then
		return 255 / 255, 228 / 255, 81 / 255
	elseif levelLightStr == "red" then
		return 255 / 255, 146 / 255, 146 / 255
	end
end

local function SetWarningLevelLight(inst, level)
    local anim = GetWarningLevelLight(level)
    if inst._warninglevel ~= anim then
		inst._warninglevel = anim
        if WarningColours[anim] ~= nil then
            inst.Light:SetColour(TableIndexToInt(anim))
            inst.Light:Enable(true)
            inst._glow.AnimState:PlayAnimation(anim, true)
            inst._glow._ison:set(true)
        else
            inst.Light:Enable(false)
            inst._glow._ison:set(false)
        end
    end
end

local function TurnOff(inst, instant)
    inst.on = false
    inst.components.firedetectorplus:Deactivate()

    if not inst:HasTag("fueldepleted") then 
        local randomizedStartTime = POPULATING
        inst:DoTaskInTime(0, inst.components.firedetectorplus:ActivateEmergencyMode(randomizedStartTime))
    end

    inst.components.fueled:StopConsuming()

    SetWarningLevelLight(inst, nil)
    inst.sg:GoToState(instant and "idle_off" or "turn_off")
end

local function TurnOn(inst, instant)
    inst.on = true
    local isemergency = inst.components.firedetectorplus:IsEmergency()
    if not isemergency then
        local randomizedStartTime = POPULATING
        inst.components.firedetectorplus:Activate(randomizedStartTime)
        SetWarningLevelLight(inst, 0)
    end
    inst.components.fueled:StartConsuming()
    inst.sg:GoToState(instant and "idle_on" or (inst.sg:HasStateTag("light") and "turn_on_light" or "turn_on"), isemergency == true)
end

local function SpreadProtectionAtPoint(inst, firePos)
    inst.components.wateryprotection:SpreadProtectionAtPoint(firePos:Get())
end

local function OnFindFire(inst, firePos)
    if inst:IsAsleep() then
        inst:DoTaskInTime(1 + math.random(), SpreadProtectionAtPoint, firePos)
    else
        inst:PushEvent("putoutfire2", { firePos = firePos })
    end
end

local function OnBeginEmergency(inst, level)
    SetWarningLevelLight(inst, math.huge)
    if not inst.on then
        inst.components.machine:TurnOn()
    end
end

local function OnEndEmergency(inst, level)
    if inst.on then
        inst.components.machine:TurnOff()
    end
end

local function OnBeginWarning(inst, level)
    SetWarningLevelLight(inst, level)
    if not inst.on then
        inst.sg:GoToState("light_on")
    end
end

local function OnUpdateWarning(inst, level)
    SetWarningLevelLight(inst, level)
    --inst:PushEvent("warninglevelchanged", { level = level })
end

local function OnEndWarning(inst, level)
    SetWarningLevelLight(inst, nil)
    if not inst.on then
        inst.sg:GoToState("light_off")
    end
end


local function ReplaceFireDetector(inst)
	if	inst.components.machine ~= nil then
		inst.components.machine.turnonfn = TurnOn
		inst.components.machine.turnofffn = TurnOff
	end
	if	inst.components.firedetector ~= nil then
		inst:RemoveComponent("firedetector")
		inst:AddComponent("firedetectorplus")
		inst.components.firedetectorplus:SetOnFindFireFn(OnFindFire)
		inst.components.firedetectorplus:SetOnBeginEmergencyFn(OnBeginEmergency)
		inst.components.firedetectorplus:SetOnEndEmergencyFn(OnEndEmergency)
		inst.components.firedetectorplus:SetOnBeginWarningFn(OnBeginWarning)
		inst.components.firedetectorplus:SetOnUpdateWarningFn(OnUpdateWarning)
		inst.components.firedetectorplus:SetOnEndWarningFn(OnEndWarning)
	end
	inst:SetStateGraph("SGfiresuppressorplus")
end

AddPrefabPostInit("firesuppressor", ReplaceFireDetector)
--]]