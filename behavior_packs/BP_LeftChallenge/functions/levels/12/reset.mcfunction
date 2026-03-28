
#指南针结构 structure save compass12 501 9 20   501 9 20 disk
structure load compass12 501 9 20

scoreboard players set failTime active 100

loot replace entity @s slot.hotbar 6 loot "farside/book12"
give @s lc:levitation 1
scoreboard players set @s levitation 1



