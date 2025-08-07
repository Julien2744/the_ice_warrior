execute if entity @s[type=player] run execute if entity @n[type=bat,tag=icew.bait,distance=..128] run kill @n[type=bat,tag=icew.bait,distance=..128]

tag @n[tag=icew.target,distance=..128] remove icew.target
tag @s[tag=!icew.immune] add icew.target

execute if entity @s[type=!player] unless entity @n[type=bat,tag=icew.bait,distance=..128] run summon bat ~ ~ ~ {Silent:1b,Glowing:0b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Tags:["icew.bait","icew.immune","ps-mob","mobvariants.blacklist","in.checked","exclude","ts.mm.exclude","upgradedmobs.blacklist","fkbm.ignore","global.ignore","fkbm.no_customname"],active_effects:[{id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.follow_range",base:0},{id:"minecraft:generic.scale",base:0.07},{id:"minecraft:generic.burning_time",base:0}]}