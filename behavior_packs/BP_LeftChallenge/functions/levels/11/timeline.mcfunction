
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

# 500 9 20
execute at @s[x=499,y=10,z=19,dx=1,dy=1,dz=1] run function levels/11/finish
