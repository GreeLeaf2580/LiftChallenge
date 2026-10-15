#3-1的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家开启陷阱箱
execute at @s run function levels/32/events/chest

#当玩家踩到对应位置的蛙鸣灯，获得对应效果并提示玩家
execute positioned 577 13 310 if block ~~~ ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s slow_falling 5 0 true
execute positioned 577 13 310 if block ~~~ ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["","0:05"] } ] }

# 如果预定位置没有怪物，则生成一只怪物
execute positioned 572 10 295 unless entity @e[type=breeze,r=1] run summon breeze ~ ~ ~
execute positioned 568 16 332 unless entity @e[type=breeze,r=1] run summon breeze ~ ~ ~
execute positioned 586 18 316 unless entity @e[type=breeze,r=1] run summon breeze ~ ~ ~



#当玩家到达终点
# 573 10 355
execute at @s[x=572,y=11,z=354,dx=2,dy=0,dz=2] run function levels/32/finish
