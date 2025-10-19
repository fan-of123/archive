# MATH/QUATERNION/FROM_CONTEXT_ROLL
#
#   Generates a quaternion representing the current ~ ~ yaw/pitch rotation, rolled with a scoreboard input.
#
# INPUT:
#   > Scoreboard:
#       | #math.quaternion.roll            -> The roll of the quaternion, in degrees. Scaled by 1000
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#   > Scoreboard:
#       | #math.quaternion.[x,y,z,w] (4)  -> Scores representing the vector and scalar quantities of the quaternion, scaled by 1000.
#       |                                                  NOTE: The storage output is generated at higher precision than the scoreboard output.
#       |                                                        This is done to keep scoreboard output consistent across all quaternion/vector/matrix functions.
#   > Storage:
#       | math.quaternion, float list (4). The quaternion in float list form for directly setting display transformations.
#
# PERFORMANCE: Okay
#   Much faster than math/quaterion/from_euler.

# CONTEXT QUATERNION
#  > Half-Angle sine and cosine
execute in ntils:z/empty positioned 0. 0 1. rotated 0 ~ positioned ^ ^ ^1 facing 0. 0 0. positioned 0. 0 0. run teleport 00000023-0000-0000-0000-002300000000 ^ ^ ^-1
execute store result score #y ntils.z.math.quaternion.temp store result score #w ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 46340
execute store result score #x ntils.z.math.quaternion.temp store result score #z ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[1] -46340

execute in ntils:z/empty positioned 0. 0 1. rotated ~ 0 positioned ^ ^ ^1 facing 0. 0 0. positioned 0. 0 0. run teleport 00000023-0000-0000-0000-002300000000 ^ ^ ^-1
execute store result score #c ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 46340
execute store result score #s ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[0] 46340

#  > Form quaternion
scoreboard players operation #w ntils.z.math.quaternion.temp *= #c ntils.z.math.quaternion.temp
scoreboard players operation #x ntils.z.math.quaternion.temp *= #c ntils.z.math.quaternion.temp
scoreboard players operation #y ntils.z.math.quaternion.temp *= #s ntils.z.math.quaternion.temp
scoreboard players operation #z ntils.z.math.quaternion.temp *= #s ntils.z.math.quaternion.temp

#  > In-Step Scaling
scoreboard players operation #w ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const
scoreboard players operation #x ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const
scoreboard players operation #y ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const
scoreboard players operation #z ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const

# ROLL QUATERNION
#  > Half-Angle sine and cosine
execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[0] float 0.0005 run scoreboard players get #math.quaternion.roll ntils.in
execute at 00000023-0000-0000-0000-002300000000 rotated ~ 0 positioned .0 0 .0 run teleport 00000023-0000-0000-0000-002300000000 ^ ^ ^1
execute store result score #math.quaternion.y ntils.out store result score #d ntils.z.math.quaternion.temp store result score #a ntils.z.math.quaternion.temp store result score #c ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 46340
execute store result score #math.quaternion.x ntils.out store result score #math.quaternion.z ntils.out store result score #math.quaternion.w ntils.out store result score #b ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[0] 46340

#  > Form Quaternion
scoreboard players operation #math.quaternion.w ntils.out *= #z ntils.z.math.quaternion.temp
scoreboard players operation #d ntils.z.math.quaternion.temp *= #w ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[3] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.w ntils.out += #d ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.x ntils.out *= #y ntils.z.math.quaternion.temp
scoreboard players operation #a ntils.z.math.quaternion.temp *= #x ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[0] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.x ntils.out += #a ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.y ntils.out *= #y ntils.z.math.quaternion.temp
scoreboard players operation #b ntils.z.math.quaternion.temp *= #x ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[1] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.y ntils.out -= #b ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.z ntils.out *= #w ntils.z.math.quaternion.temp
scoreboard players operation #c ntils.z.math.quaternion.temp *= #z ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[2] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.z ntils.out -= #c ntils.z.math.quaternion.temp

#  > Optional Scaling
execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.x ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.y ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.z ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.w ntils.out /= #46340^2/1000 ntils.z.const