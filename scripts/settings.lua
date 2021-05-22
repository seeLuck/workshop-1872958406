-- 草蜥蜴
TUNING.GRASSGEKKO_MORPH_CHANCE = 0

-- 饥饿腰带
TUNING.HUNGERBELT_PERISHTIME = 480 * 80

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
	TUNING.BOAT.HEALTH = 400
end

-- 蘑菇帽孢子速度
TUNING.MUSHROOMHAT_SPORE_TIME = 15

-- 世界再生
if GetModConfigData("natureSpawn") == 1 then
	AddPrefabPostInit("forest", function(inst)
		inst:AddComponent("naturespawnless")
	end)
	AddPrefabPostInit("cave", function(inst)
		inst:AddComponent("naturespawnless")
	end)
elseif GetModConfigData("natureSpawn") == 2 then
	AddPrefabPostInit("forest", function(inst)
		inst:AddComponent("naturespawnmore")
	end)
	AddPrefabPostInit("cave", function(inst)
		inst:AddComponent("naturespawnmore")
	end)
end

-- 树根消失速度
TUNING.EVERGREEN_REGROWTH.DEAD_DECAY_TIME = 480
TUNING.EVERGREEN_SPARSE_REGROWTH.DEAD_DECAY_TIME = 480
TUNING.TWIGGY_TREE_REGROWTH.DEAD_DECAY_TIME = 480
TUNING.DECIDUOUS_REGROWTH.DEAD_DECAY_TIME = 480
TUNING.MUSHTREE_REGROWTH.DEAD_DECAY_TIME = 480
TUNING.MOON_TREE_REGROWTH.DEAD_DECAY_TIME = 480

-- 冰箱保鲜
if GetModConfigData("fridgeFresh") then
	TUNING.PERISH_FRIDGE_MULT = .2
	TUNING.PERISH_SALTBOX_MULT = 0
	TUNING.PERISH_MUSHROOM_LIGHT_MULT = .05
end

-- BOSS复活速度
if GetModConfigData("bossFastRespawn") then
	TUNING.TOADSTOOL_RESPAWN_TIME = 480 * 5
	TUNING.BEEQUEEN_RESPAWN_TIME = 480 * 5
	TUNING.DRAGONFLY_RESPAWN_TIME = 480 * 5
	TUNING.CRABKING_RESPAWN_TIME = 480 * 5
	TUNING.ATRIUM_GATE_COOLDOWN = 480 * 5
	TUNING.MALBATROSS_ENTITYSLEEP_RELOCATE_TIME = 480 * 1
	TUNING.ANTLION_RAGE_TIME_INITIAL = 999 * 480
	TUNING.ANTLION_RAGE_TIME_MAX = 999 * 480
end

-- 锤子锤厨师锅
AddPrefabPostInit("portablecookpot", function(inst)
	if not _G.TheWorld.ismastersim then return inst end
	if inst.components.portablestructure then
		inst:RemoveComponent("portablestructure")
	end
end)

-- 人人都是大厨
if GetModConfigData("chef") then
	AddPlayerPostInit(function(inst)
		inst:AddTag("masterchef")
		inst:AddTag("professionalchef")
	end)
end

-- 训牛不找人
AddPrefabPostInit("beefalo",function(inst)
    if not GLOBAL.TheWorld.ismastersim then
        return inst
    end
    inst:SetBrain(GLOBAL.require("brains/newbeefalobrain"))
end)

-- 蚊子血袋必掉
GLOBAL.SetSharedLootTable('mosquito_new',
{
	{'mosquitosack', 1}
})
AddPrefabPostInit("mosquito",function(inst)
	inst:RemoveComponent("lootdropper")
	inst:AddComponent("lootdropper")
	inst.components.lootdropper:SetChanceLootTable('mosquito_new')
end)