scoreboard players set @s chapter 2
scoreboard players set @s section 4

tellraw @s { "rawtext": [{ "text": "[2-4]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.24" }] }
title @s subtitle 2-4

function lib/level/enum/tp

function lib/level/start