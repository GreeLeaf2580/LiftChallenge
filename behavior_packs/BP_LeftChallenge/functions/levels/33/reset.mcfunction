#重置3-3

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass33 565 10 286   565 10 286 disk
# structure load compass33 565 10 286
scriptevent "lc:waypoint" 569 11 461

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book33"

give @s lc:levitation 1
scoreboard players set @s levitation 1

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1

#如果预定位置没有怪物，则延迟生成一只怪物
# execute unless entity @e[type=minecraft:ghast] as @s run scriptevent "lc:later" summon
