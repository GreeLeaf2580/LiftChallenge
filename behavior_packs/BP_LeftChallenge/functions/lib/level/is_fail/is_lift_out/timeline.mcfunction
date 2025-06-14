#如果玩家在关卡里，玩家的y大于指定值，则玩家飘走了
    #
    execute if entity @s[scores={chapter=2},y=21,dy=1] run function lib/level/is_fail/is_lift_out/notice