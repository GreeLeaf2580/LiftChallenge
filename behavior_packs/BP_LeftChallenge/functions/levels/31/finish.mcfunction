#完成3-1
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[3-1]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 41 11 70
setblock 44 10 70 beacon [] destroy

function lib/level/next

#显示下一关的标题
function lib/level/enum/title
