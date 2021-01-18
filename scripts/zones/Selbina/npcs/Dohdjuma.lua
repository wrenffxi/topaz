-----------------------------------
-- Area: Selbina
--  NPC: Dohdjuma
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Selbina/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        611,    36,    -- Rye Flour
        5011,  233,    -- Scroll of Sheepfoe Mambo
        4150, 2335,    -- Eye Drops
        4148,  284,    -- Antidote
        4509,   10,    -- Distilled Water
        4112,  819,    -- Potion
        17395,  10,    -- Lugworm
        4378,   54,    -- Selbina Milk
        4490,  432,    -- Pickled Herring
        4559, 4485,    -- Herb Quus
        2866, 9200,    -- Selbina Waystone
    }

    player:showText(npc, ID.text.DOHDJUMA_SHOP_DIALOG)
    tpz.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
