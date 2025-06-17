# ===== 反退出重进系统 =====
# 本系统仅对退出重进的玩家有效。

# --- 获取退出重进的玩家 ---
scoreboard players add @a isOnline 0

# --- 令退出重进玩家执行的命令 ---
#给退出重进的玩家或新加入的玩家初始计分项
    #不在大厅且退出重进则回到大厅
    execute as @a[scores={isOnline=0,section=!0}] at @s run function lib/level/items/quit
    
    #在大厅
    execute as @a[scores={isOnline=0}] at @s run scoreboard players set @s chapter 0
    execute as @a[scores={isOnline=0}] at @s run scoreboard players set @s section 0

## 获取当前玩家使用的版本
execute as @a[scores={isOnline=0}] at @s run function lib/get_data/client

## 其他命令
# execute as @a[scores={isOnline=0}] at @s run (退出重进的玩家将会执行这条命令)

# --- 将所有玩家设置为在线模式 ---
scoreboard players reset * isOnline
scoreboard players set @a isOnline 1
