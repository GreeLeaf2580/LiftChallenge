tellraw @s { "rawtext": [{ "text": "[1-5]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.15" }] }
title @s subtitle 1-5

scoreboard players set failTime active 100

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1


function lib/modify_states/timeline/enable_pass_1


#/clone 6 140 82   6 111 17  -30 1 10
#/fill -30 1 12  -30 