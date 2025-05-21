#global
#boss
#0: false ; 1: true
scoreboard objectives add icew.tickmarker dummy

#local
#boss
#0: no entrance anim; 1: falling, 2: threathen player
scoreboard objectives add icew.entranceId dummy
scoreboard objectives add icew.attCooldown dummy


#initialize (only for global)
#boss
scoreboard players set #icew.global icew.tickmarker 1

## scoreboard version ##
scoreboard players set #icew.load icew.scoreboardVersion 1

#end of initialisating
scoreboard players set #icew.load icew.loadScoreboard 1

say scoreboard finished