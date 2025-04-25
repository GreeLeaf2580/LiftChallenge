#开始timeline枚举



#当玩家踩到信标时传送到对应的关卡
#播放打开末影箱的音效
execute as @a[scores={chapter=0,section=0}] at @s if block ~~-1~ beacon [] run function lib/modify_states/sound/start


execute positioned 33 10 65 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/01/start
execute positioned 38 10 60 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/11/start
execute positioned 40 10 59 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/12/start
execute positioned 42 10 57 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/13/start
execute positioned 44 10 59 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/14/start
execute positioned 42 10 61 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=~1,dy=2] run function levels/15/start
