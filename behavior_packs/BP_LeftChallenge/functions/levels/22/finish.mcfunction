#完成2-2
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[2-2]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 23 11 61
setblock 22 10 58 beacon [] destroy


function lib/level/next

#显示下一关的标题
function lib/level/enum/title