#提示的枚举中间件函数
#使用物品->items/hint->levels/xx/hint
function lib/modify_states/sound/hint

execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/hint
execute if score @s chapter matches 1 if score @s section matches 1 run function levels/11/hint
execute if score @s chapter matches 1 if score @s section matches 2 run function levels/12/hint
execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/hint
execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/hint
execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/hint