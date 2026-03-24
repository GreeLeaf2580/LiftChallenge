tellraw @a { "rawtext": [{ "text": "[1-3]" },{ "translate": "tell.finish" }] }

structure load finish_ray 42 11 57
setblock 44 10 59 beacon [] destroy


function lib/level/next

tellraw @s { "rawtext": [{ "text": "[1-4]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.14" }] }
title @s subtitle 1-4