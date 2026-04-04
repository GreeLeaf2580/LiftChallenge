# ===== 主函数 =====

# --- 时间控制器 ---
function system/timer

# --- 时间线 ---
execute if score timeline active matches 1.. run function system/controller/timeline

# --- 音效控制器 ---
# 仅当启用后执行

execute if score sound active matches 1.. run function system/controller/sound

# --- 反退出重进 ---
## 获取退出重进的玩家
scoreboard players add @a isOnline 0
## 令退出重进玩家执行的命令
execute as @a[scores={isOnline=0}] at @s run function events/player_join
## 将所有玩家设置为在线模式
scoreboard objectives remove isOnline
scoreboard objectives add isOnline dummy "玩家在线"
scoreboard players set @a isOnline 1

# --- 玩家死亡检测 ---
## 玩家死亡检测
scoreboard players set @a[scores={deathState=!2}] deathState 1
scoreboard players set @e[type=player] deathState 0
execute as @a[scores={deathState=1}] at @s run function events/player_die
scoreboard players set @a[scores={deathState=1}] deathState 2
## 玩家死亡则重置关卡
# execute as @a[scores={deathState=!0}] at @s run function lib/level/items/reset

# --- 开发者模式下的更改游戏模式 ---
execute if score developerMode settings matches 1 run function lib/modify_data/developer_gamemode

