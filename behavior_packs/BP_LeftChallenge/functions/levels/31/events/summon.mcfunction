#如果预定位置没有怪物，则延迟生成一只怪物
execute positioned 528 9 298 unless entity @e[type=minecraft:stray,r=1] run summon minecraft:stray ~ ~ ~
execute positioned 543 15 280 unless entity @e[type=minecraft:stray,r=1] run summon minecraft:stray ~ ~ ~