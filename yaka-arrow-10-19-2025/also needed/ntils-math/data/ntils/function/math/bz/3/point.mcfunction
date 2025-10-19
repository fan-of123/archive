# MATH/BZ/3/POINT
#
#   Given a start point (a), an end point (c), a control point (b), and a t value, calculates a single point along a bezier curve.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.a.[x,y,z] (3)     <- Inputs for the starting point.
#       | #math.bz.3.b.[x,y,z] (3)     <- Inputs for the control point.
#       | #math.bz.3.c.[x,y,z] (3)     <- Inputs for the end point.
#       | #math.bz.3.t                 <- Value of the parameter t used to calculate the point. 0..1000 range.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.[x,y,z] (3)
#   > Storage:
#       | math.bz.3, double list (3)
#
# PERFORMANCE: Good
#   Don't run this if you can get away with using the iterator instead.

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.x ntils.out = #math.bz.3.a.x ntils.in
execute store result score #a-b ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.x ntils.out -= #math.bz.3.b.x ntils.in
scoreboard players operation #math.bz.3.x ntils.out -= #math.bz.3.b.x ntils.in
scoreboard players operation #math.bz.3.x ntils.out += #math.bz.3.c.x ntils.in

scoreboard players operation #math.bz.3.x ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #a-b ntils.z.math.bz.3.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.3.x ntils.out -= #a-b ntils.z.math.bz.3.temp

scoreboard players operation #math.bz.3.x ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.x ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[0] double 0.001 run scoreboard players operation #math.bz.3.x ntils.out += #math.bz.3.a.x ntils.in

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.y ntils.out = #math.bz.3.a.y ntils.in
execute store result score #a-b ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.y ntils.out -= #math.bz.3.b.y ntils.in
scoreboard players operation #math.bz.3.y ntils.out -= #math.bz.3.b.y ntils.in
scoreboard players operation #math.bz.3.y ntils.out += #math.bz.3.c.y ntils.in

scoreboard players operation #math.bz.3.y ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #a-b ntils.z.math.bz.3.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.3.y ntils.out -= #a-b ntils.z.math.bz.3.temp

scoreboard players operation #math.bz.3.y ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.y ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[1] double 0.001 run scoreboard players operation #math.bz.3.y ntils.out += #math.bz.3.a.y ntils.in

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #math.bz.3.z ntils.out = #math.bz.3.a.z ntils.in
execute store result score #a-b ntils.z.math.bz.3.temp run scoreboard players operation #math.bz.3.z ntils.out -= #math.bz.3.b.z ntils.in
scoreboard players operation #math.bz.3.z ntils.out -= #math.bz.3.b.z ntils.in
scoreboard players operation #math.bz.3.z ntils.out += #math.bz.3.c.z ntils.in

scoreboard players operation #math.bz.3.z ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #a-b ntils.z.math.bz.3.temp *= #2 ntils.z.const
scoreboard players operation #math.bz.3.z ntils.out -= #a-b ntils.z.math.bz.3.temp

scoreboard players operation #math.bz.3.z ntils.out *= #math.bz.3.t ntils.in
scoreboard players operation #math.bz.3.z ntils.out /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[2] double 0.001 run scoreboard players operation #math.bz.3.z ntils.out += #math.bz.3.a.z ntils.in