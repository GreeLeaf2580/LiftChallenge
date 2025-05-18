execute if score @s slow_falling matches 2 run effect @s slow_falling 2 0 true
execute if score @s slow_falling matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.slow_falling", "with": ["","0:02"] } ] }

execute if score @s slow_falling matches 1 run effect @s slow_falling 2 0 true
execute if score @s slow_falling matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.slow_falling", "with": ["","0:02"] } ] }