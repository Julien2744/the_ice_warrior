execute if score @s icew.player.toolCooldown matches 1..110 run title @s actionbar {"color":"white","italic":false,"text":"this item is on cooldown"}

execute if score @s icew.player.toolCooldown matches 0 run execute positioned ~ ~1 ~ run function icewarrior:cryo_sigil/raycast

#create scoreboard to the player
execute unless score @s icew.player.toolCooldown matches 0..120 run scoreboard players set @s icew.player.toolCooldown 0

#keep at end
advancement revoke @s only icewarrior:use_cryo_sigil