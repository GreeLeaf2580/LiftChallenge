tellraw @a { "rawtext": [{ "text": "[2-1]" },{ "translate": "tell.finish" }] }

structure load finish_ray 26 11 61
setblock 23 10 61 beacon [] destroy

function lib/level/next

tellraw @s { "rawtext": [{ "text": "[2-2]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.22" }] }
title @s subtitle 2-2
