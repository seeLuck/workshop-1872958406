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

-- 世界再生
if GetModConfigData("natureSpawn") then
	AddPrefabPostInit("forest", function(inst)
		inst:AddComponent("naturespawn")
	end)
	AddPrefabPostInit("cave", function(inst)
		inst:AddComponent("naturespawn")
	end)
end

-- 树根消失速度
TUNING.EVERGREEN_REGROWTH.DEAD_DECAY_TIME = 480 * 3
TUNING.EVERGREEN_SPARSE_REGROWTH.DEAD_DECAY_TIME = 480 * 3
TUNING.TWIGGY_TREE_REGROWTH.DEAD_DECAY_TIME = 480 * 3
TUNING.DECIDUOUS_REGROWTH.DEAD_DECAY_TIME = 480 * 3
TUNING.MUSHTREE_REGROWTH.DEAD_DECAY_TIME = 480 * 3
TUNING.MOON_TREE_REGROWTH.DEAD_DECAY_TIME = 480 * 3

-- 洞口蝙蝠
AddPrefabPostInit("cave_entrance_open", function(inst)
	inst.components.childspawner:SetRegenPeriod(480)
	inst.components.childspawner:SetMaxChildren(1)
end)