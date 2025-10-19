# MATH/BZ/4/POLY/S/START
#
#   Begin a polynomial bezier iteration on the @s entity. Not to be confused with bz/4/i, this iteration
#   style allows you to freely define your t values you wish to compute.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.a.[x,y,z] (3)
#       | #math.bz.4.b.[x,y,z] (3)
#       | #math.bz.4.c.[x,y,z] (3)
#       | #math.bz.4.d.[x,y,z] (3)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.[x,y,z] (3)      <- The starting point of the iteration (point a).
#   > Storage:
#       | math.bz.4, double list (3)  <- Point a as usable nbt.
#   > Misc:
#       | A bezier iteration will begin on the @s entity. Calling poly/s/fetch with a t value
#       | as input will calculate the point along the curve with that t value.
#
# PERFORMANCE: Good
#   Faster than 4/point if you want to get more than 1 point.

# X --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation @s ntils.z.math.bz.4.poly.3.x = #math.bz.4.c.x ntils.in
execute store result score @s ntils.z.math.bz.4.poly.2.x run scoreboard players operation @s ntils.z.math.bz.4.poly.3.x -= #math.bz.4.b.x ntils.in

scoreboard players operation @s ntils.z.math.bz.4.poly.2.x -= #math.bz.4.b.x ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.2.x += #math.bz.4.a.x ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.2.x *= #3 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.4.poly.3.x *= #-3 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.poly.3.x -= #math.bz.4.a.x ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.3.x += #math.bz.4.d.x ntils.in

execute store result storage ntils:out math.bz.4[0] double 0.001 store result score #math.bz.4.x ntils.out store result score @s ntils.z.math.bz.4.poly.1.x run scoreboard players operation @s ntils.z.math.bz.4.poly.0.x = #math.bz.4.a.x ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.1.x -= #math.bz.4.b.x ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.1.x *= #-3 ntils.z.const

# Y --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation @s ntils.z.math.bz.4.poly.3.y = #math.bz.4.c.y ntils.in
execute store result score @s ntils.z.math.bz.4.poly.2.y run scoreboard players operation @s ntils.z.math.bz.4.poly.3.y -= #math.bz.4.b.y ntils.in

scoreboard players operation @s ntils.z.math.bz.4.poly.2.y -= #math.bz.4.b.y ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.2.y += #math.bz.4.a.y ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.2.y *= #3 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.4.poly.3.y *= #-3 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.poly.3.y -= #math.bz.4.a.y ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.3.y += #math.bz.4.d.y ntils.in

execute store result storage ntils:out math.bz.4[1] double 0.001 store result score #math.bz.4.y ntils.out store result score @s ntils.z.math.bz.4.poly.1.y run scoreboard players operation @s ntils.z.math.bz.4.poly.0.y = #math.bz.4.a.y ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.1.y -= #math.bz.4.b.y ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.1.y *= #-3 ntils.z.const

# Z --------------------------------------------------------------------------------------------------------------- #

scoreboard players operation @s ntils.z.math.bz.4.poly.3.z = #math.bz.4.c.z ntils.in
execute store result score @s ntils.z.math.bz.4.poly.2.z run scoreboard players operation @s ntils.z.math.bz.4.poly.3.z -= #math.bz.4.b.z ntils.in

scoreboard players operation @s ntils.z.math.bz.4.poly.2.z -= #math.bz.4.b.z ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.2.z += #math.bz.4.a.z ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.2.z *= #3 ntils.z.const

scoreboard players operation @s ntils.z.math.bz.4.poly.3.z *= #-3 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.poly.3.z -= #math.bz.4.a.z ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.3.z += #math.bz.4.d.z ntils.in

execute store result storage ntils:out math.bz.4[2] double 0.001 store result score #math.bz.4.z ntils.out store result score @s ntils.z.math.bz.4.poly.1.z run scoreboard players operation @s ntils.z.math.bz.4.poly.0.z = #math.bz.4.a.z ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.1.z -= #math.bz.4.b.z ntils.in
scoreboard players operation @s ntils.z.math.bz.4.poly.1.z *= #-3 ntils.z.const