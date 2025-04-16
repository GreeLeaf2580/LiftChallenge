
execute if score @s levitation matches 2 run effect @s levitation 3 2 true
execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["III","0:03"] } ] }

execute if score @s levitation matches 1 run effect @s levitation 3 0 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:03"] } ] }