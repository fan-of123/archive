# MATH/BZ/4/C/THROUGH
#
#   Given a start point, an end point, two target points for the curve to pass through, and the t values of the curve at those points, calculates the control points of a 4 point bezier curve.
#   This code suffers from MASSIVE precision loss. The calculated locations of the control points can be entire blocks off from where they should be. Do not rely on this for *anything* that would be screwed over by that.
#   NOTE: THIS MODIFIES INPUT SCORES. The output of this function is meant to be used *directly* in other functions, and as such the output is in the form of input scores.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.a.[x,y,z] (3)     <- The coordinates of the starting point.
#       | #math.bz.4.p1.[x,y,z] (3)    <- The coordinates of the first target point.
#       | #math.bz.4.p2.[x,y,z] (3)    <- The coordinates of the second target point.
#       | #math.bz.4.d.[x,y,z] (3)     <- The coordinates of the end point.
#       | #math.bz.4.[t1,t2] (2)       <- The desired t values for the target points, such that f(t1) = p1 and f(t2) = p2.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.b.[x,y,z] ntils.in (3)
#       | #math.bz.4.c.[x,y,z] ntils.in (3)
#
# PERFORMANCE: Okay
#   It's just 99 scoreboard commands.

scoreboard players operation #t1^2 ntils.z.math.bz.4.temp = #math.bz.4.t1 ntils.in
execute store result score #t1^3 ntils.z.math.bz.4.temp store result score #t1^2.div ntils.z.math.bz.4.temp run scoreboard players operation #t1^2 ntils.z.math.bz.4.temp *= #math.bz.4.t1 ntils.in
scoreboard players operation #t1^3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
execute store result score #t1^3.div ntils.z.math.bz.4.temp run scoreboard players operation #t1^3 ntils.z.math.bz.4.temp *= #math.bz.4.t1 ntils.in
scoreboard players operation #t1^2.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #t1^3.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const

scoreboard players operation #t2^2 ntils.z.math.bz.4.temp = #math.bz.4.t2 ntils.in
execute store result score #t2^3 ntils.z.math.bz.4.temp store result score #t2^2.div ntils.z.math.bz.4.temp run scoreboard players operation #t2^2 ntils.z.math.bz.4.temp *= #math.bz.4.t2 ntils.in
scoreboard players operation #t2^3 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
execute store result score #t2^3.div ntils.z.math.bz.4.temp run scoreboard players operation #t2^3 ntils.z.math.bz.4.temp *= #math.bz.4.t2 ntils.in
scoreboard players operation #t2^2.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #t2^3.div ntils.z.math.bz.4.temp /= #1000 ntils.z.const

# denom

scoreboard players operation #de ntils.z.math.bz.4.temp = #math.bz.4.t1 ntils.in
scoreboard players operation #de ntils.z.math.bz.4.temp -= #math.bz.4.t2 ntils.in
scoreboard players operation #de ntils.z.math.bz.4.temp *= #1000 ntils.z.const
scoreboard players operation #de ntils.z.math.bz.4.temp -= #t1^2 ntils.z.math.bz.4.temp
scoreboard players operation #de ntils.z.math.bz.4.temp += #t2^2 ntils.z.math.bz.4.temp

scoreboard players operation #m ntils.z.math.bz.4.temp = #math.bz.4.t2 ntils.in
scoreboard players operation #m ntils.z.math.bz.4.temp -= #math.bz.4.t1 ntils.in
scoreboard players operation #m ntils.z.math.bz.4.temp *= #math.bz.4.t1 ntils.in
scoreboard players operation #m ntils.z.math.bz.4.temp *= #math.bz.4.t2 ntils.in

scoreboard players operation #m ntils.z.math.bz.4.temp /= #1000 ntils.z.const

scoreboard players operation #de ntils.z.math.bz.4.temp -= #m ntils.z.math.bz.4.temp
scoreboard players operation #de ntils.z.math.bz.4.temp *= #math.bz.4.t1 ntils.in
scoreboard players operation #de ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #de ntils.z.math.bz.4.temp *= #math.bz.4.t2 ntils.in
scoreboard players operation #de ntils.z.math.bz.4.temp /= #333333 ntils.z.const

# RUNS ONCE

scoreboard players operation #math.bz.4.b.x ntils.in = #t2^2.div ntils.z.math.bz.4.temp
execute store result score #math.bz.4.b.y ntils.in store result score #math.bz.4.b.z ntils.in run scoreboard players operation #math.bz.4.b.x ntils.in -= #t2^3.div ntils.z.math.bz.4.temp

scoreboard players operation #multb.x ntils.z.math.bz.4.temp = #t1^2.div ntils.z.math.bz.4.temp
execute store result score #multb.y ntils.z.math.bz.4.temp store result score #multb.z ntils.z.math.bz.4.temp run scoreboard players operation #multb.x ntils.z.math.bz.4.temp -= #t1^3.div ntils.z.math.bz.4.temp

scoreboard players operation #math.bz.4.c.x ntils.in = #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.x ntils.in -= #t1^2.div ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.x ntils.in -= #t1^2.div ntils.z.math.bz.4.temp
execute store result score #math.bz.4.c.y ntils.in store result score #math.bz.4.c.z ntils.in run scoreboard players operation #math.bz.4.c.x ntils.in += #math.bz.4.t1 ntils.in

scoreboard players operation #multc.x ntils.z.math.bz.4.temp = #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #multc.x ntils.z.math.bz.4.temp -= #t2^2.div ntils.z.math.bz.4.temp
scoreboard players operation #multc.x ntils.z.math.bz.4.temp -= #t2^2.div ntils.z.math.bz.4.temp
execute store result score #multc.y ntils.z.math.bz.4.temp store result score #multc.z ntils.z.math.bz.4.temp run scoreboard players operation #multc.x ntils.z.math.bz.4.temp += #math.bz.4.t2 ntils.in

# PER AXIS
# X --- #

scoreboard players operation #fract1 ntils.z.math.bz.4.temp = #math.bz.4.d.x ntils.in
execute store result score #fract2 ntils.z.math.bz.4.temp run scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.a.x ntils.in
scoreboard players operation #fract1 ntils.z.math.bz.4.temp *= #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract1 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.p1.x ntils.in
scoreboard players operation #fract1 ntils.z.math.bz.4.temp += #math.bz.4.a.x ntils.in

scoreboard players operation #fract2 ntils.z.math.bz.4.temp *= #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract2 ntils.z.math.bz.4.temp -= #math.bz.4.p2.x ntils.in
scoreboard players operation #fract2 ntils.z.math.bz.4.temp += #math.bz.4.a.x ntils.in

scoreboard players operation #math.bz.4.b.x ntils.in *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #multb.x ntils.z.math.bz.4.temp *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.x ntils.in -= #multb.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.x ntils.in /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.x ntils.in += #math.bz.4.a.x ntils.in

scoreboard players operation #math.bz.4.c.x ntils.in *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #multc.x ntils.z.math.bz.4.temp *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.x ntils.in -= #multc.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.x ntils.in /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.x ntils.in += #math.bz.4.a.x ntils.in

# Y --- #

scoreboard players operation #fract1 ntils.z.math.bz.4.temp = #math.bz.4.d.y ntils.in
execute store result score #fract2 ntils.z.math.bz.4.temp run scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.a.y ntils.in
scoreboard players operation #fract1 ntils.z.math.bz.4.temp *= #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract1 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.p1.y ntils.in
scoreboard players operation #fract1 ntils.z.math.bz.4.temp += #math.bz.4.a.y ntils.in

scoreboard players operation #fract2 ntils.z.math.bz.4.temp *= #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract2 ntils.z.math.bz.4.temp -= #math.bz.4.p2.y ntils.in
scoreboard players operation #fract2 ntils.z.math.bz.4.temp += #math.bz.4.a.y ntils.in

scoreboard players operation #math.bz.4.b.y ntils.in *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #multb.y ntils.z.math.bz.4.temp *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.y ntils.in -= #multb.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.y ntils.in /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.y ntils.in += #math.bz.4.a.y ntils.in

scoreboard players operation #math.bz.4.c.y ntils.in *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #multc.y ntils.z.math.bz.4.temp *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.y ntils.in -= #multc.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.y ntils.in /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.y ntils.in += #math.bz.4.a.y ntils.in

# Z --- #

scoreboard players operation #fract1 ntils.z.math.bz.4.temp = #math.bz.4.d.z ntils.in
execute store result score #fract2 ntils.z.math.bz.4.temp run scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.a.z ntils.in
scoreboard players operation #fract1 ntils.z.math.bz.4.temp *= #t1^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract1 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract1 ntils.z.math.bz.4.temp -= #math.bz.4.p1.z ntils.in
scoreboard players operation #fract1 ntils.z.math.bz.4.temp += #math.bz.4.a.z ntils.in

scoreboard players operation #fract2 ntils.z.math.bz.4.temp *= #t2^3.div ntils.z.math.bz.4.temp
scoreboard players operation #fract2 ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #fract2 ntils.z.math.bz.4.temp -= #math.bz.4.p2.z ntils.in
scoreboard players operation #fract2 ntils.z.math.bz.4.temp += #math.bz.4.a.z ntils.in

scoreboard players operation #math.bz.4.b.z ntils.in *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #multb.z ntils.z.math.bz.4.temp *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.z ntils.in -= #multb.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.z ntils.in /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.b.z ntils.in += #math.bz.4.a.z ntils.in

scoreboard players operation #math.bz.4.c.z ntils.in *= #fract2 ntils.z.math.bz.4.temp
scoreboard players operation #multc.z ntils.z.math.bz.4.temp *= #fract1 ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.z ntils.in -= #multc.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.z ntils.in /= #de ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.c.z ntils.in += #math.bz.4.a.z ntils.in