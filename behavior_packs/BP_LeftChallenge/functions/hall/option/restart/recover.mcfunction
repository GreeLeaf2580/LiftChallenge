tellraw @a {"rawtext": [{"translate":"tell.restart.recover"}]}
playsound random.pop2 @a
setblock 48 12 48 acacia_button ["button_pressed_bit"=false,"facing_direction"=2]

# 禁用时间线
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/disable