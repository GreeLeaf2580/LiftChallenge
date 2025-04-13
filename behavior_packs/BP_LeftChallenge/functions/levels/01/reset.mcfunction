tellraw @s { "rawtext": [{ "text": "[0-1]" },{ "translate": "tell.reset" }] }

tp @s 150 41 150   90 0

effect @s levitation 7 0 true
tellraw @s { "rawtext": [{ "translate": "tell.levitation", "with": ["","0:07"] } ] }

function lib/modify_states/timeline/enable_pass_1
