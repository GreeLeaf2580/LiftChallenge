scoreboard players set @s chapter 2
scoreboard players set @s section 2

tellraw @s { "rawtext": [{ "text": "[2-2]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.22" }] }
title @s subtitle 2-2

function lib/level/enum/tp

function lib/level/start