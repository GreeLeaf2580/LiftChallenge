#关卡内通用时间线

#如果玩家在关卡里，玩家头顶上不是（石英）台阶，减少剩余时间
execute as @a[scores={section=!0},m=a] at @s unless block ~~2~ stone_block_slab [] if score @s restTime matches 1.. run scoreboard players remove @s restTime 1

#踩到强制修改剩余时间的方块时，剩余时间的变化
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_0 run scoreboard players set @s restTime 0
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_1 run scoreboard players set @s restTime 20
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_2 run scoreboard players set @s restTime 40
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_3 run scoreboard players set @s restTime 60
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_4 run scoreboard players set @s restTime 80
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_5 run scoreboard players set @s restTime 100
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_6 run scoreboard players set @s restTime 120
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_7 run scoreboard players set @s restTime 140
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_8 run scoreboard players set @s restTime 160
execute as @a[scores={section=!0},m=a] at @s if block ~~-0.03~ lc:number_block_9 run scoreboard players set @s restTime 180

#如果玩家在关卡里，玩家头顶上是（石英）台阶，剩余时间对石英回复时间取较大值
execute as @a[scores={section=!0},m=a] at @s if block ~~2~ stone_block_slab [] run scoreboard players operation @s restTime > failTime active

#（注意，以上三者顺序不可变换，涉及各种游戏机制运用）

#如果剩余时间变化则显示
execute as @a[scores={section=!0},m=a] at @s unless score @s restTime = @s lastRestTime run function lib/level/actionbar_expose
execute as @a[scores={section=!0},m=a] at @s run scoreboard players operation @s lastRestTime = @s restTime

#如果玩家在关卡里，玩家的y小于0
    #则提示玩家掉出世界
    execute as @a[scores={section=!0}] at @s if entity @s[y=0,dy=-80] run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.out_world", "with": { "rawtext": [{ "selector": "@s" }] } }] }

    #则重置关卡
    execute as @a[scores={section=!0}] at @s if entity @s[y=0,dy=-80] run function lib/level/items/reset

#如果玩家在关卡里，且倒计时归零
    #如果玩家脚下是空气，则提示玩家飘走了
    execute as @a[scores={section=!0},m=a] at @s if block ~~-1~ air [] if score @s restTime matches 0 run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.left_out", "with": { "rawtext": [{ "selector": "@s" }] } }] }

    #如果玩家脚下不是空气，则提示晒伤
    execute as @a[scores={section=!0},m=a] at @s unless block ~~-1~ air [] if score @s restTime matches 0 run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.sun_burnt", "with": { "rawtext": [{ "selector": "@s" }] } }] }

    #则重置关卡
    execute as @a[scores={section=!0},m=a] at @s if score @s restTime matches 0 run function lib/level/items/reset