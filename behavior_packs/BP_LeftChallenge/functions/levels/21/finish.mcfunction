#完成2-1
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[2-1]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 26 11 61
setblock 23 10 61 beacon [] destroy

function lib/level/next

#显示下一关的标题
function lib/level/enum/title
