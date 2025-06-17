
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

# 500 9 20
execute at @s[x=499,y=10,z=19,dx=2,dy=0,dz=2] run function levels/11/finish
