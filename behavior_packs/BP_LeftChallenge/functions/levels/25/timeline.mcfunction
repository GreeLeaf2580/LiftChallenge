#2-5的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家到达终点
# 308 9 -28
execute at @s[x=307,y=10,z=-29,dx=2,dy=0,dz=2] run function levels/25/finish
