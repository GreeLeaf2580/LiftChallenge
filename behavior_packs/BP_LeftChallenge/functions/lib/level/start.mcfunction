#开始关卡的枚举中间件函数
#hall/timeline->levels/xx/start->lib/level/start->levels/xx/reset

#清除被该关卡选中的玩家背包
clear @s

#给予被选中玩家物品
    #给予“提示”
    execute if score @s chapter matches 4 run replaceitem entity @s slot.hotbar 6 lc:hint 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“重置关卡”
    replaceitem entity @s slot.hotbar 7 lc:reset 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“退出关卡”
    replaceitem entity @s slot.hotbar 8 lc:quit 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

function lib/level/enum/reset