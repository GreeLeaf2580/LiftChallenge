tellraw @a { "rawtext": [{ "text": "[2-2]" },{ "translate": "tell.finish" }] }

structure load finish_ray 23 11 61
setblock 22 10 58 beacon [] destroy


function lib/level/next

tellraw @s { "rawtext": [{ "text": "[2-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.23" }] }
title @s subtitle 2-3