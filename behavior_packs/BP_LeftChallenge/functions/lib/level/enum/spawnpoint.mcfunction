#spawnpoint功能的枚举函数：spawnpoint @s [每个关卡的起始位置]
execute if score @s chapter matches 0 if score @s section matches 0 run spawnpoint @s 18 10 43
execute if score @s chapter matches 0 if score @s section matches 1 run spawnpoint @s 150 41 150

execute if score @s chapter matches 1 if score @s section matches 1 run spawnpoint @s 500 10 0
execute if score @s chapter matches 1 if score @s section matches 2 run spawnpoint @s 500 10 20 
execute if score @s chapter matches 1 if score @s section matches 3 run spawnpoint @s 524 10 30 
execute if score @s chapter matches 1 if score @s section matches 4 run spawnpoint @s 553 10 53 
execute if score @s chapter matches 1 if score @s section matches 5 run spawnpoint @s 489 10 82


execute if score @s chapter matches 2 if score @s section matches 1 run spawnpoint @s 300 10 0
execute if score @s chapter matches 2 if score @s section matches 2 run spawnpoint @s 242 10 0
execute if score @s chapter matches 2 if score @s section matches 3 run spawnpoint @s 248 10 -48
execute if score @s chapter matches 2 if score @s section matches 4 run spawnpoint @s 220 10 -96
execute if score @s chapter matches 2 if score @s section matches 5 run spawnpoint @s 305 10 -78


execute if score @s chapter matches 3 if score @s section matches 1 run spawnpoint @s 501 11 300
execute if score @s chapter matches 3 if score @s section matches 2 run spawnpoint @s 564 11 286
execute if score @s chapter matches 3 if score @s section matches 3 run spawnpoint @s 573 11 355
execute if score @s chapter matches 3 if score @s section matches 4 run spawnpoint @s 569 11 461
execute if score @s chapter matches 3 if score @s section matches 5 run spawnpoint @s 410 41 460


execute if score @s chapter matches 4 if score @s section matches 1 run spawnpoint @s 300 11 300
execute if score @s chapter matches 4 if score @s section matches 2 run spawnpoint @s 198 11 309
execute if score @s chapter matches 4 if score @s section matches 3 run spawnpoint @s 133 11 316
execute if score @s chapter matches 4 if score @s section matches 4 run spawnpoint @s 75 11 313 
execute if score @s chapter matches 4 if score @s section matches 5 run spawnpoint @s 106 11 245