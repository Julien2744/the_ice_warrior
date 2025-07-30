#global
#boss
#0: false ; 1: true
scoreboard objectives add icew.tickmarker dummy
#0: false ; 1: true
scoreboard objectives add icew.spawned dummy
#gamerule
#0: false ; 1: true
scoreboard objectives add icew.checkMobLoot dummy

#local
#boss
#0: no entrance anim; 1: falling, 2: threathen player
scoreboard objectives add icew.entranceId dummy
scoreboard objectives add icew.attCooldown dummy
#0: false ; 1: true
scoreboard objectives add icew.canAttack dummy
#increase every hit; if set to 999.. can use special
scoreboard objectives add icew.combo dummy
#0: phase1 (claw) ; 1: phase2 (trident)
scoreboard objectives add icew.phase dummy
#Id start at 1 (0 = no anim)
scoreboard objectives add icew.abilityID dummy
#0: false ; 1: true
scoreboard objectives add icew.lookTarget dummy
scoreboard objectives add icew.health_pour dummy
scoreboard objectives add icew.health dummy
#0: false ; 1: true
scoreboard objectives add icew.death dummy
#0: false ; 1: true
scoreboard objectives add icew.walking dummy
#0: false ; 1: true
scoreboard objectives add icew.forceWalk dummy
scoreboard objectives add icew.motion.x dummy
scoreboard objectives add icew.motion.z dummy
#use for math
scoreboard objectives add icew.math.mem dummy
scoreboard objectives add icew.math.div dummy


#initialize (only for global)
#boss
scoreboard players set #icew.global icew.tickmarker 1

## scoreboard version ##
scoreboard players set #icew.load icew.scoreboardVersion 1

#end of initialisating
scoreboard players set #icew.load icew.loadScoreboard 1


#fix wierd bug that when you create a new world you need to /reload so that
#the next animated java rig doesn't have bugged animation
execute positioned 0 0 0 run reload

#say scoreboard finished