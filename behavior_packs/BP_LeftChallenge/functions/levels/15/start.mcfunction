scoreboard players set @s chapter 1
scoreboard players set @s section 5

tellraw @s { "rawtext": [{ "text": "[1-5]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.15" }] }
title @s subtitle 1-5

function lib/level/enum/tp

function lib/level/start