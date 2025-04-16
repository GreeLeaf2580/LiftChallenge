#通关关卡的中间件函数
#levels/finish->lib/level/finish

#播放通关的音效
function lib/modify_states/sound/finish

#清除被该关卡选中的玩家背包
clear @s

#清除药水效果
effect @s clear

#清除经验等级
xp -1000L @s


function lib/modify_states/timeline/enable_pass_1
