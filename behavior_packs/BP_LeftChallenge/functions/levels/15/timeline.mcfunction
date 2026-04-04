#1-5的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家到达终点
#483 9 40
execute at @s[x=482,y=10,z=39,dx=2,dy=0,dz=2] run function levels/15/finish
