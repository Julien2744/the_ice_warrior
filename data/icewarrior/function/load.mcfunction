## ------ The Ice Warrior Datapack ------ ##
# Minecraft version: 26.3
# datapack version: r3.0
# resourcepack version: v2
# 
# scoreboard version: 5
##

scoreboard objectives add icew.loadScoreboard dummy

## auto update ##
scoreboard objectives add icew.scoreboardVersion dummy
execute if score #icew.load icew.loadScoreboard matches 1 unless score #icew.load icew.scoreboardVersion matches 5 \
    run function icewarrior:initialization/init_scoreboard

#run function on player join
function icewarrior:initialization/check_player