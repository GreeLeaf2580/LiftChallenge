#玩家站在对应位置的方块上，获得对应效果并提示
# execute positioned 296 9 -55 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s levitation 1 2 true
# execute positioned 296 9 -55 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["III","0:01"] } ] }

# execute positioned 305 11 -38 if block ~~~ minecraft:ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s slow_falling 3 0 true
# execute positioned 305 11 -38 if block ~~~ minecraft:ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["I","0:03"] } ] }

execute if block ~~-1~ minecraft:pearlescent_froglight [] as @s[x=296,y=9,z=-55,dy=0.01] run effect @s levitation 1 2 true

execute if block ~~-1~ minecraft:ochre_froglight [] as @s[x=305,y=11,z=-38,dy=0.01] run effect @s slow_falling 3 0 true