advancement revoke @s only icewarrior:use_cryo_sigil

# fix ghost item by re-giving the item the next tick
execute if entity @s[gamemode=!creative] run tag @s add icew.give_cryo_sigil

execute anchored eyes positioned ^ ^ ^0.5 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^1.5 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^2 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^2.5 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^3 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^3.5 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^4 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
execute anchored eyes positioned ^ ^ ^4.5 unless block ~ ~ ~ #minecraft:replaceable align xyz positioned ~0.5 ~1 ~0.5 run return run function icewarrior:cryo_sigil/summon_ring
function icewarrior:cryo_sigil/summon_ring