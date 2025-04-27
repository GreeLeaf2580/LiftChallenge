

execute if score @s levitation matches 2 run effect @s levitation 10 2 true
execute if score @s levitation matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["III","0:10"] } ] }


execute if score @s levitation matches 1 run effect @s levitation 6 4 true
execute if score @s levitation matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["V","0:06"] } ] }

