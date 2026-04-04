#通过大厅按钮进入2-3
#修改计分项
scoreboard players set @s chapter 2
scoreboard players set @s section 3

tellraw @s { "rawtext": [{ "text": "[2-3]" },{ "translate": "tell.reset" }] }

titleraw @s title { "rawtext": [{ "translate": "title.23" }] }
title @s subtitle 2-3

function lib/level/enum/tp

function lib/level/start