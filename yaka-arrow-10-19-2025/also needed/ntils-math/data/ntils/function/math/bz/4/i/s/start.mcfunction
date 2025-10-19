# MATH/BZ/4/I/S/START
#
#   Given a start point (a), an end point (d), amd two control points (b) and (c), and an amount of iteration steps, begin a bezier iteration.
#   Once an iteration has been started, calling math/bz/4/i/s/loop will perform one iteration along the bezier curve. Once the amount of iterations becomes equal to
#   the starting iteration count value, the entire curve will have been traversed.
#
#   WARNING: This iteration method has to contend with scoreboard precision! As such, it has two fail cases: An iteration count that is too low (causes scoreboard overflows and makes a curve that veers wildly), or an iteration count that is too high (makes for compounding precision loss. as an example, a curve with 100 given iterations will end up closer to its target than one with 1000). A good rule of thumb is that the iteration count should be no lower than 2/3rds of the distance between the A and D points in blocks. So, for 30 blocks of distance, iteration count >20.
#   Given this, don't use this for any situation which would produce either eventuality.
#
#   This uses entity scores on @s. Starting another iteration on this same entity will overwrite this one.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.a.[x,y,z] (3)
#       | #math.bz.4.b.[x,y,z] (3)
#       | #math.bz.4.c.[x,y,z] (3)
#       | #math.bz.4.d.[x,y,z] (3)
#       | #math.bz.4.iterations
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.[x,y,z] (3)      <- The starting point of the iteration (point a).
#   > Storage:
#       | math.bz.4, double list (3)  <- Point a as usable nbt.
#   > Misc:
#       | This function begins an iteration and stores the scores to perform that iteration on the @s entity.
#       | Calling ntils:math/bz/4/i/s/loop will perform one step of the iteration and create usable output.
#
# PERFORMANCE: Okay
#   Significantly more expensive than the 3 point version.

scoreboard players operation #s^2 ntils.z.math.bz.4.temp = #math.bz.4.terations ntils.in
scoreboard players operation #s^2 ntils.z.math.bz.4.temp *= #math.bz.4.terations ntils.in

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #n ntils.z.math.bz.4.temp = #math.bz.4.a.x ntils.in
scoreboard players operation #h ntils.z.math.bz.4.temp = #math.bz.4.b.x ntils.in
scoreboard players operation #j ntils.z.math.bz.4.temp = #math.bz.4.c.x ntils.in

scoreboard players operation #n ntils.z.math.bz.4.temp *= #3 ntils.z.const

execute store result score #2h ntils.z.math.bz.4.temp store result score #q ntils.z.math.bz.4.temp run scoreboard players operation #h ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #2h ntils.z.math.bz.4.temp *= #2 ntils.z.const

execute store result score #z ntils.z.math.bz.4.temp run scoreboard players operation #j ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #z ntils.z.math.bz.4.temp -= #2h ntils.z.math.bz.4.temp
execute store result score #2z ntils.z.math.bz.4.temp run scoreboard players operation #z ntils.z.math.bz.4.temp += #n ntils.z.math.bz.4.temp

scoreboard players operation #q ntils.z.math.bz.4.temp -= #math.bz.4.a.x ntils.in
scoreboard players operation #q ntils.z.math.bz.4.temp += #math.bz.4.d.x ntils.in
execute store result score #o ntils.z.math.bz.4.temp run scoreboard players operation #q ntils.z.math.bz.4.temp -= #j ntils.z.math.bz.4.temp

scoreboard players operation #o ntils.z.math.bz.4.temp *= #6 ntils.z.const
scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score @s ntils.z.math.bz.4.i.jerk.x run scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in

scoreboard players operation #2z ntils.z.math.bz.4.temp *= #2 ntils.z.const
scoreboard players operation #2z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #2z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score @s ntils.z.math.bz.4.i.accel.x store result score @s ntils.z.math.bz.4.i.accel_s.x run scoreboard players operation #2z ntils.z.math.bz.4.temp += #o ntils.z.math.bz.4.temp

scoreboard players operation #h ntils.z.math.bz.4.temp -= #n ntils.z.math.bz.4.temp
scoreboard players operation #h ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #h ntils.z.math.bz.4.temp *= #1000 ntils.z.const

scoreboard players operation #z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in

scoreboard players operation #h ntils.z.math.bz.4.temp += #z ntils.z.math.bz.4.temp

scoreboard players operation #q ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #q ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #q ntils.z.math.bz.4.temp /= #s^2 ntils.z.math.bz.4.temp

execute store result score @s ntils.z.math.bz.4.i.vec.x store result score @s ntils.z.math.bz.4.i.vec_s.x run scoreboard players operation #h ntils.z.math.bz.4.temp += #q ntils.z.math.bz.4.temp

scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.x /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.x /= #1000 ntils.z.const

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #n ntils.z.math.bz.4.temp = #math.bz.4.a.y ntils.in
scoreboard players operation #h ntils.z.math.bz.4.temp = #math.bz.4.b.y ntils.in
scoreboard players operation #j ntils.z.math.bz.4.temp = #math.bz.4.c.y ntils.in

scoreboard players operation #n ntils.z.math.bz.4.temp *= #3 ntils.z.const

execute store result score #2h ntils.z.math.bz.4.temp store result score #q ntils.z.math.bz.4.temp run scoreboard players operation #h ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #2h ntils.z.math.bz.4.temp *= #2 ntils.z.const

execute store result score #z ntils.z.math.bz.4.temp run scoreboard players operation #j ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #z ntils.z.math.bz.4.temp -= #2h ntils.z.math.bz.4.temp
execute store result score #2z ntils.z.math.bz.4.temp run scoreboard players operation #z ntils.z.math.bz.4.temp += #n ntils.z.math.bz.4.temp

scoreboard players operation #q ntils.z.math.bz.4.temp -= #math.bz.4.a.y ntils.in
scoreboard players operation #q ntils.z.math.bz.4.temp += #math.bz.4.d.y ntils.in
execute store result score #o ntils.z.math.bz.4.temp run scoreboard players operation #q ntils.z.math.bz.4.temp -= #j ntils.z.math.bz.4.temp

scoreboard players operation #o ntils.z.math.bz.4.temp *= #6 ntils.z.const
scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score @s ntils.z.math.bz.4.i.jerk.y run scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in

scoreboard players operation #2z ntils.z.math.bz.4.temp *= #2 ntils.z.const
scoreboard players operation #2z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #2z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score @s ntils.z.math.bz.4.i.accel.y store result score @s ntils.z.math.bz.4.i.accel_s.y run scoreboard players operation #2z ntils.z.math.bz.4.temp += #o ntils.z.math.bz.4.temp

scoreboard players operation #h ntils.z.math.bz.4.temp -= #n ntils.z.math.bz.4.temp
scoreboard players operation #h ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #h ntils.z.math.bz.4.temp *= #1000 ntils.z.const

scoreboard players operation #z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in

scoreboard players operation #h ntils.z.math.bz.4.temp += #z ntils.z.math.bz.4.temp

scoreboard players operation #q ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #q ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #q ntils.z.math.bz.4.temp /= #s^2 ntils.z.math.bz.4.temp

execute store result score @s ntils.z.math.bz.4.i.vec.y store result score @s ntils.z.math.bz.4.i.vec_s.y run scoreboard players operation #h ntils.z.math.bz.4.temp += #q ntils.z.math.bz.4.temp

scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.y /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.y /= #1000 ntils.z.const

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation #n ntils.z.math.bz.4.temp = #math.bz.4.a.z ntils.in
scoreboard players operation #h ntils.z.math.bz.4.temp = #math.bz.4.b.z ntils.in
scoreboard players operation #j ntils.z.math.bz.4.temp = #math.bz.4.c.z ntils.in

scoreboard players operation #n ntils.z.math.bz.4.temp *= #3 ntils.z.const

execute store result score #2h ntils.z.math.bz.4.temp store result score #q ntils.z.math.bz.4.temp run scoreboard players operation #h ntils.z.math.bz.4.temp *= #3 ntils.z.const
scoreboard players operation #2h ntils.z.math.bz.4.temp *= #2 ntils.z.const

execute store result score #z ntils.z.math.bz.4.temp run scoreboard players operation #j ntils.z.math.bz.4.temp *= #3 ntils.z.const

scoreboard players operation #z ntils.z.math.bz.4.temp -= #2h ntils.z.math.bz.4.temp
execute store result score #2z ntils.z.math.bz.4.temp run scoreboard players operation #z ntils.z.math.bz.4.temp += #n ntils.z.math.bz.4.temp

scoreboard players operation #q ntils.z.math.bz.4.temp -= #math.bz.4.a.z ntils.in
scoreboard players operation #q ntils.z.math.bz.4.temp += #math.bz.4.d.z ntils.in
execute store result score #o ntils.z.math.bz.4.temp run scoreboard players operation #q ntils.z.math.bz.4.temp -= #j ntils.z.math.bz.4.temp

scoreboard players operation #o ntils.z.math.bz.4.temp *= #6 ntils.z.const
scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #o ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score @s ntils.z.math.bz.4.i.jerk.z run scoreboard players operation #o ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in

scoreboard players operation #2z ntils.z.math.bz.4.temp *= #2 ntils.z.const
scoreboard players operation #2z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #2z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #2z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
execute store result score @s ntils.z.math.bz.4.i.accel.z store result score @s ntils.z.math.bz.4.i.accel_s.z run scoreboard players operation #2z ntils.z.math.bz.4.temp += #o ntils.z.math.bz.4.temp

scoreboard players operation #h ntils.z.math.bz.4.temp -= #n ntils.z.math.bz.4.temp
scoreboard players operation #h ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #h ntils.z.math.bz.4.temp *= #1000 ntils.z.const

scoreboard players operation #z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in

scoreboard players operation #h ntils.z.math.bz.4.temp += #z ntils.z.math.bz.4.temp

scoreboard players operation #q ntils.z.math.bz.4.temp /= #math.bz.4.terations ntils.in
scoreboard players operation #q ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #q ntils.z.math.bz.4.temp /= #s^2 ntils.z.math.bz.4.temp

execute store result score @s ntils.z.math.bz.4.i.vec.z store result score @s ntils.z.math.bz.4.i.vec_s.z run scoreboard players operation #h ntils.z.math.bz.4.temp += #q ntils.z.math.bz.4.temp

scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.z /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.z /= #1000 ntils.z.const

# END --------------------------------------------------------------------------------------------------------------- #

execute store result storage ntils:out math.bz.4[0] double 0.001 store result score #math.bz.4.x ntils.out run scoreboard players operation @s ntils.z.math.bz.4.i.base.x = #math.bz.4.a.x ntils.in
execute store result storage ntils:out math.bz.4[1] double 0.001 store result score #math.bz.4.y ntils.out run scoreboard players operation @s ntils.z.math.bz.4.i.base.y = #math.bz.4.a.y ntils.in
execute store result storage ntils:out math.bz.4[2] double 0.001 store result score #math.bz.4.z ntils.out run scoreboard players operation @s ntils.z.math.bz.4.i.base.z = #math.bz.4.a.z ntils.in