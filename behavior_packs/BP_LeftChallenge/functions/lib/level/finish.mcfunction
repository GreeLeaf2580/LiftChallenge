#通关关卡的中间件函数
#levels/finish->lib/level/finish

#播放通关的音效
function lib/modify_states/sound/cheer

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

scoreboard players set @s chapter 0
scoreboard players set @s section 0


