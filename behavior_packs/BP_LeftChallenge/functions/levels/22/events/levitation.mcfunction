
execute if score @s levitation matches 2 run effect @s levitation 20 0 true
execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["I","0:20"] } ] }

execute if score @s levitation matches 1 run effect @s levitation 1 10 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["XI","0:01"] } ] }