local function FuckGlobalUsingMetatable()
    GLOBAL.setmetatable(env, {   __index = function(t, k)
        return GLOBAL.rawget(GLOBAL, k)
    end,  })
end

FuckGlobalUsingMetatable()

local function FindTarget(inst, radius)
    return FindEntity(
        inst,
        SpringCombatMod(radius),
        function(guy)
            return inst.components.combat:CanTarget(guy) and 
            (not guy:HasTag("oldfish_farmer") and (not guy:HasTag("monster") or guy:HasTag("player")) 
            or (guy:HasTag("oldfish_farmer") and 
                guy.components.container:GetItemInSlot(4) ~= nil and 
                guy.components.container:GetItemInSlot(4).prefab == "spear")
            )
        end,
        { "_combat", "character" },
        { "spiderwhisperer", "spiderdisguise", "INLIMBO" },
        { "oldfish_farmer", "player" }
    )
end

local function SpiderTarget(inst)
    return FindTarget(inst, inst.components.knownlocations:GetLocation("investigate") ~= nil and TUNING.SPIDER_INVESTIGATETARGET_DIST or TUNING.SPIDER_TARGET_DIST)
end

AddPrefabPostInit("spider", function(inst)
    if inst.components.combat ~= nil then
        inst.components.combat:SetRetargetFunction(1, SpiderTarget)
    end
end)
AddPrefabPostInit("spider_warrior", function(inst)
    if inst.components.combat ~= nil then
        inst.components.combat:SetRetargetFunction(1, SpiderTarget)
    end
end)

local function QueenTarget(inst)
    if not inst.components.health:IsDead() and not inst.components.sleeper:IsAsleep() then
        local oldtarget = inst.components.combat.target
        local newtarget = FindEntity(inst, 10, 
            function(guy) 
                return inst.components.combat:CanTarget(guy) and 
                (not guy:HasTag("oldfish_farmer") and (not guy:HasTag("monster") or guy:HasTag("player")) 
                or (guy:HasTag("oldfish_farmer") and 
                    guy.components.container:GetItemInSlot(4) ~= nil and 
                    guy.components.container:GetItemInSlot(4).prefab == "spear")
                )
            end,
            { "character", "_combat" },
            { "spiderwhisperer", "spiderdisguise", "INLIMBO" },
            { "oldfish_farmer", "player" }
        )

        if newtarget ~= nil and newtarget ~= oldtarget then
            inst.components.combat:SetTarget(newtarget)
        end
    end
end
AddPrefabPostInit("spiderqueen", function(inst)
    if inst.components.combat ~= nil then
        inst.components.combat:SetRetargetFunction(3, QueenTarget)
    end
end)

local function is_meat(item)
    return item.components.edible ~= nil and item.components.edible.foodtype == FOODTYPE.MEAT and not item:HasTag("smallcreature")
end

local function BunnymanTarget(inst)
    return not inst:IsInLimbo()
        and FindEntity(
                inst,
                TUNING.PIG_TARGET_DIST,
                function(guy)
                    return inst.components.combat:CanTarget(guy) and 
                    (guy:HasTag("monster") 
                    or (guy:HasTag("oldfish_farmer") and 
                        guy.components.container:GetItemInSlot(3) ~= nil and 
                        guy.components.container:GetItemInSlot(3).prefab == "hammer")
                    or (not guy:HasTag("oldfish_farmer") and
                        guy.components.inventory ~= nil and
                        guy:IsNear(inst, TUNING.BUNNYMAN_SEE_MEAT_DIST) and
                        guy.components.inventory:FindItem(is_meat) ~= nil)
                    )
                end,
                { "_combat", "_health" }, -- see entityreplica.lua
                nil,
                { "oldfish_farmer", "monster", "player" }
            )
        or nil
end

AddPrefabPostInit("bunnyman", function(inst)
    if inst.components.combat ~= nil then
        inst.components.combat:SetRetargetFunction(3, BunnymanTarget)
    end
end)


local function PigmanTarget(inst)
	local exclude_tags = { "playerghost", "INLIMBO" }
	if inst.components.follower.leader ~= nil then
		table.insert(exclude_tags, "abigail")
	end
	if inst.components.minigame_spectator ~= nil then
		table.insert(exclude_tags, "player") -- prevent spectators from auto-targeting webber
	end

    local oneof_tags = {"monster", "oldfish_farmer"}
    if not inst:HasTag("merm") then
        table.insert(oneof_tags, "merm")
    end

    return not inst:IsInLimbo()
        and FindEntity(
                inst,
                TUNING.PIG_TARGET_DIST,
                function(guy)
                    return (guy:HasTag("oldfish_farmer") and 
                    guy.components.container:GetItemInSlot(3) ~= nil and 
                    guy.components.container:GetItemInSlot(3).prefab == "hammer")
                        or (not guy:HasTag("oldfish_farmer") and 
                        (guy.LightWatcher == nil or guy.LightWatcher:IsInLight()) and 
                        inst.components.combat:CanTarget(guy))
                end,
                { "_combat" }, -- see entityreplica.lua
                exclude_tags,
                oneof_tags
            )
        or nil
end

AddPrefabPostInit("pigman", function(inst)
    if inst.components.combat ~= nil then
        inst.components.combat:SetRetargetFunction(3, PigmanTarget)
    end
end)

AddComponentPostInit("combat",function(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return
	end
	local oldbonusdamagefn = inst.bonusdamagefn
	inst.bonusdamagefn = function(attacker, target, damage, weapon)
		local bonus = 0
		if oldbonusdamagefn then
			bonus = oldbonusdamagefn(attacker, target, damage, weapon) or 0 
		end
		if target.prefab == "oldfish_farmer" and (attacker.prefab == "bunnyman" or attacker.prefab == "pigman" or
        attacker.prefab == "bee" or attacker.prefab == "leif" or attacker.prefab == "frog" or  attacker.prefab == "spider_moon" or
        attacker.prefab == "spider" or attacker.prefab == "spider_warrior" or attacker.prefab == "spiderqueen") then
			bonus = 0 - damage
		end
		return bonus
	end
end)