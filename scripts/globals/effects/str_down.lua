-----------------------------------
-- xi.effect.STR_DOWN
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effect_object = {}

effect_object.onEffectGain = function(target, effect)
    if ((target:getStat(xi.mod.STR) - effect:getPower()) < 0) then
        effect:setPower(target:getStat(xi.mod.STR))
    end
    target:addMod(xi.mod.STR, -effect:getPower())
end

effect_object.onEffectTick = function(target, effect)
    -- the effect restore strengh of 1 every 3 ticks.
    local downSTR_effect_size = effect:getPower()
    if (downSTR_effect_size > 0) then
        effect:setPower(downSTR_effect_size - 1)
        target:delMod(xi.mod.STR, -1)
    end
end

effect_object.onEffectLose = function(target, effect)
    local downSTR_effect_size = effect:getPower()
    if (downSTR_effect_size > 0) then
        target:delMod(xi.mod.STR, -downSTR_effect_size)
    end
end

return effect_object
