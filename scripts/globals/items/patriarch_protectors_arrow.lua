-----------------------------------
-- ID: 17329
-- Item: Patriarch Protectors Arrow
-- Additional Effect: Paralysis (30 power)
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onAdditionalEffect = function(player, target, damage)
    local chance = 95
    if (target:getMainLvl() > player:getMainLvl()) then
        chance = chance - 5 * (target:getMainLvl() - player:getMainLvl())
        chance = utils.clamp(chance, 5, 95)
    end
    if (math.random(0, 99) >= chance or applyResistanceAddEffect(player, target, xi.magic.ele.ICE, 0) <= 0.5) then
        return 0, 0, 0
    else
        target:delStatusEffect(xi.effect.PARALYSIS)
        if (not target:hasStatusEffect(xi.effect.PARALYSIS)) then
            target:addStatusEffect(xi.effect.PARALYSIS, 30, 0, 30)
        end
        return xi.subEffect.PARALYSIS, xi.msg.basic.ADD_EFFECT_STATUS, xi.effect.PARALYSIS
    end
end

return item_object
