
#指南针结构 structure save compass13 524 9 31   524 9 31 disk
structure load compass13 524 9 31

scoreboard players set failTime active 100

loot replace entity @s slot.hotbar 6 loot "farside/book13"
give @s lc:slow_falling 2
scoreboard players set @s slow_falling 2



