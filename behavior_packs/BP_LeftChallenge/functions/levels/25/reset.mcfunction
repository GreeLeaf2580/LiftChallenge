#重置2-5

#重置关卡装有终点指南针的潜影盒
#指南针结构 /structure save compass25 305 9 -77 305 9 -77 
# structure load compass25 305 9 -77 
scriptevent "lc:waypoint" 308 10 -28

#重置玩家的倒计时
scoreboard players set failTime active 100

#给予玩家物品并修改对应的计分项
loot replace entity @s slot.hotbar 6 loot "farside/book25"
give @s lc:levitation 3
scoreboard players set @s levitation 3

execute positioned 296 9 -55  unless entity @e[type=lc:text_display,r=2] run scriptevent "lc:later" display
