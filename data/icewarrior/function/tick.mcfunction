#place warrior inside the ice room
execute if score #icew.global icew.tickmarker matches 1 run execute as @e[type=marker,tag=icew.summon_warrior] at @s run execute rotated 0 0 run function icewarrior:boss_summoner/replace_marker

#ice room interaction
execute as @e[type=interaction,tag=icew.ice_room_interact] at @s if data entity @s interaction run function icewarrior:boss_summoner/check_player

#boss ai tick
execute if entity @e[type=item_display,tag=aj.ice_warrior.root] run execute as @e[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/ai_tick

#soul ice tools coodlown
execute at @a[scores={icew.player.toolCooldown=1..20}] run scoreboard players remove @p[distance=..0.1] icew.player.toolCooldown 1