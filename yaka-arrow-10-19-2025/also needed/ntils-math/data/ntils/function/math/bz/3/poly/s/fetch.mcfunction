# MATH/BZ/3/POLY/S/FETCH
#
#   Find a point along a quadratic bezier curve given a t value using the polynomial coefficients defined
#   on the @s entity.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.t ntils.in     <- A value from 0 to 1000.
#   > Misc:
#       | A polynomial bezier iteration must have been started on the @s entity
#       | with the use of the math/bz/3/poly/s/start function. This will not work
#       | if such an iteration was not started.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.[x,y,z] (3)
#   > Storage:
#       | math.bz.3, double list (3)
#
# PERFORMANCE: Good

execute store result score #math.bz.3.x ntils.out store result score #math.bz.3.y ntils.out run scoreboard players operation #math.bz.3.z ntils.out = #math.bz.3.t ntils.in

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.x ntils.out *= @s ntils.z.math.bz.3.poly.2.x
scoreboard players operation #math.bz.3.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.x ntils.out += @s ntils.z.math.bz.3.poly.1.x
scoreboard players operation #math.bz.3.x ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.x ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[0] double 0.001 run scoreboard players operation #math.bz.3.x ntils.out += @s ntils.z.math.bz.3.poly.0.x

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.y ntils.out *= @s ntils.z.math.bz.3.poly.2.y
scoreboard players operation #math.bz.3.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.y ntils.out += @s ntils.z.math.bz.3.poly.1.y
scoreboard players operation #math.bz.3.y ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.y ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[1] double 0.001 run scoreboard players operation #math.bz.3.y ntils.out += @s ntils.z.math.bz.3.poly.0.y

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.z ntils.out *= @s ntils.z.math.bz.3.poly.2.z
scoreboard players operation #math.bz.3.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.3.z ntils.out += @s ntils.z.math.bz.3.poly.1.z
scoreboard players operation #math.bz.3.z ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.z ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[2] double 0.001 run scoreboard players operation #math.bz.3.z ntils.out += @s ntils.z.math.bz.3.poly.0.z