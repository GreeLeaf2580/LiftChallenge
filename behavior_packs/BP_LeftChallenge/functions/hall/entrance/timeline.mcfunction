#开始timeline枚举

#当玩家在远处模式的房间里且房间里没有展示实体时，生成展示实体
execute positioned 33 10 65 if entity @a[r=13] unless entity @e[type=lc:text_display,r=1] run function hall/show_level_name/farside

#当玩家不在远处模式的房间里且房间里有展示实体时，销毁展示实体
execute positioned 33 10 65 unless entity @a[r=13] as @e[type=lc:text_display,r=16] run event entity @s lc:remove_immediately

function hall/option/timeline

#当玩家踩到信标时传送到对应的关卡
#播放打开末影箱的音效
execute as @a[scores={chapter=0,section=0}] at @s if block ~~-1~ beacon [] run function lib/modify_states/sound/start


execute positioned 33 10 65 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/01/start
execute positioned 38 10 60 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/11/start
execute positioned 40 10 59 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/12/start
execute positioned 42 10 57 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/13/start
execute positioned 44 10 59 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/14/start
execute positioned 42 10 61 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/15/start
