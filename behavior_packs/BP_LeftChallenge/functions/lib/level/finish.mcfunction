#通关关卡的中间件函数
#levels/finish->lib/level/finish
# 调用此方法时：需指定执行位置为关卡入口上方 1 格（execute positioned ...），且末地烛需后于此函数放置

#播放通关的音效
execute if block ~~~ air as @a at @s run scriptevent "lc:playSound" random.toast_challenge_complete 5
execute if block ~~~ air as @a at @s run summon fireworks_rocket ~~~
execute unless block ~~~ air run scriptevent "lc:playSound" beacon.activate 5

#清除被该关卡选中的玩家背包
clear @s

#清除药水效果
effect @s clear

#给玩家回血
effect @s instant_health 1 9 true

#清除经验等级
xp -1000L @s

titleraw @s actionbar { "rawtext": [{ "text": "" }] }

#如果玩家在远处模式，则传送回远处模式的大厅
execute if score @s chapter matches 0.. run tp @s 33 10 54 0 0

#清除计分项
scoreboard players set @s chapter 0
scoreboard players set @s section 0


