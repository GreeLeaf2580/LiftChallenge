#显示标题的枚举函数
#仅会在刚进入关卡时显示关卡标题，降低文字骚扰
#levels/%2d/start->enum/title
#levels/%2d/finish->enum/title

execute as @s at @s run scriptevent "lc:title" ""

# #0-1
# execute if score @s chapter matches 0 if score @s section matches 1 run tellraw @s { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.reset" }] }
# execute if score @s chapter matches 0 if score @s section matches 1 run titleraw @s title { "rawtext": [{ "translate": "title.01" }] }
# execute if score @s chapter matches 0 if score @s section matches 1 run title @s subtitle 0-1

# #1-1
# execute if score @s chapter matches 1 if score @s section matches 1 run tellraw @s { "rawtext": [{ "text": "[1-1]" },{ "translate": "tell.reset" }] }
# execute if score @s chapter matches 1 if score @s section matches 1 run titleraw @s title { "rawtext": [{ "translate": "title.11" }] }
# execute if score @s chapter matches 1 if score @s section matches 1 run title @s subtitle 1-1

# #1-2
# execute if score @s chapter matches 1 if score @s section matches 2 run tellraw @s { "rawtext": [{ "text": "[1-2]" },{ "translate": "tell.reset" }] }
# execute if score @s chapter matches 1 if score @s section matches 2 run titleraw @s title { "rawtext": [{ "translate": "title.12" }] }
# execute if score @s chapter matches 1 if score @s section matches 2 run title @s subtitle 1-2
