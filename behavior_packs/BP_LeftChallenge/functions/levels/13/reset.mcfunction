tellraw @s { "rawtext": [{ "text": "[1-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.13" }] }
title @s subtitle 1-3

#指南针结构 structure save compass13 524 9 31   524 9 31 disk
structure load compass13 524 9 31

scoreboard players set failTime active 100

give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2



