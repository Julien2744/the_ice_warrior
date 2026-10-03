advancement revoke @s only icewarrior:use_cryo_sigil

# fix ghost item by re-giving the item the next tick
execute if entity @s[gamemode=!creative] run tag @s add icew.give_cryo_sigil

execute positioned ^ ^1.5 ^0.5 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^1 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^1.5 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^2 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^2.5 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^3 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^3.5 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ^ ^1.5 ^4 unless block ~ ~ ~ #minecraft:replaceable run return run function icewarrior:cryo_sigil/summon_ring
execute positioned ~ ~ ~ run function icewarrior:cryo_sigil/summon_ring