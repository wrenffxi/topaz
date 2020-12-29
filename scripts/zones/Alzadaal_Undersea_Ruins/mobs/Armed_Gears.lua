-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  Mob: Armed Gears
-- !pos -19 -4 -153
-----------------------------------
-- todo
-- add add random elemental magic absorb to elements its casting

mixins =
{
    require("scripts/mixins/job_special"),
    require("scripts/mixins/families/gears")
}
require("scripts/globals/status")

function onMobInitialize(mob)
    mob:addMod(tpz.mod.MDEF, 60)
    mob:addMod(tpz.mod.DEF, 60)
    mob:setAnimationSub(0)
end

function onMobDeath(mob, player, isKiller)
end
