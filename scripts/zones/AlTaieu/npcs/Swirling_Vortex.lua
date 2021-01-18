-----------------------------------
-- Area: Al'Taieu
--  NPC: Swirling_Vortex
-- Type: Standard NPC
-- !pos ? ? ? 33
-----------------------------------
local ID = require("scripts/zones/AlTaieu/IDs")
require("scripts/globals/limbus")
-----------------------------------
local entity = {}

entity.onTrade = function(player,npc,trade)
end

entity.onTrigger = function(player,npc)
    local offset = npc:getID() - ID.npc.SWIRLING_VORTEX_OFFSET
    if offset >= 0 and offset <= 1 then
        player:startEvent(159 + offset)
    end
end

entity.onEventUpdate = function(player,csid,option)
end

entity.onEventFinish = function(player,csid,option)
    if csid == 160 and option == 1 then
        tpz.limbus.enter(player,1)
    elseif csid == 159 and option == 1 then
        tpz.limbus.enter(player,0)
    end
end

return entity
