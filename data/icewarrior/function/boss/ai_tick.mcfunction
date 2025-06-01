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