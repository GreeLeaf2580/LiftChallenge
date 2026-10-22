# execute positioned 574 3 341 if block ~~~ minecraft:lit_redstone_lamp [] as @p[c=1] run tp @s 591 16 307
# execute positioned 574 3 341 if block ~~~ minecraft:lit_redstone_lamp [] as @p[c=1] run setblock 574 4 341 trapped_chest ["minecraft:cardinal_direction"="north"] destroy

#当玩家踩到对应位置的蛙鸣灯，获得对应效果并提示玩家
# execute positioned 577 13 310 if block ~~~ ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run effect @s slow_falling 5 0 true
# execute positioned 577 13 310 if block ~~~ ochre_froglight [] as @a[y=~,dy=0.01,x=~-0.5,z=~-0.5] run tellraw @s { "rawtext": [{ "translate": "tell.effect" },{ "translate": "tell.slow_falling", "with": ["","0:05"] } ] }

#577 13 310
execute if block ~~-1~ minecraft:ochre_froglight [] as @s[x=577,y=13,z=310,dy=0.01] run effect @s slow_falling 5 0 true

#574 4 341
execute if block ~~~ minecraft:amethyst_cluster [] as @s[x=574,y=4,z=341,dy=0.01] run tp @s 591 16 307