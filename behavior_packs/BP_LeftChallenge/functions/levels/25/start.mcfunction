scoreboard players set @s chapter 2
scoreboard players set @s section 5

tellraw @s { "rawtext": [{ "text": "[2-5]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.25" }] }
title @s subtitle 2-5

function lib/level/enum/tp

function lib/level/start