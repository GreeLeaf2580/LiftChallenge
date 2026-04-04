#完成1-3
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[1-3]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 42 11 57
setblock 44 10 59 beacon [] destroy


function lib/level/next

#显示下一关的标题
function lib/level/enum/title