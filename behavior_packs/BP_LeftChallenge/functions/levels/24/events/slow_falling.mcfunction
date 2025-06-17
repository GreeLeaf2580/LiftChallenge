execute if score @s slow_falling matches 2 run effect @s slow_falling 3 0 true
execute if score @s slow_falling matches 2 run effect @s jump_boost 2 1 true
execute if score @s slow_falling matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["","0:03"] },{ "translate": "tell.while" },{ "translate": "tell.jump_boost", "with": ["II","0:02"] } ] }

execute if score @s slow_falling matches 1 run effect @s slow_falling 10 0 true
execute if score @s slow_falling matches 1 run effect @s instant_damage
execute if score @s slow_falling matches 1 run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["","0:05"] },{ "translate": "tell.while" },{ "translate": "tell.instant_damage" } ] }