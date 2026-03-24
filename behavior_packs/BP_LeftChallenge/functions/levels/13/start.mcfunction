scoreboard players set @s chapter 1
scoreboard players set @s section 3

tellraw @s { "rawtext": [{ "text": "[1-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.13" }] }
title @s subtitle 1-3

function lib/level/enum/tp

function lib/level/start