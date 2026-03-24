scoreboard players set @s chapter 1
scoreboard players set @s section 1

tellraw @s { "rawtext": [{ "text": "[1-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.11" }] }
title @s subtitle 1-1

function lib/level/enum/tp

function lib/level/start