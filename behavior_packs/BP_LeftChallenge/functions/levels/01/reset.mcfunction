#重置0-1
#重置玩家的倒计时
scoreboard players set @s restTime 100
scoreboard players set failTime active 100

#给予玩家物品
give @s lc:levitation

execute unless entity @e[type=lc:text_display,r=2] run function levels/01/events/display

#重置关卡装有终点指南针的潜影盒
#/structure save compass01 149 40 150  149 40 150 disk
structure load compass01 149 40 150


