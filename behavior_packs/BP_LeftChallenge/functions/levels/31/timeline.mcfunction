#3-1的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家踩到对应位置的蛙鸣灯，获得对应效果并提示玩家
execute positioned 555 7 287 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s levitation 2 2 true
execute positioned 555 7 287 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["III","0:02"] } ] }

#如果预定位置没有怪物，则生成一只怪物
execute positioned 528 9 298 unless entity @e[type=minecraft:stray,r=1] run summon minecraft:stray ~ ~ ~
execute positioned 543 15 280 unless entity @e[type=minecraft:stray,r=1] run summon minecraft:stray ~ ~ ~


#当玩家到达终点
# 564 10 286
execute at @s[x=564,y=11,z=285,dx=2,dy=0,dz=2] run function levels/31/finish
