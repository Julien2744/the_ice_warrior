## this is executed every 10t

#boss ai 10tick
execute if score #icew.global icew.spawned matches 1 run execute as @e[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/ai_10tick

#repair soul ice tools
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ice_warrior_item:"soul_ice_tool"}}}}] at @s if loaded ~ ~ ~ if block ~ ~-1 ~ #minecraft:ice run execute store result entity @s Item.components."minecraft:damage" int 0.9 run data get entity @s Item.components."minecraft:damage"

#crafting soul ice tool
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ice_warrior_item:"soul_ice_shard"}}}}] at @s if loaded ~ ~ ~ if block ~ ~-1 ~ #minecraft:ice run execute if entity @e[type=item,distance=..0.25,nbt=!{Item:{components:{"minecraft:custom_data":{ice_warrior_item:"soul_ice_shard"}}}},limit=1] run function icewarrior:soul_ice_tools/craft/check

#crafting map to find the ice tower
execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":'{"translate":"filled_map.mansion"}'}}}] at @s if loaded ~ ~ ~ if block ~ ~ ~ minecraft:powder_snow run function icewarrior:create_map

schedule function icewarrior:tentick 10t