#如果玩家在关卡里，玩家的y小于0
    #则提示玩家掉出世界
    execute if entity @s[y=-1,dy=-80] run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.out_world", "with": { "rawtext": [{ "selector": "@s" }] } }] }

    #则重置关卡
    execute if entity @s[y=-1,dy=-80] run function lib/level/items/reset

#在无倒计时模式下，如果玩家踩到数字0
    #则提示玩家晒伤
    execute if score noRestTime data matches 1 unless block ~~2~ quartz_slab [] if block ~~-0.03~ lc:number_block_0 run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.sun_burnt", "with": { "rawtext": [{ "selector": "@s" }] } }] }

    #则重置关卡
    execute if score noRestTime data matches 1 unless block ~~2~ quartz_slab [] if block ~~-0.03~ lc:number_block_0 run function lib/level/items/reset