execute on vehicle run attribute @s minecraft:movement_speed modifier add icewarrior:stop_moving -999 add_value
execute if entity @s[tag=aj.ice_warrior.animation.walking.playing] run return run function aj:ice_warrior/animations/walking/stop
execute if entity @s[tag=aj.ice_warrior.animation.walking_p1.playing] run return run function aj:ice_warrior/animations/walking_p1/stop
execute if entity @s[tag=aj.ice_warrior.animation.walking_forced.playing] run return run function aj:ice_warrior/animations/walking_forced/stop