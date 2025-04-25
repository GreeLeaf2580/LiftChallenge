tellraw @s { "rawtext": [{ "text": "[1-4]" },{ "translate": "tell.reset" }] }



give @s lc:levitation 5
scoreboard players set @s levitation 5

#活塞结构 /structure save _14   560 12 77   564 13 77 disk
fill 564 13 77   487 12 77 air 
structure load _14 560 12 77


function lib/modify_states/timeline/enable_pass_1
