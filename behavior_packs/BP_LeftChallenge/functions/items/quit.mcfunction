#退出关卡的枚举函数
#使用物品->items/quit->levels/xx/quit

#播放关闭末影箱的音效
function lib/modify_states/sound/quit

#清除被该关卡选中的玩家背包
clear @s

#清除药水效果
effect @s clear

#清除经验等级
xp -1000L @s

execute if score @s chapter matches 0 if score @s section matches 1 run function levels/01/quit



execute if score @s chapter matches 0.. run tp @s 33 10 54 0 0

function lib/modify_states/timeline/enable_pass_1

scoreboard players set @s chapter 0

scoreboard players set @s section 0