# MATH/BZ/3/I/S/START
#
#   Given a start point (a), an end point (c), a single control point (b), and an amount of iteration steps, begin a bezier iteration.
#   Once an iteration has been started, calling math/bz/3/i/s/loop will perform one iteration along the bezier curve. Once the amount of iterations becomes equal to
#   the starting iteration count value, the entire curve will have been traversed.
#
#   NOTE: This iteration method has to contend with scoreboard precision! As such, it has two fail cases: An iteration count that is too low (causes scoreboard overflows and makes a curve that veers wildly), or an iteration count that is too high (makes for compounding precision loss. as an example, a curve with 100 given iterations will end up closer to its target than one with 1000). A good rule of thumb is that the iteration count should be no lower than 2/3rds of the distance between the A and C points in blocks. So, for 30 blocks of distance, iteration count >20.
#   Given this, don't use this for any situation which would produce either eventuality.
#
#   This uses entity scores on @s. Starting another iteration on this same entity will overwrite this one.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.3.a.[x,y,z] (3)
#       | #math.bz.3.b.[x,y,z] (3)
#       | #math.bz.3.c.[x,y,z] (3)
#       | #math.bz.3.iterations
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.[x,y,z] (3)      <- The starting point of the iteration (point a).
#   > Storage:
#       | math.bz.3, double list (3)  <- Point a as usable nbt.
#   > Misc:
#       | This function begins an iteration and stores the scores to perform that iteration on the @s entity.
#       | Calling ntils:math/bz/3/i/s/loop will perform one step of the iteration and create usable output.
#
# PERFORMANCE: Okay

scoreboard players operation #m.x ntils.z.math.bz.3.temp = #math.bz.3.c.x ntils.in
scoreboard players operation #o.x ntils.z.math.bz.3.temp = #math.bz.3.b.x ntils.in
scoreboard players operation #o.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #m.x ntils.z.math.bz.3.temp -= #o.x ntils.z.math.bz.3.temp
scoreboard players operation #m.x ntils.z.math.bz.3.temp += #math.bz.3.a.x ntils.in
scoreboard players operation #m.x ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #m.x ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in
scoreboard players operation #m.x ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in

scoreboard players operation #2a.x ntils.z.math.bz.3.temp = #math.bz.3.a.x ntils.in
scoreboard players operation #2a.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #o.x ntils.z.math.bz.3.temp -= #2a.x ntils.z.math.bz.3.temp
scoreboard players operation #o.x ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #o.x ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in

execute store result score @s ntils.z.math.bz.3.i.vec_s.x store result score @s ntils.z.math.bz.3.i.vec.x run scoreboard players operation #o.x ntils.z.math.bz.3.temp += #m.x ntils.z.math.bz.3.temp
execute store result score @s ntils.z.math.bz.3.i.accel.x run scoreboard players operation #m.x ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.x /= #1000 ntils.z.const

scoreboard players operation #m.y ntils.z.math.bz.3.temp = #math.bz.3.c.y ntils.in
scoreboard players operation #o.y ntils.z.math.bz.3.temp = #math.bz.3.b.y ntils.in
scoreboard players operation #o.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #m.y ntils.z.math.bz.3.temp -= #o.y ntils.z.math.bz.3.temp
scoreboard players operation #m.y ntils.z.math.bz.3.temp += #math.bz.3.a.y ntils.in
scoreboard players operation #m.y ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #m.y ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in
scoreboard players operation #m.y ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in

scoreboard players operation #2a.y ntils.z.math.bz.3.temp = #math.bz.3.a.y ntils.in
scoreboard players operation #2a.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #o.y ntils.z.math.bz.3.temp -= #2a.y ntils.z.math.bz.3.temp
scoreboard players operation #o.y ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #o.y ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in

execute store result score @s ntils.z.math.bz.3.i.vec_s.y store result score @s ntils.z.math.bz.3.i.vec.y run scoreboard players operation #o.y ntils.z.math.bz.3.temp += #m.y ntils.z.math.bz.3.temp
execute store result score @s ntils.z.math.bz.3.i.accel.y run scoreboard players operation #m.y ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.y /= #1000 ntils.z.const

scoreboard players operation #m.z ntils.z.math.bz.3.temp = #math.bz.3.c.z ntils.in
scoreboard players operation #o.z ntils.z.math.bz.3.temp = #math.bz.3.b.z ntils.in
scoreboard players operation #o.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #m.z ntils.z.math.bz.3.temp -= #o.z ntils.z.math.bz.3.temp
scoreboard players operation #m.z ntils.z.math.bz.3.temp += #math.bz.3.a.z ntils.in
scoreboard players operation #m.z ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #m.z ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in
scoreboard players operation #m.z ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in

scoreboard players operation #2a.z ntils.z.math.bz.3.temp = #math.bz.3.a.z ntils.in
scoreboard players operation #2a.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation #o.z ntils.z.math.bz.3.temp -= #2a.z ntils.z.math.bz.3.temp
scoreboard players operation #o.z ntils.z.math.bz.3.temp *= #1000 ntils.z.const
scoreboard players operation #o.z ntils.z.math.bz.3.temp /= #math.bz.3.iterations ntils.in

execute store result score @s ntils.z.math.bz.3.i.vec_s.z store result score @s ntils.z.math.bz.3.i.vec.z run scoreboard players operation #o.z ntils.z.math.bz.3.temp += #m.z ntils.z.math.bz.3.temp
execute store result score @s ntils.z.math.bz.3.i.accel.z run scoreboard players operation #m.z ntils.z.math.bz.3.temp *= #2 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.z /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[0] double 0.001 store result score #math.bz.3.x ntils.out run scoreboard players operation @s ntils.z.math.bz.3.i.base.x = #math.bz.3.a.x ntils.in
execute store result storage ntils:out math.bz.3[1] double 0.001 store result score #math.bz.3.y ntils.out run scoreboard players operation @s ntils.z.math.bz.3.i.base.y = #math.bz.3.a.y ntils.in
execute store result storage ntils:out math.bz.3[2] double 0.001 store result score #math.bz.3.z ntils.out run scoreboard players operation @s ntils.z.math.bz.3.i.base.z = #math.bz.3.a.z ntils.in