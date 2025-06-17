# ===== 主函数 =====

# --- 时间控制器 ---
function system/timer

function system/get_variables
# --- 时间线 ---
execute if score timeline active matches 1.. run function system/controller/timeline

# --- 音效控制器 ---
# 仅当启用后执行

execute if score sound active matches 1.. run function system/controller/sound


# --- 反作弊与反退出系统 ---

function system/anticheating
function system/antileave

#
function lib/get_data/player_is_alive
#玩家死亡则重置关卡
execute as @a[tag=!isAlive] at @s run function lib/level/items/reset

# --- 开发者模式下的更改游戏模式 ---
execute if score developerMode settings matches 1 run function lib/modify_data/developer_gamemode

