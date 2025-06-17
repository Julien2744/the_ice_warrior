# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

$say test - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p1 {ID:}

#stop walking
execute on vehicle unless entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect give @s slowness infinite 6 false
execute if entity @s[tag=aj.ice_warrior.animation.walking.playing] run function animated_java:ice_warrior/animations/walking/stop


#parry
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.attCooldown 15
execute if score @s icew.abilityID matches 1 run function icewarrior:boss/attacks/parry
execute if score @s icew.abilityID matches 1 run function animated_java:ice_warrior/animations/parry/play

#keep at end of file
scoreboard players set @s icew.abilityID 0