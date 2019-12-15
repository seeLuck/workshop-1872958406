GLOBAL.TUNING.EMERGENCY_BURNT_NUMBER = 1
GLOBAL.TUNING.EMERGENCY_BURNING_NUMBER = 1 -- number of fires to maintain warning level one automatically
GLOBAL.TUNING.EMERGENCY_WARNING_TIME = 1 -- minimum length of warning period
GLOBAL.TUNING.EMERGENCY_RESPONSE_TIME = 1 -- BURNT_NUMBER structures must burn within this time period to trigger flingomatic emergency response
GLOBAL.TUNING.EMERGENCY_SHUT_OFF_TIME = 30 -- stay on for this length of time
GLOBAL.TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME = 480 * 50

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