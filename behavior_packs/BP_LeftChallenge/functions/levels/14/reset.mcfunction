tellraw @s { "rawtext": [{ "text": "[1-4]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.14" }] }
title @s subtitle 1-4

scoreboard players set failTime active 100

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1

#活塞结构 /structure save _14   560 12 77   564 13 77 disk
# fill 564 13 77 487 12 77 air 
# structure load _14 560 12 77


function lib/modify_states/timeline/enable_pass_1
