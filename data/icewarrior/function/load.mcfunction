## ------ The Ice Warrior Datapack ------ ##
# Minecraft version: 1.21.1
# datapack version: beta1-4
# resourcepack version: v1.0
# 
# scoreboard version: 2
##

scoreboard objectives add icew.loadScoreboard dummy

## auto update ##
scoreboard objectives add icew.scoreboardVersion dummy
execute if score #icew.load icew.loadScoreboard matches 1 run execute unless score #icew.load icew.scoreboardVersion matches 2 run function icewarrior:initialization/init_scoreboard