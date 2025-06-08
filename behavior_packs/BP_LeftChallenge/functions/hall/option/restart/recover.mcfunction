tellraw @a {"rawtext": [{"translate":"tell.restart.recover"}]}
playsound random.pop2 @a
setblock 48 12 48 acacia_button ["button_pressed_bit"=false,"facing_direction"=2]

function lib/modify_states/timeline/disable