# ===== 音效播放器 =====
# 仅当音效播放器启用后执行

# --- 音效倒计时 ---
scoreboard players remove sound time 1

# --- 音效事件 ---
# 当音效倒计时为0后执行

## 1 | random.orb | 音调1
execute if score sound time matches 0 if score sound active matches 1 as @a at @s run playsound random.orb @s ~~~ 1 1
## 2 | random.orb | 音调2
execute if score sound time matches 0 if score sound active matches 2 as @a at @s run playsound random.orb @s ~~~ 1 2
## 3 | mob.villager.yes | 音调1
execute if score sound time matches 0 if score sound active matches 3 as @a at @s run playsound mob.villager.yes @s ~~~ 1 1
## 4 | mob.villager.no | 音调1
execute if score sound time matches 0 if score sound active matches 4 as @a at @s run playsound mob.villager.no @s ~~~ 1 1
## 5 | mob.cat.meow | 音调0.75
execute if score sound time matches 0 if score sound active matches 5 as @a at @s run playsound mob.cat.meow @s ~~~ 1 0.75
## 6 | random.anvil_break | 音调0.5
execute if score sound time matches 0 if score sound active matches 6 as @a at @s run playsound random.anvil_break @s ~~~ 1 0.5
## 7 | random.levelup | 音调1
execute if score sound time matches 0 if score sound active matches 7 as @a at @s run playsound random.levelup @s ~~~ 1 1
## 8 | random.levelup | 音调2
execute if score sound time matches 0 if score sound active matches 8 as @a at @s run playsound random.levelup @s ~~~ 1 2
## 9 | smithing_table.use | 音调1
execute if score sound time matches 0 if score sound active matches 9 as @a at @s run playsound smithing_table.use @s ~~~ 1 1
## 10 | hard_achievement_complete | 音调1，音量0.5
execute if score sound time matches 0 if score sound active matches 10 as @a at @s run playsound hard_achievement_complete @s ~~~ 0.5 1
## 11 | random.pop | 音调1
execute if score sound time matches 0 if score sound active matches 11 as @a at @s run playsound random.pop @s ~~~ 1 1
## 12 | random.anvil_land | 音调1
execute if score sound time matches 0 if score sound active matches 12 as @a at @s run playsound random.anvil_land @s ~~~ 1 1
## 13 | random.glass | 音调1
execute if score sound time matches 0 if score sound active matches 13 as @a at @s run playsound random.glass @s ~~~ 1 1



## 14 | playsound random.enderchestopen | 音调1
execute if score sound time matches 0 if score sound active matches 14 as @a[scores={section=!0}] at @s run playsound random.enderchestopen @s ~ ~ ~ 1 1

## 15 | playsound random.enderchestclosed | 音调1
execute if score sound time matches 0 if score sound active matches 15 as @a[scores={chapter=0,section=0}] at @s run playsound random.enderchestclosed @s ~ ~ ~ 1 1

## 16 | random.levelup | 音调0.5
execute if score sound time matches 0 if score sound active matches 16 as @a at @s run playsound random.levelup @s ~~~ 1 0.5
execute if score sound time matches 0 if score sound active matches 16 as @a at @s run summon fireworks_rocket ~~~

## 17 | random.toast_challenge_complete | 音调1
execute if score sound time matches 0 if score sound active matches 17 as @a at @s run playsound random.toast_challenge_complete @s ~~~
execute if score sound time matches 0 if score sound active matches 17 as @a at @s run summon fireworks_rocket ~~~

## 18 | mob.endermen.portal | 音调1
execute if score sound time matches 0 if score sound active matches 18 as @a[scores={section=!0}] at @s run playsound mob.endermen.portal @s ~ ~ ~ 10 1 10

## 19 | random.toast | 音调1
execute if score sound time matches 0 if score sound active matches 19 as @a[scores={section=!0}] at @s run playsound random.toast @s ~ ~ ~ 10 1 10

## 20 | beacon.activate | 音调1
execute if score sound time matches 0 if score sound active matches 20 as @a at @s run playsound beacon.activate @s ~ ~ ~ 10 1 10

# --- 重置音效播放器 ---
# 当音效倒计时为0后执行
execute if score sound time matches 0 run function lib/modify_data/states/sound/disable
