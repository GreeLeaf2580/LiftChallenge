#完成2-3
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[2-3]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 22 11 58
setblock 24 10 56 beacon [] destroy


function lib/level/next

#显示下一关的标题
function lib/level/enum/title