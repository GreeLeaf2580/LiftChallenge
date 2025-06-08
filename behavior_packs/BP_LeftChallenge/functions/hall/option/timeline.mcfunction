#选项房间设置

#将拉杆和计分项匹配
    #无倒计时模式
    execute if block 47 11 48 lever ["lever_direction"="north","open_bit"=false] run scoreboard players set noRestTime data 0
    execute if block 47 11 48 lever ["lever_direction"="north","open_bit"=true] run scoreboard players set noRestTime data 1

    #在空中跳跃以使用物品
    execute if block 49 11 48 lever ["lever_direction"="north","open_bit"=false] run scoreboard players set jumpToUseItem data 0
    execute if block 49 11 48 lever ["lever_direction"="north","open_bit"=true] run scoreboard players set jumpToUseItem data 1


# 初始化远处关卡
    #按下

        #在大厅的玩家按下48 12 48的金合欢木按钮，运行“警告重置函数”
        execute if block 48 12 48 acacia_button ["button_pressed_bit"=true,"facing_direction"=2] run function hall/option/restart/notice

        #在大厅的玩家按下48 12 48的红树按钮，运行“重置函数”
        execute if block 48 12 48 mangrove_button ["button_pressed_bit"=true,"facing_direction"=2] run function lib/modify_data/init/farside_level

    #修改按钮状态，以防止按钮保持按下的状态而重复执行命令

        #在大厅的玩家按下48 12 48的金合欢木按钮，替换关于按钮为红树按钮
        execute if block 48 12 48 acacia_button ["button_pressed_bit"=true,"facing_direction"=2] run setblock 48 12 48 minecraft:mangrove_button ["button_pressed_bit"=false,"facing_direction"=2]

    #释放
    #如果重置按钮3秒内没被按下，则恢复原样
    execute if block 48 12 48 mangrove_button ["button_pressed_bit"=false,"facing_direction"=2] if score timeline active matches 2 if score timeline time matches 21.. run function hall/option/restart/recover