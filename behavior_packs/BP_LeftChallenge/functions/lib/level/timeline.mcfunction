#关卡内通用时间线
execute as @a[scores={section=!0}] at @s if block ~~2~ air [] if score timeline active matches 1 run function lib/modify_states/timeline/enable_pass_2

execute as @a[scores={section=!0}] at @s unless block ~~2~ air [] if score timeline active matches 2 run function lib/modify_states/timeline/enable_pass_1

execute as @a[scores={section=!0}] at @s if entity @s[y=5,dy=-80] run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.out_world", "with": { "rawtext": [{ "selector": "@s" }] } }] }

execute as @a[scores={section=!0}] at @s if entity @s[y=5,dy=-80] run function items/reset

execute as @a[scores={section=!0}] at @s if block ~~2~ air [] if block ~~-1~ air []  if score timeline time matches 100.. if score timeline active matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.left_out", "with": { "rawtext": [{ "selector": "@s" }] } }] }
execute as @a[scores={section=!0}] at @s if block ~~2~ air [] unless block ~~-1~ air []  if score timeline time matches 100.. if score timeline active matches 2 run tellraw @s { "rawtext": [{ "translate": "tell.failmsg.sun_burnt", "with": { "rawtext": [{ "selector": "@s" }] } }] }

execute as @a[scores={section=!0}] at @s if block ~~2~ air [] if score timeline time matches 100.. if score timeline active matches 2 run function items/reset