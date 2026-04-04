# ===== 事件：玩家进入游戏 =====
# 用于规定玩家进入游戏时执行的命令。
# 调用此方法时：需修饰执行者为进入的玩家，执行位置为该玩家的位置（execute as @a[scores={isOnline=0}] at @s）。

#给退出重进的玩家或新加入的玩家初始计分项
#不在大厅且退出重进则回到大厅
execute if entity @s[scores={section=!0}] run function lib/level/items/quit
    
#在大厅
scoreboard players set @s chapter 0
scoreboard players set @s section 0

## 获取当前玩家使用的版本
function lib/get_data/client
