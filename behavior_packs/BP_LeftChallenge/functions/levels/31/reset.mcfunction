#重置3-1

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass31 502 10 300   502 10 300 disk
structure load compass31 502 10 300

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book31"

give @s lc:levitation 1
scoreboard players set @s levitation 1

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1

