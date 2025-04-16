#下一关关卡的中间件函数
#levels/next->lib/level/next

#播放通关的音效
function lib/modify_states/sound/finish

#清除药水效果
effect @s clear

#清除经验等级
xp -1000L @s

#清除被该关卡选中的玩家背包
clear @s

scoreboard players add @s section 1

#给予被选中玩家物品
    #给予“提示”
    replaceitem entity @s slot.hotbar 6 lc:hint 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“重置关卡”
    replaceitem entity @s slot.hotbar 7 lc:reset 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“退出关卡”
    replaceitem entity @s slot.hotbar 8 lc:quit 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/reset
execute if score @s chapter matches 1 if score @s section matches 1 run function levels/11/reset
execute if score @s chapter matches 1 if score @s section matches 2 run function levels/12/reset
execute if score @s chapter matches 1 if score @s section matches 3 run function levels/13/reset
execute if score @s chapter matches 1 if score @s section matches 4 run function levels/14/reset
execute if score @s chapter matches 1 if score @s section matches 5 run function levels/15/reset