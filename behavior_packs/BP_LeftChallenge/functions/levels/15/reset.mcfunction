#重置1-5

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass15 488 9 82   488 9 82 disk
structure load compass15 488 9 82

#重置玩家的倒计时
scoreboard players set failTime active 100

#给玩家回血
effect @s instant_health 1 9 true

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book15"
give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1




#/clone 6 140 82   6 111 17  -30 1 10
#/fill -30 1 12  -30 