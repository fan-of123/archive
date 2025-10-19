# MATH/BZ/3/I/S/LOOP
#
#   Iterates a single step along the bezier curve initialized by the math/bz/3/i/s/loop function.
#   Outputs the current position on the curve as scores and as nbt that can be applied directly as Pos data.
#
# INPUT:
#   > Misc:
#       | For this function to work correctly, an iteration process must have already been started on the @s entity.
#       | To start one, call math/bz/3/i/s/start.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.3.[x,y,z] (3)
#   > Storage:
#       | math.bz.3, double list (3)
#
# PERFORMANCE: Excellent
#   Starting an iteration is slow, but performing an iteration step is very fast, which is basically the whole reason for this stuff.

execute store result storage ntils:out math.bz.3[0] double 0.001 store result score #math.bz.3.x ntils.out run scoreboard players operation @s ntils.z.math.bz.3.i.base.x += @s ntils.z.math.bz.3.i.vec_s.x
execute store result score @s ntils.z.math.bz.3.i.vec_s.x run scoreboard players operation @s ntils.z.math.bz.3.i.vec.x += @s ntils.z.math.bz.3.i.accel.x
scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.x /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[1] double 0.001 store result score #math.bz.3.y ntils.out run scoreboard players operation @s ntils.z.math.bz.3.i.base.y += @s ntils.z.math.bz.3.i.vec_s.y
execute store result score @s ntils.z.math.bz.3.i.vec_s.y run scoreboard players operation @s ntils.z.math.bz.3.i.vec.y += @s ntils.z.math.bz.3.i.accel.y
scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.y /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.3[2] double 0.001 store result score #math.bz.3.z ntils.out run scoreboard players operation @s ntils.z.math.bz.3.i.base.z += @s ntils.z.math.bz.3.i.vec_s.z
execute store result score @s ntils.z.math.bz.3.i.vec_s.z run scoreboard players operation @s ntils.z.math.bz.3.i.vec.z += @s ntils.z.math.bz.3.i.accel.z
scoreboard players operation @s ntils.z.math.bz.3.i.vec_s.z /= #1000 ntils.z.const