#玩家站在对应位置的方块上，获得对应效果并提示
# execute positioned 249 14 -80 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[c=1] run effect @s instant_health 1 9 true
# execute positioned 249 14 -80 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[c=1] run tp @s 266 10 -106

execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=249,y=15,z=-80,dy=0.01] run effect @s instant_health 1 10 true
execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=249,y=15,z=-80,dy=0.01] run tp @s 266 10 -106


# execute positioned 266 7 -98 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[c=1] run tp @s 273 10 -112

#266 8 -98
execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=266,y=8,z=-98,dy=0.01] run tp @s 273 10 -112

# execute positioned 297 10 -86 unless block ~~-1~ redstone_wire ["redstone_signal"=0] as @p[c=1] run tp @s 273 10 -112

execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=297,y=11,z=-86,dy=0.01] run tp @s 273 10 -112