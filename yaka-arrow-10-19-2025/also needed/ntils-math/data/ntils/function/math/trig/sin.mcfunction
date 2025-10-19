# this is garbage
return fail
scoreboard players set #math.trig.sin ntils.out 1800
scoreboard players operation #math.trig.sin ntils.out -= #math.trig.sin ntils.in
execute store result score #180-x ntils.z.math.trig.temp run scoreboard players operation #math.trig.sin ntils.out *= #math.trig.sin ntils.in
scoreboard players operation #math.trig.sin ntils.out *= #-400 ntils.z.const
scoreboard players remove #180-x ntils.z.math.trig.temp 4050000
scoreboard players operation #math.trig.sin ntils.out /= #180-x ntils.z.math.trig.temp