#获得飘浮的枚举中间件函数
#使用物品->lib/level/items/slow_falling->levels/xx/events/slow_falling

function lib/modify_states/sound/slow_falling

clear @s lc:slow_falling 0 1

execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 1 run function levels/11/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 2 run function levels/12/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/events/slow_falling
execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/events/slow_falling
execute if score @s chapter matches 2 if score @s section matches 1 run function levels/21/events/slow_falling
execute if score @s chapter matches 2 if score @s section matches 2 run function levels/22/events/slow_falling
execute if score @s chapter matches 2 if score @s section matches 3 run function levels/23/events/slow_falling
execute if score @s chapter matches 2 if score @s section matches 4 run function levels/24/events/slow_falling
execute if score @s chapter matches 2 if score @s section matches 5 run function levels/25/events/slow_falling
execute if score @s chapter matches 3 if score @s section matches 1 run function levels/31/events/slow_falling
execute if score @s chapter matches 3 if score @s section matches 2 run function levels/32/events/slow_falling
execute if score @s chapter matches 3 if score @s section matches 3 run function levels/33/events/slow_falling
execute if score @s chapter matches 3 if score @s section matches 4 run function levels/34/events/slow_falling
execute if score @s chapter matches 3 if score @s section matches 5 run function levels/35/events/slow_falling
execute if score @s chapter matches 4 if score @s section matches 1 run function levels/41/events/slow_falling
execute if score @s chapter matches 4 if score @s section matches 2 run function levels/42/events/slow_falling
execute if score @s chapter matches 4 if score @s section matches 3 run function levels/43/events/slow_falling
execute if score @s chapter matches 4 if score @s section matches 4 run function levels/44/events/slow_falling
execute if score @s chapter matches 4 if score @s section matches 5 run function levels/45/events/slow_falling

scoreboard players add @s slow_falling -1
