#重置2-1

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass21 299 9 0   299 9 0 disk
structure load compass21 299 9 0

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book21"
give @s lc:levitation 2
scoreboard players set @s levitation 3



