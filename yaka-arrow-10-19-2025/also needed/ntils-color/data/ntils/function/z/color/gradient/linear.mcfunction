execute store result score #color.gradient.0 ntils.out store result score #color.gradient.1 ntils.out run scoreboard players operation #color.gradient.2 ntils.out = #t ntils.z.color.temp

scoreboard players operation #color.gradient.0 ntils.out *= #color.gradient.end.0 ntils.in
scoreboard players operation #color.gradient.1 ntils.out *= #color.gradient.end.1 ntils.in
scoreboard players operation #color.gradient.2 ntils.out *= #color.gradient.end.2 ntils.in

execute store result score #r2 ntils.z.color.temp store result score #g2 ntils.z.color.temp store result score #b2 ntils.z.color.temp run scoreboard players remove #t ntils.z.color.temp 1000

scoreboard players operation #r2 ntils.z.color.temp *= #color.gradient.start.0 ntils.in
scoreboard players operation #g2 ntils.z.color.temp *= #color.gradient.start.1 ntils.in
scoreboard players operation #b2 ntils.z.color.temp *= #color.gradient.start.2 ntils.in

scoreboard players operation #color.gradient.0 ntils.out -= #r2 ntils.z.color.temp
scoreboard players operation #color.gradient.1 ntils.out -= #g2 ntils.z.color.temp
scoreboard players operation #color.gradient.2 ntils.out -= #b2 ntils.z.color.temp

scoreboard players operation #color.gradient.0 ntils.out /= #1000 ntils.z.const
scoreboard players operation #color.gradient.1 ntils.out /= #1000 ntils.z.const
scoreboard players operation #color.gradient.2 ntils.out /= #1000 ntils.z.const