# ===== 时间线控制器 =====
# <!> 注意：该函数仅当时间线启用后执行

# --- 计时 ---
# 1-5：启用并时间流逝
execute if score timeline active matches 1..5 run scoreboard players add timeline time 1

# --- 需要启用的时间线文件 ---

## 检测玩家状态
execute as @a at @s run function lib/get_data/player_state

## 输出
execute as @a[scores={state=0}] at @s run title @s actionbar 站立
execute as @a[scores={state=1}] at @s run title @s actionbar 潜行
execute as @a[scores={state=2}] at @s run title @s actionbar 爬行
execute as @a[scores={state=3}] at @s run title @s actionbar 睡觉
