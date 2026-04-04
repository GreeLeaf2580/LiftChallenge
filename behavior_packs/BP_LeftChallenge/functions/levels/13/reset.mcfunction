#重置1-3

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass13 524 9 31   524 9 31 disk
structure load compass13 524 9 31

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book13"
give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2



