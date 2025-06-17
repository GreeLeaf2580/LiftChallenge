
#当玩家失败判定
execute at @s run function lib/level/is_fail/timeline

execute at @s run function levels/23/events/chest

# 220 9 -96
execute at @s[x=219,y=10,z=-97,dx=2,dy=0,dz=2] run function levels/23/finish
