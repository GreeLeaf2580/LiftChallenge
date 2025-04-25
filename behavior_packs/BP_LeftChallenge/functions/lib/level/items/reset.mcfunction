#重置关卡的中间件枚举函数
#使用物品->lib/level/items/reset->levels/xx/reset
#播放末影人音效
function lib/modify_states/sound/reset

#清除药水效果
effect @s clear

#清除经验等级
xp -1000L @s

#清除被该关卡选中的玩家背包
clear @s

#给予被选中玩家物品
    #给予“提示”
    replaceitem entity @s slot.hotbar 6 lc:hint 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“重置关卡”
    replaceitem entity @s slot.hotbar 7 lc:reset 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“退出关卡”
    replaceitem entity @s slot.hotbar 8 lc:quit 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

function lib/level/tp

execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/reset
execute if score @s chapter matches 1 if score @s section matches 1 run function levels/11/reset
execute if score @s chapter matches 1 if score @s section matches 2 run function levels/12/reset
execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/reset
execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/reset
execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/reset