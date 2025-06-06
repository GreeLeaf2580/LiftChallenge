tellraw @s { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.01" }] }
title @s subtitle 0-1

scoreboard players set @s restTime 100
scoreboard players set failTime active 100

give @s lc:levitation

structure load compass01 150 43 150

function lib/modify_states/timeline/enable_pass_1
