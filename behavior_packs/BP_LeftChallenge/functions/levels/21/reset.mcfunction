tellraw @s { "rawtext": [{ "text": "[2-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.21" }] }
title @s subtitle 2-1


#指南针结构 structure save compass21 299 9 0   299 9 0 disk
structure load compass21 299 9 0

scoreboard players set failTime active 100

give @s lc:levitation 3
scoreboard players set @s levitation 3



