#1-3的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家到达终点
#553 9 53
execute at @s[x=552,y=10,z=52,dx=2,dy=0,dz=2] run function levels/13/finish
