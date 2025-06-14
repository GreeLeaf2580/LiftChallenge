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

execute if score @s chapter matches 2 if score @s section matches 1 run function levels/21/events/levitation
execute if score @s chapter matches 2 if score @s section matches 2 run function levels/22/events/levitation
execute if score @s chapter matches 2 if score @s section matches 3 run function levels/23/events/levitation
execute if score @s chapter matches 2 if score @s section matches 4 run function levels/24/events/levitation
execute if score @s chapter matches 2 if score @s section matches 5 run function levels/25/events/levitation

execute if score @s chapter matches 3 if score @s section matches 1 run function levels/31/events/levitation
execute if score @s chapter matches 3 if score @s section matches 2 run function levels/32/events/levitation
execute if score @s chapter matches 3 if score @s section matches 3 run function levels/33/events/levitation
execute if score @s chapter matches 3 if score @s section matches 4 run function levels/34/events/levitation
execute if score @s chapter matches 3 if score @s section matches 5 run function levels/35/events/levitation

execute if score @s chapter matches 4 if score @s section matches 1 run function levels/41/events/levitation
execute if score @s chapter matches 4 if score @s section matches 2 run function levels/42/events/levitation
execute if score @s chapter matches 4 if score @s section matches 3 run function levels/43/events/levitation
execute if score @s chapter matches 4 if score @s section matches 4 run function levels/44/events/levitation
execute if score @s chapter matches 4 if score @s section matches 5 run function levels/45/events/levitation

scoreboard players add @s levitation -1