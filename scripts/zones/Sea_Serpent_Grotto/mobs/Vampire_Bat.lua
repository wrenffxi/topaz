-----------------------------------
-- Area: Sea Serpent Grotto
--  Mob: Vampire Bat
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    xi.regime.checkRegime(player, mob, 806, 2, xi.regime.type.GROUNDS)
end

return entity
