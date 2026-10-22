#玩家站在对应位置的方块上，获得对应效果并提示
execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=248,y=10,z=-51,dy=0.01] run tp @s 236 8 -72

execute if block ~~-1~ minecraft:ochre_froglight [] as @s[x=237,y=8,z=-72,dy=0.01] run effect @s slow_falling 2 0 true

execute if block ~~-1~ minecraft:pearlescent_froglight [] as @s[x=243,y=5,z=-65,dy=0.01] run effect @s levitation 5 0 true

execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=226,y=7,z=-82,dy=0.01] run tp @s 233 8 -80

execute if block ~~-1~ minecraft:pearlescent_froglight [] as @s[x=212,y=8,z=-92,dy=0.01]  run effect @s levitation 9999 10 true


