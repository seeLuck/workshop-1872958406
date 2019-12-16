AddPrefabPostInit("eyeturret", function(inst)
	local function turnon( inst )
		inst.on = true
		inst:Remove()
		GLOBAL.SpawnPrefab("eyeturret_item").Transform:SetPosition(inst.Transform:GetWorldPosition())
	end
	inst:AddComponent("machine")
	inst.components.machine.turnonfn = turnon
	
	if inst and inst.components and inst.components.lootdropper then
		inst.components.lootdropper:AddRandomLoot("deerclops_eyeball", 1)
		inst.components.lootdropper:AddRandomLoot("thulecite", 4)
		inst.components.lootdropper:AddRandomLoot("minotaurhorn", 1)
		inst.components.lootdropper.numrandomloot = 6
	end
end)