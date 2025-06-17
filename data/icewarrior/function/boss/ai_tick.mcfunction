#check mobhitbox
execute unless entity @s[predicate=icewarrior:check_hitbox] run function icewarrior:boss/death/begin_death

#check if the boss was hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] run function icewarrior:boss/hurt

#during entrance, check if boss stopped falling
execute if score @s icew.entranceId matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/anim/stopped_falling

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s icew.health run execute on vehicle run data get entity @s Health
execute store result bossbar icew_bossbar value run scoreboard players get @s icew.health
bossbar set icew_bossbar name [{"text":"Ice Warrior","color":"aqua"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"icew.health"},"color":"red"},{"text":"❤","color":"dark_red"}]

#attack
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches 0 if score @s icew.phase matches 0 if entity @n[tag=icew.target,distance=..128] run function icewarrior:boss/can_attack_p1
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches 0 run scoreboard players remove @s icew.attCooldown 1

#walking anim
execute if score @s icew.attCooldown matches 0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/walking

#look at target
execute if score @s icew.lookTarget matches 1 if entity @n[tag=icew.target,distance=..128] run execute facing entity @n[tag=icew.target,distance=..128] eyes run tp @s ~ ~ ~ ~ 0