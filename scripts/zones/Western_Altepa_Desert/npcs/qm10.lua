-----------------------------------
-- Area: Western Altepa Desert
--  NPC: ??? (Beastmen Treasure qm10/chest7)
-- !pos -670.697 -8.438 -677.751 125
-----------------------------------
local ID = require("scripts/zones/Western_Altepa_Desert/IDs")
require("scripts/globals/beastmentreasure")
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    tpz.bmt.handleQmOnTrigger(player, npc, ID.text.SOMETHING_IS_BURIED_HERE, ID.text.NOTHING_OUT_OF_ORDINARY, ID.npc.BEASTMEN_TREASURE)
end

entity.onTrade = function(player, npc, trade)
    tpz.bmt.handleQmOnTrade(player, npc, trade, ID.npc.BEASTMEN_TREASURE)
end

entity.onEventFinish = function(player, csid)
    tpz.bmt.handleQmOnEventFinish(player, csid)
end

return entity
