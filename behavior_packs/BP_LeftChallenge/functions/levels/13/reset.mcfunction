tellraw @s { "rawtext": [{ "text": "[1-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.13" }] }
title @s subtitle 1-3

scoreboard players set failTime active 100

give @s lc:levitation 0
scoreboard players set @s levitation 0

give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2


function lib/modify_states/timeline/enable_pass_1
