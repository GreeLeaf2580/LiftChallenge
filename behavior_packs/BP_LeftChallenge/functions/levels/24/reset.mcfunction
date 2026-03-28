

#指南针结构 structure save compass24 221 9 -96   221 9 -96 disk
structure load compass24 221 9 -96

scoreboard players set failTime active 100

scoreboard players set @s chest 1

loot replace entity @s slot.hotbar 6 loot "farside/book24"
give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2

