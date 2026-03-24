scoreboard players set @s chapter 1
scoreboard players set @s section 4

tellraw @s { "rawtext": [{ "text": "[1-4]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.14" }] }
title @s subtitle 1-4

function lib/level/enum/tp

function lib/level/start