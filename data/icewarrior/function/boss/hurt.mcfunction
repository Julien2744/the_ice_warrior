execute on attacker if entity @s[type=bat,tag=icew.bait] run execute as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..0.1] run tag @s add icew.bait_hurt

#remove "icew.target" tag if the attacker has the "icew.immune" tag
execute if entity @e[tag=icew.target,tag=icew.immune,distance=..128,limit=1] run tag @e[tag=icew.target,tag=icew.immune,distance=..128,limit=1] remove icew.target

execute if entity @s[tag=!icew.bait_hurt,tag=!icew.master_parry] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1
execute if entity @s[tag=!icew.bait_hurt,tag=icew.v_broken_armor] run particle block{block_state:"minecraft:packed_ice"} ~ ~0.75 ~ 0.25 0.25 0.25 0 3 normal

function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#5% to change the target
execute if entity @n[tag=icew.target,distance=8..64] run execute if predicate icewarrior:random_5 on attacker if entity @s[tag=!icew.target,tag=!icew.immune] run function icewarrior:set_target

#favorit targeting a player than a mob
execute if entity @n[tag=icew.target,distance=..21,type=!player] on attacker if entity @s[type=player,gamemode=!creative,gamemode=!spectator,tag=!icew.target,tag=!icew.immune] if predicate icewarrior:random_50 run function icewarrior:set_target

#master_parry
execute if entity @s[tag=!icew.bait_hurt] on passengers at @s if entity @s[tag=icew.master_parry,tag=!aj.ice_warrior.animation.master_parry_slash.playing,tag=!icew.iceclaw] if entity @n[tag=icew.target,distance=..128] run function icewarrior:boss/effects/master_parry

#master_will_parry
execute if entity @s[tag=!icew.bait_hurt] on passengers at @s if entity @s[tag=!icew.will_parry,tag=!icew.master_parry,tag=!icew.iceclaw] if score @s icew.phase matches 3 if entity @n[tag=icew.target,distance=..128] run execute if predicate icewarrior:random_15 run function icewarrior:boss/effects/will_parry_indicator

#kepp at end
tag @s[tag=icew.bait_hurt] remove icew.bait_hurt