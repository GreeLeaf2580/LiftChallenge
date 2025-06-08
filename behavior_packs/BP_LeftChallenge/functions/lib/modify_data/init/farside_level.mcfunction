#初始化远处模式
#重置进度
#让所有人退出当前正在玩的关卡
execute as @a[scores={chapter=!0,section=!0}] at @s run function lib/level/items/quit

#/structure save farside_init 44 10 56   22 16 74 disk
structure load farside_init 22 10 56

clear @a
effect @a clear
spawnpoint @a 18 10 43
setworldspawn 18 10 43

playsound random.anvil_break @a
tellraw @a {"rawtext": [{"translate":"tell.restart.init_levels"}]}
setblock 48 12 48 acacia_button ["button_pressed_bit"=false,"facing_direction"=2]

function lib/modify_states/timeline/disable