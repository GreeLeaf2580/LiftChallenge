#reset功能的枚举函数
##使用物品->lib/level/items/reset->***lib/level/enum/reset***->levels/xx/reset
#根据chapter和section决定重置哪一个关卡
execute as @s at @s run scriptevent "lc:reset" ""
# execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/reset

# execute if score @s chapter matches 1 if score @s section matches 1 run function levels/11/reset
# execute if score @s chapter matches 1 if score @s section matches 2 run function levels/12/reset
# execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/reset
# execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/reset
# execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/reset
