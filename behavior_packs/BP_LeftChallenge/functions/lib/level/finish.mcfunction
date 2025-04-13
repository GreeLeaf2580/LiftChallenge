#通关关卡的通用函数
#levels/finish->lib/level/finish

#播放通关的音效
function lib/modify_states/sound/finish

#清除被该关卡选中的玩家背包
clear @s

#清除药水效果
effect @s clear

#清除经验等级
xp -1000L @s


execute if score @s chapter matches 0.. run tp @s 33 10 54 0 0

function lib/modify_states/timeline/enable_pass_1

scoreboard players set @s chapter 0

scoreboard players set @s section 0