execute if score @s levitation matches 3 run effect @s levitation 20 0 true
execute if score @s levitation matches 3 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:20"] } ] }

execute if score @s levitation matches 2 run effect @s levitation 0 0 true
execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:00"] } ] }

execute if score @s levitation matches 1 run effect @s levitation 9999 5 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["VI","inf"] } ] }