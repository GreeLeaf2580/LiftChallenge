# 提示剩余时间
scoreboard players operation tempSecond restTime = @s restTime

# +19 为了上取整
scoreboard players add tempSecond restTime 19
scoreboard players set "20" restTime 20
scoreboard players operation tempSecond restTime /= "20" restTime
titleraw @s[scores={section=!0}] actionbar {"rawtext":[{"translate":"title.exposeTime","with":{"rawtext":[{"score":{"name":"tempSecond","objective":"restTime"}}]}}]}