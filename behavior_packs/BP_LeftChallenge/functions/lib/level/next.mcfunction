#下一关关卡的中间件函数
#levels/next->lib/level/next

#播放通关的音效
function lib/modify_states/sound/finish

#清除药水效果
effect @s clear

#给玩家回血
effect @s instant_health 1 9 true

#清除经验等级
xp -1000L @s

#清除被该关卡选中的玩家背包
clear @s

scoreboard players add @s section 1

#给予被选中玩家物品
    #给予“提示”
    execute if score @s chapter matches 4 run replaceitem entity @s slot.hotbar 6 lc:hint 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“重置关卡”
    replaceitem entity @s slot.hotbar 7 lc:reset 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

    #给予“退出关卡”
    replaceitem entity @s slot.hotbar 8 lc:quit 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

function lib/level/enum/reset