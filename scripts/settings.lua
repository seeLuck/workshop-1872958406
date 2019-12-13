-- 草蜥蜴
TUNING.GRASSGEKKO_MORPH_CHANCE = 0

-- 舔盐器
if GetModConfigData("salt") then
	TUNING.SALTLICK_BEEFALO_USES = 0;
	TUNING.SALTLICK_KOALEFANT_USES = 0;
	TUNING.SALTLICK_LIGHTNINGGOAT_USES = 0;
	TUNING.SALTLICK_DEER_USES = 0;
end

-- 蜘蛛吃肉
--Make spiders wait longer before trying to eat
GLOBAL.TUNING.SPIDER_EAT_DELAY = 10		--default is 1.5
--Remove edible-ness of following items
AddPrefabPostInit("pigskin", function(inst)
	inst:RemoveComponent("edible")
end)
AddPrefabPostInit("manrabbit_tail", function(inst)
	inst:RemoveComponent("edible")
end)
AddPrefabPostInit("minotaurhorn", function(inst)
	inst:RemoveComponent("edible")
end)
AddPrefabPostInit("deerclops_eyeball", function(inst)
	inst:RemoveComponent("edible")
end)

-- 船血上限
if GetModConfigData("boatHealth") then
	TUNING.BOAT.HEALTH = 500
end

-- 蘑菇帽孢子速度
TUNING.MUSHROOMHAT_SPORE_TIME = 20

-- 自动雪球机
if GetModConfigData("smartIceMachine") then
	GLOBAL.TUNING.EMERGENCY_BURNT_NUMBER = 1
	GLOBAL.TUNING.EMERGENCY_BURNING_NUMBER = 1 -- number of fires to maintain warning level one automatically
	GLOBAL.TUNING.EMERGENCY_WARNING_TIME = 1 -- minimum length of warning period
	GLOBAL.TUNING.EMERGENCY_RESPONSE_TIME = 1 -- BURNT_NUMBER structures must burn within this time period to trigger flingomatic emergency response
	GLOBAL.TUNING.EMERGENCY_SHUT_OFF_TIME = 20 -- stay on for this length of time
	GLOBAL.TUNING.FIRESUPPRESSOR_MAX_FUEL_TIME = 480 * 50
end

-- 世界再生
if GetModConfigData("natureSpawn") then
	AddPrefabPostInit("forest", function(inst)
		inst:AddComponent("naturespawn")
	end)
	AddPrefabPostInit("cave", function(inst)
		inst:AddComponent("naturespawn")
	end)
end