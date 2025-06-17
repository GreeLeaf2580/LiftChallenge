execute positioned 248 9 -52 unless block ~~~ redstone_wire ["redstone_signal"=0] as @p run tp @s 236 9 -72



execute positioned 237 7 -71 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run effect @s slow_falling 5 0 true
execute positioned 237 7 -71 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["","0:05"] } ] }
execute positioned 237 7 -71 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="east"] destroy
execute positioned 237 7 -71 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~-1~ redstone_wire ["redstone_signal"=0]




execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run effect @s levitation 6 0 true
execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["","0:06"] } ] }
execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="west"] destroy
execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~-1~ redstone_wire ["redstone_signal"=0]


execute positioned 226 6 -82 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run tp @s 233 8 -80
execute positioned 226 6 -82 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="east"] destroy




execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run effect @s levitation 9999 10 true
execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["XI","Inf"] } ] }
execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="west"] destroy
execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~-1~ redstone_wire ["redstone_signal"=0]


