# ===== 反作弊系统 =====
# 判断玩家是否作弊。

# --- 游戏模式限制 ---
# gamemode adventure @a[m=!adventure]

# --- 禁止玩家放船 ---
# kill @e[family=boat]

# --- 禁止玩家投掷末影珍珠 ---
# kill @e[family=ender_pearl]

# --- 禁止玩家搭建传送门 ---
# execute as @a at @s run fill  -5 -5 -5 5 5 5 air replace portal
# execute as @a at @s run fill  -5 -5 -5 5 5 5 air replace end_portal
