#2-1的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家到达终点
# 242 9 0
execute at @s[x=241,y=10,z=-1,dx=2,dy=0,dz=2] run function levels/21/finish
