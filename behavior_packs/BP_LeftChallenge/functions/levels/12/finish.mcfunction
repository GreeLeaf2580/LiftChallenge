tellraw @a { "rawtext": [{ "text": "[1-2]" },{ "translate": "tell.finish" }] }

structure load finish_ray 40 11 59
setblock 42 10 57 beacon [] destroy


function lib/level/next

tellraw @s { "rawtext": [{ "text": "[1-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.13" }] }
title @s subtitle 1-3