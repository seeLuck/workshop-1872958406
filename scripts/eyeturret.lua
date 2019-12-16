AddPrefabPostInit("eyeturret", function(inst)
	local function turnon( inst )
		inst.on = true
		inst:Remove()
		GLOBAL.SpawnPrefab("eyeturret_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
	end
	inst:AddComponent("machine")
	inst.components.machine.turnonfn = turnon
	
	if inst and inst.components and inst.components.lootdropper then
		inst.components.lootdropper:SetLoot({"minotaurhorn", "deerclops_eyeball", "thulecite", "thulecite", "thulecite", "thulecite"})
	end
end)