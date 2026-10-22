#玩家站在对应位置的方块上，获得对应效果并提示
# execute positioned 555 7 287 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s levitation 2 2 true
# execute positioned 555 7 287 if block ~~~ minecraft:pearlescent_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.levitation", "with": ["III","0:02"] } ] }

execute if block ~~-1~ minecraft:pearlescent_froglight [] as @s[x=555,y=7,z=287,dy=0.01] run effect @s levitation 2 2 true