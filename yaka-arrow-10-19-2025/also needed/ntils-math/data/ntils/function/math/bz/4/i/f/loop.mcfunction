# MATH/BZ/4/I/F/LOOP
#
#   Iterates a single step along the bezier curve initialized by the math/bz/4/i/f/start function.
#   Outputs the current position on the curve as scores and as nbt that can be applied directly as Pos data.
#
# INPUT:
#   > Misc:
#       | For this function to work correctly, an iteration process must have already been started globally.
#       | To start one, call math/bz/4/i/f/start.
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.[x,y,z] (3)
#   > Storage:
#       | math.bz.4, double list (3)
#
# PERFORMANCE: Excellent
#   Starting an iteration is slow, but performing an iteration step is very fast, which is basically the whole reason for this stuff.

execute store result storage ntils:out math.bz.4[0] double 0.001 store result score #math.bz.4.x ntils.out run scoreboard players operation #math.bz.4.i.base.x ntils.z.math.bz.4.temp += #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.vec.x ntils.z.math.bz.4.temp += #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.accel.x ntils.z.math.bz.4.temp += #math.bz.4.i.jerk.x ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.vec_s.x ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.x ntils.z.math.bz.4.temp /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[1] double 0.001 store result score #math.bz.4.y ntils.out run scoreboard players operation #math.bz.4.i.base.y ntils.z.math.bz.4.temp += #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.vec.y ntils.z.math.bz.4.temp += #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.accel.y ntils.z.math.bz.4.temp += #math.bz.4.i.jerk.y ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.vec_s.y ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.y ntils.z.math.bz.4.temp /= #1000 ntils.z.const

execute store result storage ntils:out math.bz.4[2] double 0.001 store result score #math.bz.4.z ntils.out run scoreboard players operation #math.bz.4.i.base.z ntils.z.math.bz.4.temp += #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.vec.z ntils.z.math.bz.4.temp += #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp
execute store result score #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp run scoreboard players operation #math.bz.4.i.accel.z ntils.z.math.bz.4.temp += #math.bz.4.i.jerk.z ntils.z.math.bz.4.temp
scoreboard players operation #math.bz.4.i.vec_s.z ntils.z.math.bz.4.temp /= #1000 ntils.z.const
scoreboard players operation #math.bz.4.i.accel_s.z ntils.z.math.bz.4.temp /= #1000 ntils.z.const

