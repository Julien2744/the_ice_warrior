function icewarrior:boss/attacks/master_claw_slash
scoreboard players set @s icew.lookTarget 1
scoreboard players set @s icew.forceWalk 1
execute on vehicle if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect clear @s slowness