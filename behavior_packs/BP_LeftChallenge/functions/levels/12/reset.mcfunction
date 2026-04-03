#重置1-2

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass12 501 9 20   501 9 20 disk
structure load compass12 501 9 20

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book12"
give @s lc:levitation 1
scoreboard players set @s levitation 1



