tellraw @s { "rawtext": [{ "text": "[1-5]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.15" }] }
title @s subtitle 1-5

#指南针结构 structure save compass15 488 9 82   488 9 82 disk
structure load compass15 488 9 82


scoreboard players set failTime active 100

#给玩家回血
effect @s instant_health 1 9 true

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1




#/clone 6 140 82   6 111 17  -30 1 10
#/fill -30 1 12  -30 