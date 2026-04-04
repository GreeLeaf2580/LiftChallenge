#重置2-3

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass23 248 9 -49   248 9 -49 disk
structure load compass23 248 9 -49

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book23"
scoreboard players set failTime active 100




