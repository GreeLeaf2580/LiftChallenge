#完成2-4
#提示玩家完成关卡
tellraw @a { "rawtext": [{ "text": "[2-4]" },{ "translate": "tell.finish" }] }

#修改大厅的选关界面
structure load finish_ray 24 11 56
setblock 25 10 58 beacon [] destroy


function lib/level/next

#显示下一关的标题
function lib/level/enum/title
