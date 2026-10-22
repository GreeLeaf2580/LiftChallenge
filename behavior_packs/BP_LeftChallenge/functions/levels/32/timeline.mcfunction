#3-1的时间线
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

#当玩家站在对应位置的方块上，获得对应效果
execute at @s run function levels/32/events/stand

#当玩家到达终点
# 573 10 355
execute at @s[x=572,y=11,z=354,dx=2,dy=0,dz=2] run function levels/32/finish
