## ------ The Ice Warrior Datapack ------ ##
# Minecraft version: 1.21.1
# datapack version: beta2-2
# resourcepack version: v1.2
# 
# scoreboard version: 4
##

scoreboard objectives add icew.loadScoreboard dummy

## auto update ##
scoreboard objectives add icew.scoreboardVersion dummy
execute if score #icew.load icew.loadScoreboard matches 1 run execute unless score #icew.load icew.scoreboardVersion matches 4 run function icewarrior:initialization/init_scoreboard

#run function on player join
function icewarrior:initialization/check_player