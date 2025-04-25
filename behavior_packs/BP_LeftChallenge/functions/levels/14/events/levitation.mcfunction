
execute if score @s levitation matches 5 run effect @s levitation 4 0 true
execute if score @s levitation matches 5 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:04"] } ] }
execute if score @s levitation matches 4 run effect @s levitation 15 0 true
execute if score @s levitation matches 4 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:15"] } ] }
execute if score @s levitation matches 3 run effect @s levitation 5 0 true
execute if score @s levitation matches 3 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:5"] } ] }
execute if score @s levitation matches 2 run effect @s levitation 5 3 true
execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["IV","0:5"] } ] }

execute if score @s levitation matches 1 run effect @s levitation 6 0 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:06"] } ] }

