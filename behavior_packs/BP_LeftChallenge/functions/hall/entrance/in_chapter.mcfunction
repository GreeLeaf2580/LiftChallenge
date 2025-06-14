#开始timeline枚举
#当玩家踩到信标时传送到对应的关卡
#播放打开末影箱的音效
execute as @a[scores={chapter=0,section=0}] at @s if block ~~-1~ beacon [] run function lib/modify_states/sound/start

# 
# 关卡入口方块详见function hall/display_level_name/farside



execute positioned 33 10 65 if block ~~~ beacon [] as @a[scores={chapter=0,section=0},y=12,dy=2,x=~-0.5,z=~-0.5] run function levels/01/start

execute positioned 41 10 59 if entity @a[r=4] run function hall/entrance/farside/load_chapter1
execute positioned 24 10 59 if entity @a[r=4] run function hall/entrance/farside/load_chapter2



