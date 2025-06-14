tellraw @s { "rawtext": [{ "text": "[1-2]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.12" }] }
title @s subtitle 1-2

#指南针结构 structure save compass12 501 9 20   501 9 20 disk
structure load compass12 501 9 20

scoreboard players set failTime active 100

give @s lc:levitation 1
scoreboard players set @s levitation 1



