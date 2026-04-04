#1-4的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家到达终点
#489 9 82
execute at @s[x=488,y=10,z=81,dx=2,dy=0,dz=2] run function levels/14/finish
