#完成0-1
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 33 11 65
setblock 38 10 60 minecraft:beacon
setblock 26 10 61 minecraft:beacon
setblock 41 10 70 minecraft:beacon
setblock 29 10 74 minecraft:beacon

#修改玩家的计分项
scoreboard players set @s chapter 0

scoreboard players set @s section 0

#传送回大厅
tp @s 33 10 54 0 0

function lib/level/finish