-----------------------------------
-- Ability: Spontaneity
-- Reduces casting time for the next magic spell the target casts.
-- Obtained: Red Mage Level 95
-- Recast Time: 10:00
-- Duration: 1:00
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
    target:addStatusEffect(xi.effect.SPONTANEITY, 1, 0, 60)
end

return ability_object
