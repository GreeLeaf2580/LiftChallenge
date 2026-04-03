#完成1-1
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[1-1]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 38 11 60
setblock 40 10 59 beacon [] destroy

function lib/level/next

#显示下一关的标题
function lib/level/enum/title