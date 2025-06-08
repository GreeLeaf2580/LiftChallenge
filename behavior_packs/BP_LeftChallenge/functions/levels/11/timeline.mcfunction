
#当玩家失败判定
execute at @s run function lib/level/timeline/is_fail

# 500 9 20
execute at @s[x=500,y=10,z=20,dx=0,dy=1,dz=0] run function levels/11/finish
