execute positioned 248 9 -52 unless block ~~~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=5}] run tp @s 236 9 -72
execute positioned 248 9 -52 unless block ~~~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=5}] run scoreboard players remove @s chest 1



execute positioned 235 7 -72 unless block ~~~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=4}] run effect @s slow_falling 3 0 true
execute positioned 235 7 -72 unless block ~~~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=4}] run tellraw @s { "rawtext": [{ "translate": "tell.slow_falling", "with": ["","0:03"] } ] }
execute positioned 235 7 -72 unless block ~~~ redstone_wire ["redstone_signal"=0] run setblock 235 8 -73 minecraft:trapped_chest ["minecraft:cardinal_direction"="east"] destroy
execute positioned 235 7 -72 unless block ~~~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=4}] run scoreboard players remove @s chest 1



execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=3}] run effect @s levitation 6 0 true
execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=3}] run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:06"] } ] }
execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="west"] destroy
execute positioned 243 5 -65 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=3}] run scoreboard players remove @s chest 1



execute positioned 226 6 -82 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=2}] run tp @s 233 8 -80
execute positioned 226 6 -82 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="east"] destroy
execute positioned 226 6 -82 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=2}] run scoreboard players remove @s chest 1



execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=2}] run effect @s levitation 9999 10 true
execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=2}] run tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["XI","Inf"] } ] }
execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] run setblock ~~1~ minecraft:trapped_chest ["minecraft:cardinal_direction"="west"] destroy
execute positioned 212 8 -92 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[scores={chest=2}] run scoreboard players remove @s chest 1


