tellraw @a { "rawtext": [{ "text": "[2-3]" },{ "translate": "tell.finish" }] }

structure load finish_ray 22 11 58
setblock 24 10 56 beacon [] destroy


function lib/level/next

tellraw @s { "rawtext": [{ "text": "[2-4]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.24" }] }
title @s subtitle 2-4