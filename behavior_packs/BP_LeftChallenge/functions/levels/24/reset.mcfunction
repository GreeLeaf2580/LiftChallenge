#重置2-4

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass24 221 9 -96   221 9 -96 disk
structure load compass24 221 9 -96

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
scoreboard players set @s chest 1

loot replace entity @s slot.hotbar 6 loot "farside/book24"
give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2

