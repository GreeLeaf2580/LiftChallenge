#玩家使用相应物品的相应次数，获得对应效果并提示
execute if score @s slow_falling matches 1 run effect @s slow_falling 1 0 true
execute if score @s slow_falling matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["","0:01"] } ] }