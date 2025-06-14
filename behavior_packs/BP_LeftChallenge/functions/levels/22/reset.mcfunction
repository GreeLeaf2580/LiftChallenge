tellraw @s { "rawtext": [{ "text": "[2-2]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.22" }] }
title @s subtitle 2-2

#指南针结构 structure save compass22 242 9 -1   242 9 -1 disk
structure load compass22 242 9 -1

scoreboard players set failTime active 100

give @s lc:levitation 2
scoreboard players set @s levitation 2

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1



