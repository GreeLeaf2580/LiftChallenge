#完成3-3
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[3-3]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 44 11 72
setblock 43 10 74 beacon [] destroy

function lib/level/next

#显示下一关的标题
function lib/level/enum/title
