execute on vehicle run effect give @s slowness infinite 6 true
execute if entity @s[tag=aj.ice_warrior.animation.walking.playing] run function animated_java:ice_warrior/animations/walking/stop
execute if entity @s[tag=aj.ice_warrior.animation.walking_p1.playing] run function animated_java:ice_warrior/animations/walking_p1/stop
execute if entity @s[tag=aj.ice_warrior.animation.walking_forced.playing] run function animated_java:ice_warrior/animations/walking_forced/stop