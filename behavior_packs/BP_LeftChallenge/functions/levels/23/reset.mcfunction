tellraw @s { "rawtext": [{ "text": "[2-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.23" }] }
title @s subtitle 2-3

#指南针结构 structure save compass23 248 9 -49   248 9 -49 disk
structure load compass23 248 9 -49

scoreboard players set failTime active 100

scoreboard players set @s chest 5



