#退出关卡的中间件枚举函数
#使用物品->lib/level/items/quit->levels/xx/quit

#播放关闭末影箱的音效
scriptevent "lc:playSound" random.enderchestclosed 5
scriptevent "lc:waypoint" remove

#清除被该关卡选中的玩家背包
clear @s

#清除药水效果
effect @s clear

#给玩家回血
effect @s instant_health 1 9 true

#清除经验等级
xp -1000L @s

titleraw @s actionbar { "rawtext": [{ "text": "" }] }

#如果章节=0，关卡=1，说明刚刚在游玩远处模式教程，退出到远处模式大厅
execute if score @s chapter matches 0 if score @s section matches 1 run tp @s 33 10 54 0 0
#如果章节=-1，关卡=1，说明刚刚在游玩高处模式教程，退出到高处模式大厅
execute if score @s chapter matches 0 if score @s section matches -1 run tp @s 33 10 32 180 0
#如果章节=0，关卡=0，说明刚刚在大厅，退出到大厅，但获取quit手段非正常
execute if score @s chapter matches 0 if score @s section matches 0 run tp @s 33 10 43   90 0
#如果章节>=1，说明刚刚在游玩远处模式，退出到远处模式大厅
execute if score @s chapter matches 1.. run tp @s 33 10 54 0 0
#如果章节<=-1，说明刚刚在游玩高处模式，退出到高处模式大厅
execute if score @s chapter matches ..-1 run tp @s 33 10 32 180 0

#移除远处雾堆栈
fog @s pop "lc:farside_fog"
fog @s pop "lc:farside_rain_fog"

scoreboard players set @s chapter 0

scoreboard players set @s section 0

#如果第三章有玩家，则将设置暴风雨夜，没有则为白天
execute if entity @a[scores={chapter=3}] run time set midnight
execute if entity @a[scores={chapter=3}] run weather thunder
execute if entity @a[scores={chapter=3}] run difficulty hard
execute if entity @a[scores={chapter=3}] run effect @a saturation 999 0 true

execute if entity @a[scores={chapter=!3}] run time set noon
execute if entity @a[scores={chapter=!3}] run weather clear
execute if entity @a[scores={chapter=!3}] run difficulty peaceful
execute if entity @a[scores={chapter=!3}] run effect @a saturation 0 0 true