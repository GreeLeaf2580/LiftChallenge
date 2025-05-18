# ===== 计时器 =====

# --- time.tick ---
scoreboard players add tick time 1
execute unless score tick time matches 0..19 run scoreboard players set tick time 0

# --- time.timeline ---
# 仅启用后执行
# execute if score timeline active matches 1.. run scoreboard players operation timeline time += timeLapse data
