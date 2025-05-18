#获得飘浮的枚举中间件函数
#使用物品->lib/level/items/slow_falling->levels/xx/events/slow_falling

function lib/modify_states/sound/slow_falling

clear @s lc:slow_falling 0 1

execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/events/slow_falling

scoreboard players add @s slow_falling -1
