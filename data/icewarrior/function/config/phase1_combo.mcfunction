$scoreboard players set #icew.config icew.config.phase1_combo $(value)
execute unless score #icew.config icew.config.phase1_combo matches 0..998 run tellraw @s [{"color":"red","text":"Sorry but the value can only be a positive number less than 999"}]

execute if score #icew.config icew.config.phase1_combo matches 0..998 if entity @s[type=player] run function icewarrior:admin/_/config

execute unless score #icew.config icew.config.phase1_combo matches 0..998 run scoreboard players set #icew.config icew.config.phase1_combo 7