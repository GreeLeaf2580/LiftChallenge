

#指南针结构 /structure save compass25 305 9 -77 305 9 -77 
structure load compass25 305 9 -77 

scoreboard players set failTime active 100

loot replace entity @s slot.hotbar 6 loot "farside/book25"
give @s lc:levitation 4
scoreboard players set @s levitation 4

give @s lc:slow_falling 1
scoreboard players set @s slow_falling 1

