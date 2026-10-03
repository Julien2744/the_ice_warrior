#the boss will be able to move even while attacking (only some attack can do it)
execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:movement_speed","modifiers":[{id:"icewarrior:stop_moving"}]}]}] run \
    attribute @s minecraft:movement_speed modifier remove icewarrior:stop_moving

execute unless entity @s[tag=aj.ice_warrior.animation.walking_forced.playing] \
    if score @s icew.walking matches 1 run function aj:ice_warrior/animations/walking_forced/play
#execute if entity @s[tag=aj.ice_warrior.animation.walking_forced.playing] \
    if score @s icew.walking matches 0 run function aj:ice_warrior/animations/walking_forced/stop