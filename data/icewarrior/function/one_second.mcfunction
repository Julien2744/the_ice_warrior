## this is executed every 1s

#boss ai 1s
execute if score #icew.global icew.spawned matches 1 as @e[type=item_display,tag=aj.ice_warrior.root,limit=100] at @s run \
    function icewarrior:boss/ai_1s

#place warrior inside the ice room
execute if score #icew.global icew.tickmarker matches 1 at @r if entity @e[type=marker,tag=icew.summon_warrior,limit=1,distance=..24] \
    as @e[type=marker,tag=icew.summon_warrior,limit=1,distance=..24] at @s rotated 0 0 run \
        function icewarrior:boss_summoner/replace_marker

#crafting map to find the ice tower
execute at @r if entity @e[type=item,nbt={Item:{id:"minecraft:woodland_mansion_map"}},limit=1,distance=..16] \
    as @e[type=item,nbt={Item:{id:"minecraft:woodland_mansion_map"}},limit=32,distance=..16] at @s \
    if block ~ ~ ~ minecraft:powder_snow run \
        function icewarrior:create_map

# keep at end
schedule function icewarrior:one_second 1s