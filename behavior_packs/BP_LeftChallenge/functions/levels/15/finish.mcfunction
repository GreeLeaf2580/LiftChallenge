#完成1-5
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[1-5]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 42 11 61

function lib/level/finish