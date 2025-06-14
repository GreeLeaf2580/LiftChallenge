#如果头顶触碰到数字0
    #则提示玩家磕到头了
    execute if block ~~0.03~ lc:number_block_0 run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.headache", "with": { "rawtext": [{ "selector": "@s" }] } }] }

    #则重置关卡
    execute if block ~~0.03~ lc:number_block_0 run function lib/level/items/reset