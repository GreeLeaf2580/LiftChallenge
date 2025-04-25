#获得飘浮的枚举中间件函数
#使用物品->lib/level/items/levitation->levels/xx/events/levitation

function lib/modify_states/sound/levitation

clear @s lc:levitation 0 1


execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/events/levitation
execute if score @s chapter matches 1 if score @s section matches 1 run function levels/11/events/levitation
execute if score @s chapter matches 1 if score @s section matches 2 run function levels/12/events/levitation
execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/events/levitation
execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/events/levitation
execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/events/levitation

scoreboard players add @s levitation -1