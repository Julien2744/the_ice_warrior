execute if entity @s[tag=icew.immune] run playsound minecraft:item.shield.block ambient @p[distance=..4]
execute if entity @s[tag=icew.immune] run tellraw @p[distance=..4] [{"color":"red","text":"Error this entity has the tag 'ice.immune' and therefore cannot be targeted."}]

execute if entity @s[tag=!icew.immune] run tag @n[type=stray,tag=icew.hitbox,distance=..32] add icew.aggro_dmg
execute if entity @s[tag=!icew.immune] run damage @n[type=stray,tag=icew.hitbox,distance=..32] 0 icewarrior:aggro_boss by @s