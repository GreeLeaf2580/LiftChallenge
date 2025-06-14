#提示玩家飘走了
tellraw @s { "rawtext": [{ "translate": "tell.failmsg.lift_out", "with": { "rawtext": [{ "selector": "@s" }] } }] }

#重置关卡
function lib/level/items/reset