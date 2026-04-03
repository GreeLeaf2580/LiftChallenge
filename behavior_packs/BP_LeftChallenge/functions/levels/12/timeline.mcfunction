#1-1的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家到达终点
# 524 9 30
execute at @s[x=523,y=10,z=29,dx=2,dy=0,dz=2] run function levels/12/finish
