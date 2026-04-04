# ===== 玩家存活检测 =====
# 用于检测玩家是否处于存活状态

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 该事件将实时返回deathState.@s，为0时为未死亡，为1时为刚刚死亡，为2时为长期死亡。

# --- 主体部分 ---
# ===== 死亡机制 =====
# 判定死亡玩家并执行命令。

# --- 运行死亡榜 ---
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0

execute as @a[scores={deathState=1}] run function lib/level/items/reset

scoreboard players set @a[scores={deathState=1}] deathState 2

# --- 死亡的玩家执行的命令 ---

