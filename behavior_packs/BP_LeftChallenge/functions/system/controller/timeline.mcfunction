# ===== 时间线控制器 =====
# 该函数仅当时间线启用后执行

# --- 需要启用的时间线文件 ---

# 1-5：启用并时间流逝
execute if score timeline active matches 1..5 run scoreboard players add timeline time 1

# --- 时间线函数文件列表 ---

execute as @a[scores={chapter=0,section=0}] run function hall/timeline

#时间线枚举：当玩家在哪个关卡就执行哪个时间线
execute as @a at @s run scriptevent "lc:timeline" ""
# execute as @a[scores={chapter=0,section=1}] run function levels/01/timeline
# execute as @a[scores={chapter=1,section=1}] run function levels/11/timeline
# execute as @a[scores={chapter=1,section=2}] run function levels/12/timeline
# ...
