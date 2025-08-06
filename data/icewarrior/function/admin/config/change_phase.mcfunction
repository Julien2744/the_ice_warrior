$scoreboard players set #icew.config icew.config.change_phase $(value)
execute unless score #icew.config icew.config.change_phase matches 1..100 run tellraw @s [{"color":"red","text":"Sorry but the value can only be between 1 and 100 (inclusive)"}]

execute if score #icew.config icew.config.change_phase matches 1..100 if entity @s[type=player] run function icewarrior:admin/_/config

execute unless score #icew.config icew.config.change_phase matches 1..100 run scoreboard players set #icew.config icew.config.change_phase 50