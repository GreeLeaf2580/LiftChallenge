scoreboard players set @s chapter 2
scoreboard players set @s section 1

tellraw @s { "rawtext": [{ "text": "[2-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.21" }] }
title @s subtitle 2-1

function lib/level/enum/tp

function lib/level/start