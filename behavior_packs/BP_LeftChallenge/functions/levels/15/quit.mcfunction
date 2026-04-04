#退出1-5
#提示退出1-5
tellraw @s { "rawtext": [{ "text": "[1-5]" },{ "translate": "tell.quit" }] }

#给玩家回血
effect @s instant_health 1 9 true