#重置3-2

#重置关卡装有终点指南针的潜影盒
#指南针结构 structure save compass32 565 10 286   565 10 286 disk
structure load compass31 565 10 286

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book32"

give @s lc:levitation 1
scoreboard players set @s levitation 1

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1

give @s minecraft:wind_charge 2

replaceitem entity @s slot.weapon.offhand 0 minecraft:shield 1
