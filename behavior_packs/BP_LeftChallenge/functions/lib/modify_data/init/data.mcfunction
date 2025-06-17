# ===== 数据重置 =====
# 用于重置游戏数据

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 重置记分板、变量和标记实体到默认值下

# --- 常加载区域重置 ---
tickingarea add 0 0 0 15 0 15 "originArea"

# --- 记分板重置 ---
scoreboard objectives add active dummy "激活状态"
scoreboard objectives add data dummy "数据"
scoreboard objectives add settings dummy "设置"
scoreboard objectives add time dummy "时间"
scoreboard objectives add isOnline dummy "玩家在线"
scoreboard objectives add state dummy "玩家状态"
scoreboard objectives add chapter dummy "关卡章"
scoreboard objectives add section dummy "关卡节"
scoreboard objectives add levitation dummy "飘浮使用次数"
scoreboard objectives add slow_falling dummy "缓降使用次数"

scoreboard objectives add isInSky dummy "是否在空中"
scoreboard objectives add isJumping dummy "是否跳跃"
scoreboard objectives add lastRestTime dummy "玩家暴露的死亡时间"
scoreboard objectives add restTime dummy "玩家暴露的剩余时间"

## 玩家死亡信息
scoreboard objectives add deathState dummy "死亡状态"
scoreboard players set @a deathState 0


# --- 数据变量重置 ---

## 玩家数据
scoreboard players set @a isOnline 1
scoreboard players set @a chapter 0
scoreboard players set @a section 0
scoreboard players set @a levitation 0
scoreboard players set @a slow_falling 0

## 基础时间数据
scoreboard players set tick time 0

## 时间线
scoreboard players set timeline active 1
scoreboard players set timeline time 0
scoreboard players set timeLapse data 0
scoreboard players set keepValue data 0

# --- 数据变量重置 ---

## 开发者设置
scoreboard players set developerMode settings 0

## 音效控制器
scoreboard players set sound active 0
scoreboard players set sound time 0