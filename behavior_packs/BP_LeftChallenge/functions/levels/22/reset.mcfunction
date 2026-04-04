#重置2-2

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass22 242 9 -1   242 9 -1 disk
structure load compass22 242 9 -1

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book22"
give @s lc:levitation 2
scoreboard players set @s levitation 2

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1



