tellraw @s { "rawtext": [{ "text": "[1-2]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.12" }] }
title @s subtitle 1-2

scoreboard players set failTime active 100

give @s lc:levitation 1
scoreboard players set @s levitation 1


function lib/modify_states/timeline/enable_pass_1
