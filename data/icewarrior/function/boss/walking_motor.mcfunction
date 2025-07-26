#remove slowness if attCooldown is at 0
execute on vehicle if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect clear @s slowness

execute store result score @s icew.motion.x run execute on vehicle run data get entity @s Motion[0] 10
execute store result score @s icew.motion.z run execute on vehicle run data get entity @s Motion[2] 10

execute if score @s icew.motion.x matches 0 if score @s icew.motion.z matches 0 run scoreboard players set @s icew.walking 0
execute unless score @s icew.motion.x matches 0 run scoreboard players set @s icew.walking 1
execute unless score @s icew.motion.z matches 0 run scoreboard players set @s icew.walking 1