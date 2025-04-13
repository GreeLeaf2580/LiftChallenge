# ===== 变量查询 =====
# 仅限开发者模式下启用

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§c该功能仅限在开发者模式下使用" } ] }

# --- 开启开发者模式时 ---
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "格式：<记分项>.<名称>=<值>" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§e黄色：使用标记实体存储的数据" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§b青色：玩家数据" } ] }

## 玩家数据
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== 玩家数据 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bisOnline.@s = §a%%s §7| 玩家是否在线 | 0：刚进入游戏，1：在线", "with": { "rawtext": [ { "score":{ "objective": "isOnline", "name": "@s" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§bstate.@s = §a%%s §7| 玩家当前状态 | 0：站立，1：潜行，2：爬行，3：睡觉", "with": { "rawtext": [ { "score":{ "objective": "state", "name": "@s" } } ] } } ] }

## active
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== active记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "active.sound = §a%%s §7| 音效播放器类型，按不同值播放不同的音效 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "active", "name": "sound" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "active.timeline = §a%%s §7| 时间线是否启用 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "active", "name": "timeline" } } ] } } ] }

## data
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== data记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.client = §a%%s §7| 当前使用的客户端 | 0：国际版，1：中国版", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "client" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.playerAmount = §a%%s §7| 总玩家人数", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "playerAmount" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "data.timeLapse = §a%%s §7| 时间线是否启用时间流逝 | 0：禁用，1-：启用", "with": { "rawtext": [ { "score":{ "objective": "data", "name": "timeLapse" } } ] } } ] }

## settings
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== settings记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "settings.developerMode = §a%%s §7| 开发者模式是否启用 | 0：禁用，1：启用", "with": { "rawtext": [ { "score":{ "objective": "settings", "name": "developerMode" } } ] } } ] }

## time
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== time记分板 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.sound = §a%%s §7| 音效播放器，为0时触发特定音效 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "sound" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.tick = §a%%s §7| 每刻增加1分，每秒重置1次 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "tick" } } ] } } ] }
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "time.timeline = §a%%s §7| 时间线，到达特定值后触发命令或函数 | 单位：游戏刻", "with": { "rawtext": [ { "score": { "objective": "time", "name": "timeline" } } ] } } ] }

## 标签型变量
execute if score developerMode settings matches 1 run tellraw @s { "rawtext": [ { "translate": "§l===== 标签型变量 =====" } ] }
execute if score developerMode settings matches 1 run tellraw @s[tag=isAlive] { "rawtext": [ { "translate": "isAlive = §atrue §7| 玩家是否存活" } ] }
execute if score developerMode settings matches 1 run tellraw @s[tag=!isAlive] { "rawtext": [ { "translate": "isAlive = §efalse §7| 玩家是否存活" } ] }
