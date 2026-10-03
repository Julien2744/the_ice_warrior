#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s icew.health on vehicle run data get entity @s Health
execute if score #icew.config icew.config.bossbar matches 1 run function icewarrior:boss/refresh_bossbar

#attack
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 run function icewarrior:boss/attack_tick