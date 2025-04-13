#开始timeline枚举
#当玩家踩到信标时传送到对应的关卡
execute positioned 33 10 65 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/01/start