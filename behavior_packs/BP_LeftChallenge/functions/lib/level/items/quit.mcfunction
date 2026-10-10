#退出关卡的中间件枚举函数
#使用物品->lib/level/items/quit->levels/xx/quit

#播放关闭末影箱的音效
scriptevent "lc:playSound" random.enderchestclosed 5

#清除被该关卡选中的玩家背包
clear @s

#清除药水效果
effect @s clear

#给玩家回血
effect @s instant_health 1 9 true

#清除经验等级
xp -1000L @s

titleraw @s actionbar { "rawtext": [{ "text": "" }] }

execute if score @s chapter matches 0.. run tp @s 33 10 54 0 0

#移除远处雾堆栈
fog @s pop "lc:farside_fog"
fog @s pop "lc:farside_rain_fog"

scoreboard players set @s chapter 0

scoreboard players set @s section 0

#如果第三章有玩家，则将设置暴风雨夜，没有则为白天
execute if entity @a[scores={chapter=3}] run time set midnight
execute if entity @a[scores={chapter=3}] run weather thunder
execute if entity @a[scores={chapter=3}] run difficulty easy
execute if entity @a[scores={chapter=3}] run effect @a saturation 999 0 true

execute if entity @a[scores={chapter=!3}] run time set noon
execute if entity @a[scores={chapter=!3}] run weather clear
execute if entity @a[scores={chapter=!3}] run difficulty peaceful
execute if entity @a[scores={chapter=!3}] run effect @a saturation 0 0 true