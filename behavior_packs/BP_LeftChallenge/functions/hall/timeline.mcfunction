execute positioned 48 10 43 if entity @a[r=5] run function hall/option/timeline



#当玩家在远处模式的房间里且房间里没有展示实体时，生成展示实体
execute positioned 33 10 65 if entity @a[r=13] unless entity @e[type=lc:text_display,r=1] run function hall/display_level_name/farside
execute positioned 33 10 65 unless entity @a[r=13] as @e[type=lc:text_display,r=15] run event entity @s lc:remove_immediately
#当玩家不在远处模式的房间里且房间里有展示实体时，销毁展示实体
execute positioned 33 10 65 if entity @a[r=13] run function hall/entrance/in_chapter




