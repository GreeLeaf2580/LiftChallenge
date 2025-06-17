
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

execute at @s run function levels/24/events/chest


# 305 9 -78
execute at @s[x=304,y=10,z=-79,dx=2,dy=0,dz=2] run function levels/24/finish
