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

scoreboard players set @s chapter 0

scoreboard players set @s section 0