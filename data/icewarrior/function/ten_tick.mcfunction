## this is executed every 10t

#boss ai 10tick
execute if score #icew.global icew.spawned matches 1 as @e[type=item_display,tag=aj.ice_warrior.root,limit=100] at @s run \
    function icewarrior:boss/ai_10tick

#repair soul ice tools
#execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"soul_ice_tool"}}}}] at @s if loaded ~ ~ ~ if block ~ ~-1 ~ #minecraft:ice run execute store result entity @s Item.components."minecraft:damage" int 0.9 run data get entity @s Item.components."minecraft:damage"
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"soul_ice_tool"}}}}] at @s if loaded ~ ~ ~ if block ~ ~-1 ~ #minecraft:ice run function icewarrior:soul_ice_tools/repaire

#crafting soul ice tool
execute at @r as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"soul_ice_shard"}}}},limit=8,distance=..8] at @s \
    if block ~ ~-1 ~ #minecraft:ice if entity @n[type=item,distance=..0.25,predicate=icewarrior:is_diamond_tool] run function icewarrior:soul_ice_tools/craft/check

#keep at end
schedule function icewarrior:ten_tick 10t