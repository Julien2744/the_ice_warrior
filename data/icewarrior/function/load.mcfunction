## ------ The Ice Warrior Datapack ------ ##
# Minecraft version: 1.21.1
# datapack version: r1.1
# resourcepack version: v1.1
# 
# scoreboard version: 3
##

scoreboard objectives add icew.loadScoreboard dummy

## auto update ##
scoreboard objectives add icew.scoreboardVersion dummy
execute if score #icew.load icew.loadScoreboard matches 1 run execute unless score #icew.load icew.scoreboardVersion matches 3 run function icewarrior:initialization/init_scoreboard

#run function on player join
execute if entity @p run function icewarrior:on_player_joining
execute unless entity @p run schedule function icewarrior:initialization/check_player 1s