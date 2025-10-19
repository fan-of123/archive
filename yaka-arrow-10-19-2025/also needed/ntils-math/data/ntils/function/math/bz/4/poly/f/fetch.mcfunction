execute store result score #math.bz.4.x ntils.out store result score #math.bz.4.y ntils.out run scoreboard players operation #math.bz.4.z ntils.out = #math.bz.4.t ntils.in

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.x ntils.out *= #math.bz.4.poly.3.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.x ntils.out += #math.bz.4.poly.2.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.x ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.x ntils.out += #math.bz.4.poly.1.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.x ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.x ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[0] double 0.001 run scoreboard players operation #math.bz.4.x ntils.out += #math.bz.4.poly.0.x ntils.z.math.bz.4.temp

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.y ntils.out *= #math.bz.4.poly.3.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.y ntils.out += #math.bz.4.poly.2.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.y ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.y ntils.out += #math.bz.4.poly.1.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.y ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.y ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[1] double 0.001 run scoreboard players operation #math.bz.4.y ntils.out += #math.bz.4.poly.0.y ntils.z.math.bz.4.temp

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.4.z ntils.out *= #math.bz.4.poly.3.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.z ntils.out += #math.bz.4.poly.2.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.z ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.4.z ntils.out += #math.bz.4.poly.1.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.z ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.z ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[2] double 0.001 run scoreboard players operation #math.bz.4.z ntils.out += #math.bz.4.poly.0.z ntils.z.math.bz.4.temp

