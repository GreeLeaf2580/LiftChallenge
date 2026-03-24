tellraw @a { "rawtext": [{ "text": "[1-4]" },{ "translate": "tell.finish" }] }

structure load finish_ray 44 11 59
setblock 42 10 61 beacon [] destroy


function lib/level/next

tellraw @s { "rawtext": [{ "text": "[1-5]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.15" }] }
title @s subtitle 1-5