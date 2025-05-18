tellraw @s { "rawtext": [{ "text": "[1-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.11" }] }
title @s subtitle 1-1


#指南针结构 structure save compass11 500 9 1   500 9 1 disk
structure load compass11 500 9 1

scoreboard players set failTime active 100

give @s lc:levitation 2
scoreboard players set @s levitation 2

function lib/modify_states/timeline/enable_pass_1
