execute if score @s icew.player.toolCooldown matches 0 run playsound minecraft:block.glass.break player @s ~ ~ ~ 1 2

#shovel to pickaxe
execute if score @s icew.player.toolCooldown matches 0 run execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":41781}}}] run function icewarrior:soul_ice_tools/shovel_to_pickaxe
#pickaxe to axe
execute if score @s icew.player.toolCooldown matches 0 run execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":41782}}}] run function icewarrior:soul_ice_tools/pickaxe_to_axe
#axe to hoe
execute if score @s icew.player.toolCooldown matches 0 run execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":41783}}}] run function icewarrior:soul_ice_tools/axe_to_hoe
#hoe to shovel
execute if score @s icew.player.toolCooldown matches 0 run execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":41784}}}] run function icewarrior:soul_ice_tools/hoe_to_shovel

#create scoreboard to the player
execute unless score @s icew.player.toolCooldown matches 0..10 run scoreboard players set @s icew.player.toolCooldown 0

#keep at end
advancement revoke @s only icewarrior:use_soul_ice_tool