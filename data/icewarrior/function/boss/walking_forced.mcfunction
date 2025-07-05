#the boss will be able to move even while attacking (only some attack can do it)

execute on vehicle if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect clear @s slowness

execute store result score @s icew.motion.x run execute on vehicle run data get entity @s Motion[0] 10
execute store result score @s icew.motion.z run execute on vehicle run data get entity @s Motion[2] 10

execute if score @s icew.motion.x matches 0 if score @s icew.motion.z matches 0 run scoreboard players set @s icew.walking 0
execute unless score @s icew.motion.x matches 0 run scoreboard players set @s icew.walking 1
execute unless score @s icew.motion.z matches 0 run scoreboard players set @s icew.walking 1

execute unless entity @s[tag=aj.ice_warrior.animation.walking.playing] if score @s icew.walking matches 1 run function animated_java:ice_warrior/animations/walking_forced/play
execute if entity @s[tag=aj.ice_warrior.animation.walking.playing] if score @s icew.walking matches 0 run function animated_java:ice_warrior/animations/walking_forced/stop