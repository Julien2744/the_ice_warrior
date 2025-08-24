#initialize scoreboard only once
execute unless score #icew.load icew.loadScoreboard matches 1 if entity @p run function icewarrior:initialization/init_scoreboard

#place warrior insid the ice room
execute if score #icew.global icew.tickmarker matches 1 run execute as @e[type=marker,tag=icew.summon_warrior] at @s run execute rotated 0 0 run function icewarrior:boss_summoner/replace_marker

#ice room interaction
execute as @e[type=interaction,tag=icew.ice_room_interact] at @s if data entity @s interaction run function icewarrior:boss_summoner/check_player

#boss ai tick
execute if entity @e[type=item_display,tag=aj.ice_warrior.root] run execute as @e[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/ai_tick

#soul ice tools coodlown
execute at @a[scores={icew.player.toolCooldown=1..20}] run scoreboard players remove @p[distance=..0.1] icew.player.toolCooldown 1
#repair soul ice tools
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ice_warrior_item:"soul_ice_tool"}}}}] at @s if loaded ~ ~ ~ if block ~ ~-1 ~ #minecraft:ice run execute store result entity @s Item.components."minecraft:damage" int 0.995 run data get entity @s Item.components."minecraft:damage"

#crafting soul ice tool
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ice_warrior_item:"soul_ice_shard"}}}}] at @s if loaded ~ ~ ~ if block ~ ~-1 ~ #minecraft:ice run execute if entity @n[type=item,distance=..0.25,nbt=!{Item:{components:{"minecraft:custom_data":{ice_warrior_item:"soul_ice_shard"}}}}] run function icewarrior:soul_ice_tools/craft/check