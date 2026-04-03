#完成1-2
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[1-2]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 40 11 59
setblock 42 10 57 beacon [] destroy


function lib/level/next

#显示下一关的标题
function lib/level/enum/title