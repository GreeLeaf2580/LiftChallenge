tellraw @a { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.finish" }] }

structure load finish_ray 33 11 65
setblock 38 10 60 minecraft:beacon destroy
setblock 26 10 61 minecraft:beacon destroy
setblock 41 10 70 minecraft:beacon destroy
setblock 29 10 74 minecraft:beacon destroy

scoreboard players set @s chapter 0

scoreboard players set @s section 0

tp @s 33 10 54 0 0

function lib/level/finish