# clear slowness that made the boss unable to move
execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:movement_speed","modifiers":[{id:"icewarrior:stop_moving"}]}]}] run \
    attribute @s minecraft:movement_speed modifier remove icewarrior:stop_moving

# get motion
execute store result score @s icew.motion.x on vehicle run data get entity @s Motion[0] 100
execute store result score @s icew.motion.z on vehicle run data get entity @s Motion[2] 100

execute if score @s icew.motion.x matches 0 if score @s icew.motion.z matches 0 run \
        scoreboard players set @s icew.walking 0
    
execute unless score @s icew.motion.x matches 0 run scoreboard players set @s icew.walking 1
execute unless score @s icew.motion.z matches 0 run scoreboard players set @s icew.walking 1

# change anim depending on weapon
# phase 0 - ice claws
execute if score @s icew.phase matches 0 run \
    return run function icewarrior:boss/anim/walking/p0_anim

# phase 1..3 - trident
execute if score @s[tag=!icew.iceclaw] icew.phase matches 1..3 run \
    return run function icewarrior:boss/anim/walking/p1_anim

# phase 3 - ice claw
execute if score @s[tag=icew.iceclaw] icew.phase matches 3 run \
    return run function icewarrior:boss/anim/walking/p0_anim