#重置1-4

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass14 554 9 53   554 9 53 disk
structure load compass14 554 9 53

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book14"
give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1

#活塞结构 /structure save _14   560 12 77   564 13 77 disk
# fill 564 13 77 487 12 77 air 
# structure load _14 560 12 77



