tellraw @s { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.01" }] }
title @s subtitle 0-1

scoreboard players set @s restTime 100
scoreboard players set failTime active 100

give @s lc:levitation

#关卡终点指南针
#/structure save compass01 149 40 150  149 40 150 disk
structure load compass01 149 40 150

function lib/modify_states/timeline/enable_pass_1
