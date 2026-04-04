#完成2-5
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[2-5]" },{ "translate": "tell.finish" }] }

execute positioned 25 11 58 run function lib/level/finish

#修改大厅的选关界面
structure load finish_ray 25 11 58
