# MATH/BZ/4/POINT
#
#   Given a start point (a), an end point (c), two control points (b) and (c), and a t value, calculates a single point along a bezier curve.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.a.[x,y,z] (3)     <- Inputs for the starting point.
#       | #math.bz.4.b.[x,y,z] (3)     <- Inputs for the first control point.
#       | #math.bz.4.c.[x,y,z] (3)     <- Inputs for the second control point.
#       | #math.bz.4.d.[x,y,z] (3)     <- Inputs for the end point.
#       | #math.bz.4.t                 <- Value of the parameter t used to calculate the point. 0..1000 range.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.[x,y,z] (3)
#   > Storage:
#       | math.bz.4, double list (3)
#
# PERFORMANCE: Okay
#   Don't run this if you can get away with using either iterator. Only faster if you need exactly one point, for whatever reason.

# X --------------------------------------------------------------------------------------------------------------- #

execute store result score #b-a ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.x ntils.out = #math.bz.4.b.x ntils.in
execute store result score #b-c ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.x ntils.out -= #math.bz.4.c.x ntils.in
scoreboard players operation #math.bz.4.x ntils.out *= #3 ntils.z.const
scoreboard players operation #math.bz.4.x ntils.out -= #math.bz.4.a.x ntils.in
scoreboard players operation #math.bz.4.x ntils.out += #math.bz.4.d.x ntils.in

scoreboard players operation #math.bz.4.x ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp -= #math.bz.4.a.x ntils.in
scoreboard players operation #b-c ntils.z.math.bz.4.temp += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #b-c ntils.z.math.bz.4.temp *= #-3 ntils.z.const

scoreboard players operation #math.bz.4.x ntils.out += #b-c ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.x ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.x ntils.out += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.x ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.x ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[0] double 0.001 run scoreboard players operation #math.bz.4.x ntils.out += #math.bz.4.a.x ntils.in

# Y --------------------------------------------------------------------------------------------------------------- #

execute store result score #b-a ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.y ntils.out = #math.bz.4.b.y ntils.in
execute store result score #b-c ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.y ntils.out -= #math.bz.4.c.y ntils.in
scoreboard players operation #math.bz.4.y ntils.out *= #3 ntils.z.const
scoreboard players operation #math.bz.4.y ntils.out -= #math.bz.4.a.y ntils.in
scoreboard players operation #math.bz.4.y ntils.out += #math.bz.4.d.y ntils.in

scoreboard players operation #math.bz.4.y ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp -= #math.bz.4.a.y ntils.in
scoreboard players operation #b-c ntils.z.math.bz.4.temp += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #b-c ntils.z.math.bz.4.temp *= #-3 ntils.z.const

scoreboard players operation #math.bz.4.y ntils.out += #b-c ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.y ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.y ntils.out += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.y ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.y ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[1] double 0.001 run scoreboard players operation #math.bz.4.y ntils.out += #math.bz.4.a.y ntils.in

# Z --------------------------------------------------------------------------------------------------------------- #

execute store result score #b-a ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.z ntils.out = #math.bz.4.b.z ntils.in
execute store result score #b-c ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.z ntils.out -= #math.bz.4.c.z ntils.in
scoreboard players operation #math.bz.4.z ntils.out *= #3 ntils.z.const
scoreboard players operation #math.bz.4.z ntils.out -= #math.bz.4.a.z ntils.in
scoreboard players operation #math.bz.4.z ntils.out += #math.bz.4.d.z ntils.in

scoreboard players operation #math.bz.4.z ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp -= #math.bz.4.a.z ntils.in
scoreboard players operation #b-c ntils.z.math.bz.4.temp += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #b-c ntils.z.math.bz.4.temp *= #-3 ntils.z.const

scoreboard players operation #math.bz.4.z ntils.out += #b-c ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.z ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #b-a ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #math.bz.4.z ntils.out += #b-a ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.z ntils.out *= #math.bz.4.t ntils.in
scoreboard players operation #math.bz.4.z ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[2] double 0.001 run scoreboard players operation #math.bz.4.z ntils.out += #math.bz.4.a.z ntils.in