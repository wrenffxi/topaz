-----------------------------------
-- ID: 4442
-- Item: Pineapple Juice
-- Item Effect: Restores 80 MP over 240 seconds.
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return 0
end

item_object.onItemUse = function(target)
    if (not target:hasStatusEffect(xi.effect.REFRESH)) then
        target:addStatusEffect(xi.effect.REFRESH, 1, 3, 240)
    else
        target:messageBasic(xi.msg.basic.NO_EFFECT)
    end
end

return item_object
