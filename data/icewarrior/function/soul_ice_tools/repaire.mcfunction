# fix damage field being removed
execute unless data entity @s Item.components."minecraft:damage" run data modify entity @s Item.components merge value {"minecraft:damage":0}

execute store result score @s icew.math.mem run data get entity @s Item.components."minecraft:damage"

# return to optimise + no feedback particle
execute if score @s icew.math.mem matches 0 run return 1

particle minecraft:snowflake ~ ~0.25 ~ 0 0 0 0 1 normal

# remove set amount of damage
execute unless score @s icew.math.mem matches 0 run \
    data modify entity @s Item.components."minecraft:damage" set compute entity @s integer icewarrior:repair_ice_tool_tick