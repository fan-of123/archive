# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.poly.3.x ntils.z.math.bz.4.temp = #math.bz.4.c.x ntils.in
execute store result score #math.bz.4.poly.2.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.poly.3.x ntils.z.math.bz.4.temp -= #math.bz.4.b.x ntils.in

scoreboard players operation #math.bz.4.poly.2.x ntils.z.math.bz.4.temp -= #math.bz.4.b.x ntils.in
scoreboard players operation #math.bz.4.poly.2.x ntils.z.math.bz.4.temp += #math.bz.4.a.x ntils.in
scoreboard players operation #math.bz.4.poly.2.x ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.poly.3.x ntils.z.math.bz.4.temp *= #-3 ntils.z.const
scoreboard players operation #math.bz.4.poly.3.x ntils.z.math.bz.4.temp -= #math.bz.4.a.x ntils.in
scoreboard players operation #math.bz.4.poly.3.x ntils.z.math.bz.4.temp += #math.bz.4.d.x ntils.in

execute store result storage ntils:out math.bz.4[0] double 0.001 store result score #math.bz.4.x ntils.out store result score #math.bz.4.poly.1.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.poly.0.x ntils.z.math.bz.4.temp = #math.bz.4.a.x ntils.in
scoreboard players operation #math.bz.4.poly.1.x ntils.z.math.bz.4.temp -= #math.bz.4.b.x ntils.in
scoreboard players operation #math.bz.4.poly.1.x ntils.z.math.bz.4.temp *= #-3 ntils.z.const

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.poly.3.y ntils.z.math.bz.4.temp = #math.bz.4.c.y ntils.in
execute store result score #math.bz.4.poly.2.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.poly.3.y ntils.z.math.bz.4.temp -= #math.bz.4.b.y ntils.in

scoreboard players operation #math.bz.4.poly.2.y ntils.z.math.bz.4.temp -= #math.bz.4.b.y ntils.in
scoreboard players operation #math.bz.4.poly.2.y ntils.z.math.bz.4.temp += #math.bz.4.a.y ntils.in
scoreboard players operation #math.bz.4.poly.2.y ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.poly.3.y ntils.z.math.bz.4.temp *= #-3 ntils.z.const
scoreboard players operation #math.bz.4.poly.3.y ntils.z.math.bz.4.temp -= #math.bz.4.a.y ntils.in
scoreboard players operation #math.bz.4.poly.3.y ntils.z.math.bz.4.temp += #math.bz.4.d.y ntils.in

execute store result storage ntils:out math.bz.4[1] double 0.001 store result score #math.bz.4.y ntils.out store result score #math.bz.4.poly.1.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.poly.0.y ntils.z.math.bz.4.temp = #math.bz.4.a.y ntils.in
scoreboard players operation #math.bz.4.poly.1.y ntils.z.math.bz.4.temp -= #math.bz.4.b.y ntils.in
scoreboard players operation #math.bz.4.poly.1.y ntils.z.math.bz.4.temp *= #-3 ntils.z.const

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.poly.3.z ntils.z.math.bz.4.temp = #math.bz.4.c.z ntils.in
execute store result score #math.bz.4.poly.2.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.poly.3.z ntils.z.math.bz.4.temp -= #math.bz.4.b.z ntils.in

scoreboard players operation #math.bz.4.poly.2.z ntils.z.math.bz.4.temp -= #math.bz.4.b.z ntils.in
scoreboard players operation #math.bz.4.poly.2.z ntils.z.math.bz.4.temp += #math.bz.4.a.z ntils.in
scoreboard players operation #math.bz.4.poly.2.z ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.poly.3.z ntils.z.math.bz.4.temp *= #-3 ntils.z.const
scoreboard players operation #math.bz.4.poly.3.z ntils.z.math.bz.4.temp -= #math.bz.4.a.z ntils.in
scoreboard players operation #math.bz.4.poly.3.z ntils.z.math.bz.4.temp += #math.bz.4.d.z ntils.in

execute store result storage ntils:out math.bz.4[2] double 0.001 store result score #math.bz.4.z ntils.out store result score #math.bz.4.poly.1.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.poly.0.z ntils.z.math.bz.4.temp = #math.bz.4.a.z ntils.in
scoreboard players operation #math.bz.4.poly.1.z ntils.z.math.bz.4.temp -= #math.bz.4.b.z ntils.in
scoreboard players operation #math.bz.4.poly.1.z ntils.z.math.bz.4.temp *= #-3 ntils.z.const

