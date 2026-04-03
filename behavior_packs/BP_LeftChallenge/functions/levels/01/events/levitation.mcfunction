#玩家使用相应物品获得对应效果并提示
effect @s levitation 5 0 true
tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["","0:05"] } ] }