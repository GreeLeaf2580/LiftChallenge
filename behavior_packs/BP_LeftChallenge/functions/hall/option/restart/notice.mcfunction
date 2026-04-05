playsound random.break @a
tellraw @a {"rawtext": [{"translate":"tell.restart.notice"}]}

# 启用时间线流逝，并将时间线状态设置为 2
function lib/modify_data/states/timeline/dont_keep_value
function lib/modify_data/states/timeline/enable_time_lapse
scoreboard players set timeline active 2
