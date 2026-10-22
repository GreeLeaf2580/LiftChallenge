#玩家使用相应物品的相应次数，获得对应效果并提示

execute if score @s levitation matches 1 run effect @s levitation 1 2 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["III","0:01"] } ] }
