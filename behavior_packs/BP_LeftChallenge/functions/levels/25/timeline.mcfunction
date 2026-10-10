#2-5的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

execute positioned 296 9 -55 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s levitation 1 2 true
execute positioned 296 9 -55 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["III","0:01"] } ] }

execute positioned 305 11 -38 if block ~~~ minecraft:ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s slow_falling 3 0 true
execute positioned 305 11 -38 if block ~~~ minecraft:ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["I","0:03"] } ] }

#当玩家到达终点
# 308 9 -28
execute at @s[x=307,y=10,z=-29,dx=2,dy=0,dz=2] run function levels/25/finish
