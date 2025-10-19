# MATH/BZ/3/I/S/LOOP
#
#   Iterates a single step along the bezier curve initialized by the math/bz/4/i/s/start function.
#   Outputs the current position on the curve as scores and as nbt that can be applied directly as Pos data.
#
# INPUT:
#   > Misc:
#       | For this function to work correctly, an iteration process must have already been started on the @s entity.
#       | To start one, call math/bz/4/i/s/start.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.[x,y,z] (3)
#   > Storage:
#       | math.bz.4, double list (3)
#
# PERFORMANCE: Excellent
#   Starting an iteration is slow, but performing an iteration step is very fast, which is basically the whole reason for this stuff.

execute store result storage ntils:out math.bz.4[0] double 0.001 store result score #math.bz.4.x ntils.out run scoreboard players operation @s ntils.z.math.bz.4.i.base.x += @s ntils.z.math.bz.4.i.vec_s.x
execute store result score @s ntils.z.math.bz.4.i.vec_s.x run scoreboard players operation @s ntils.z.math.bz.4.i.vec.x += @s ntils.z.math.bz.4.i.accel_s.x
execute store result score @s ntils.z.math.bz.4.i.accel_s.x run scoreboard players operation @s ntils.z.math.bz.4.i.accel.x += @s ntils.z.math.bz.4.i.jerk.x
scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.x /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.x /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[1] double 0.001 store result score #math.bz.4.y ntils.out run scoreboard players operation @s ntils.z.math.bz.4.i.base.y += @s ntils.z.math.bz.4.i.vec_s.y
execute store result score @s ntils.z.math.bz.4.i.vec_s.y run scoreboard players operation @s ntils.z.math.bz.4.i.vec.y += @s ntils.z.math.bz.4.i.accel_s.y
execute store result score @s ntils.z.math.bz.4.i.accel_s.y run scoreboard players operation @s ntils.z.math.bz.4.i.accel.y += @s ntils.z.math.bz.4.i.jerk.y
scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.y /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.y /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[2] double 0.001 store result score #math.bz.4.z ntils.out run scoreboard players operation @s ntils.z.math.bz.4.i.base.z += @s ntils.z.math.bz.4.i.vec_s.z
execute store result score @s ntils.z.math.bz.4.i.vec_s.z run scoreboard players operation @s ntils.z.math.bz.4.i.vec.z += @s ntils.z.math.bz.4.i.accel_s.z
execute store result score @s ntils.z.math.bz.4.i.accel_s.z run scoreboard players operation @s ntils.z.math.bz.4.i.accel.z += @s ntils.z.math.bz.4.i.jerk.z
scoreboard players operation @s ntils.z.math.bz.4.i.vec_s.z /= #1000 ntils.z.const
scoreboard players operation @s ntils.z.math.bz.4.i.accel_s.z /= #1000 ntils.z.const

