scoreboard players set @s chapter 0
scoreboard players set @s section 1

tellraw @s { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.01" }] }
title @s subtitle 0-1

function lib/level/enum/tp

function lib/level/start