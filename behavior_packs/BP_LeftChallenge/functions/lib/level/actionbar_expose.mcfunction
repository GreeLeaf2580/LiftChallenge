# 提示剩余时间
scoreboard players operation tempSecond restTime = @s restTime
scoreboard players operation tempSecondUnit restTime = @s restTime
scoreboard players operation tempMSecondUnit restTime = @s restTime

# （+19或+1） 为了上取整
scoreboard players add tempSecond restTime 19
scoreboard players add tempSecondUnit restTime 1
scoreboard players add tempMSecondUnit restTime 1
scoreboard players set "20" restTime 20
scoreboard players set "2" restTime 2
scoreboard players set "10" restTime 10
scoreboard players operation tempSecond restTime /= "20" restTime

scoreboard players operation tempSecondUnit restTime /= "2" restTime
scoreboard players operation tempSecondUnit restTime /= "10" restTime
scoreboard players operation tempMSecondUnit restTime /= "2" restTime
scoreboard players operation tempMSecondUnit restTime %= "10" restTime
titleraw @s[scores={section=!0}] actionbar {"rawtext":[{"translate":"title.exposeTime","with":{"rawtext":[{"score":{"name":"tempSecondUnit","objective":"restTime"}},{"score":{"name":"tempMSecondUnit","objective":"restTime"}}]}}]}