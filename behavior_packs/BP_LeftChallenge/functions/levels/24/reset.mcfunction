tellraw @s { "rawtext": [{ "text": "[2-4]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.24" }] }
title @s subtitle 2-4

#指南针结构 structure save compass24 221 9 -96   221 9 -96 disk
structure load compass24 221 9 -96

scoreboard players set failTime active 100

scoreboard players set @s chest 1

give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2

