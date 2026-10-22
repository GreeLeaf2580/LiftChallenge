# ===== 时间线控制器 =====
# 该函数仅当时间线启用后执行

# 大厅时间线
execute as @a[scores={chapter=0,section=0}] run function hall/timeline

#如果第三章有玩家，则将设置暴风雨夜，没有则为白天
execute if entity @a[scores={chapter=3}] run time set midnight
execute if entity @a[scores={chapter=3}] run weather thunder
execute if entity @a[scores={chapter=3}] run difficulty hard

execute unless entity @a[scores={chapter=3}] run time set noon
execute unless entity @a[scores={chapter=3}] run weather clear
execute unless entity @a[scores={chapter=3}] run difficulty peaceful

# 关卡时间线
# 这里使用脚本实现时间线枚举：当玩家在哪个关卡就执行哪个时间线，示例：
# execute as @a[scores={chapter=0,section=1}] run function levels/01/timeline
# execute as @a[scores={chapter=1,section=1}] run function levels/11/timeline
execute as @a at @s run scriptevent "lc:timeline" ""
