-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Wyatt
-- !pos 124 0 84 80
-----------------------------------
local ID = require("scripts/zones/Southern_San_dOria_[S]/IDs")
require("scripts/globals/titles")
require("scripts/globals/quests")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    if (trade:getItemCount() == 4 and trade:hasItemQty(2506, 4)) then
        player:startEvent(4)
    end
end

entity.onTrigger = function(player, npc)
    local seeingSpots = player:getQuestStatus(xi.quest.log_id.CRYSTAL_WAR, xi.quest.id.crystalWar.SEEING_SPOTS)
    if (seeingSpots == QUEST_AVAILABLE) then
        player:startEvent(2)
    elseif (seeingSpots == QUEST_ACCEPTED) then
        player:startEvent(3)
    else
        player:showText(npc, ID.text.WYATT_DIALOG)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if (csid == 2) then
        player:addQuest(xi.quest.log_id.CRYSTAL_WAR, xi.quest.id.crystalWar.SEEING_SPOTS)
    elseif (csid == 4) then
        player:tradeComplete()
        if (player:getQuestStatus(xi.quest.log_id.CRYSTAL_WAR, xi.quest.id.crystalWar.SEEING_SPOTS) == QUEST_ACCEPTED) then
            player:addTitle(xi.title.LADY_KILLER)
            player:addGil(GIL_RATE*3000)
            player:messageSpecial(ID.text.GIL_OBTAINED, GIL_RATE*3000)
            player:completeQuest(xi.quest.log_id.CRYSTAL_WAR, xi.quest.id.crystalWar.SEEING_SPOTS)
        else
            player:addTitle(xi.title.LADY_KILLER)
            player:addGil(GIL_RATE*3000)
            player:messageSpecial(ID.text.GIL_OBTAINED, GIL_RATE*3000)
        end
    end
end

return entity
