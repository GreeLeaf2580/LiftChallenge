
#execute if score @s levitation matches 2 run effect @s levitation 3 2 true
#execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["III","0:03"] } ] }

execute if score @s levitation matches 1 run effect @s levitation 1 5 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["V","0:01"] } ] }