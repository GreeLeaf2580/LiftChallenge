


#指南针结构 structure save compass11 500 9 1   500 9 1 disk
structure load compass11 500 9 1

scoreboard players set failTime active 100

loot replace entity @s slot.hotbar 6 loot "farside/book11"
give @s lc:levitation 2
scoreboard players set @s levitation 2


