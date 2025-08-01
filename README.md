# The Ice Warrior

## description

### Minecraft datapack that add an ice themed boss

> [!WARNING]
> This datapack require a resourcepack (link)
>
> Require [launch-command](https://modrinth.com/mod/launch-command)
>
> Current version work for `Minecraft 1.21 - 1.21.1`

All animations in this datapack where made using [Animated Java](https://animated-java.dev/)

The `animated_java` files are not included due to how many there are (1100+ files), and because the files are 99% models and animations.
You can found them on the [modrinth] page where you can download the datapack

## features

To find the boss, you will need to go to find the `ice_guard_tower` structure located in the `ice_spikes` biome.

When entering the tower you will see the ice warrior encased in ice. To release him you will need to use a lava bucket in order to melt the ice (right-click).

Or you can summon the boss anywere in your wold using the command `function icewarrior:admin/summon`

### boss behavior

- 2 phases
- 170 health
- everythime you get hit his combo counter will go up, dodging an attack will reset it to 0.

**First phase:** The boss will attack using his ice claw
- fast attacks and speed
- only damage the target
- can parry projectile (increase combo counter)
- will use his ultimate attack at 7 combos

**Second phase:** The boss will attack using his trident (activate on 50% max hp)
- the boss will receive a buff (immune to fire, increased armor, speed...)
- slow but strong attacks
- can damage other mob alongside the target
- no longer parry projectile
- stop some of his attack on miss
- will use his ultimate attack at 5 combos
  - no longer use his other attack
  - can parry projectile

> [!NOTE]
> The boss isn't that strong, and all his attacks are dodgeable. I personally recommend to face him with a full set of diamond armor.

The boss cannot target/damage a mob if it has the tag `icew.immune`.

You can change his target with mod that let you change mob target.

## Other informations

Because the boss use a stray has is hitbox/health, any mod that modify stray can affect the boss and ***might*** cause issues. Hoewer I already fixed this issue for some mod, if those allowed me to blacklist the mob from getting any modification.

Also because the boss use a stray has his hitbox/health, the boss has some difficulty when attacking mob with big hitbox.

You can modify:
- items can melt the boss ice in `data/icewarrior/tags/item/can_melt_ice_room.json`
- mob will aggro the boss in `data/icewarrior/tags/entity_type/aggro_boss.json`
- entity that can be parried in `data/icewarrior/tags/entity_type/can_parry.json`
- entity that can be parried in `data/icewarrior/tags/entity_type/can_parry.json`