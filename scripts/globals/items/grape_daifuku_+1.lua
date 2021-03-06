-----------------------------------
-- ID: 6344
-- Item: grape_daifuku+1
-- Food Effect: 60 Min, All Races
-----------------------------------
-- HP + 30 (Pet & Master)
-- Vitality + 4 (Pet & Master)
-- Master MAB + 4 , Pet MAB + 15
-- Accuracy/Ranged Accuracy +11% (cap 54 on master, cap 81 on pet)
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if (target:hasStatusEffect(xi.effect.FOOD) or target:hasStatusEffect(xi.effect.FIELD_SUPPORT_FOOD)) then
        result = xi.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 3600, 6344)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.HP, 30)
    target:addMod(xi.mod.VIT, 4)
    target:addMod(xi.mod.MATT, 4)
    target:addMod(xi.mod.FOOD_ACCP, 11)
    target:addMod(xi.mod.FOOD_ACC_CAP, 54)
    target:addMod(xi.mod.FOOD_RACCP, 11)
    target:addMod(xi.mod.FOOD_RACC_CAP, 54)
    target:addPetMod(xi.mod.HP, 30)
    target:addPetMod(xi.mod.VIT, 4)
    target:addPetMod(xi.mod.MATT, 15)
    target:addPetMod(xi.mod.FOOD_ACCP, 11)
    target:addPetMod(xi.mod.FOOD_ACC_CAP, 81)
    target:addPetMod(xi.mod.FOOD_RACCP, 11)
    target:addPetMod(xi.mod.FOOD_RACC_CAP, 81)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.HP, 30)
    target:delMod(xi.mod.VIT, 4)
    target:delMod(xi.mod.MATT, 4)
    target:delMod(xi.mod.FOOD_ACCP, 11)
    target:delMod(xi.mod.FOOD_ACC_CAP, 54)
    target:delMod(xi.mod.FOOD_RACCP, 11)
    target:delMod(xi.mod.FOOD_RACC_CAP, 54)
    target:delPetMod(xi.mod.HP, 30)
    target:delPetMod(xi.mod.VIT, 4)
    target:delPetMod(xi.mod.MATT, 15)
    target:delPetMod(xi.mod.FOOD_ACCP, 11)
    target:delPetMod(xi.mod.FOOD_ACC_CAP, 81)
    target:delPetMod(xi.mod.FOOD_RACCP, 11)
    target:delPetMod(xi.mod.FOOD_RACC_CAP, 81)
end

return item_object
