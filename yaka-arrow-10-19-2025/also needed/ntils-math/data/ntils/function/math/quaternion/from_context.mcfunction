# MATH/QUATERNION/FROM_CONTEXT
#
#   Generates a quaternion representing the current ~ ~ yaw/pitch rotation.
#
# INPUT:
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
# PERFORMANCE: Good
#   Just 10 (15) commands. About 40% faster than from_yaw_pitch.

execute in ntils:z/empty positioned 0. 0 1. rotated ~ 0 positioned ^ ^ ^1 facing 0. 0 0. positioned 0. 0 0. run teleport 00000023-0000-0000-0000-002300000000 ^ ^ ^-1
execute store result score #s ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[0] 46340
execute store result score #c ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 46340

execute in ntils:z/empty positioned 0. 0 1. rotated 0 ~ positioned ^ ^ ^1 facing 0. 0 0. positioned 0. 0 0. run teleport 00000023-0000-0000-0000-002300000000 ^ ^ ^-1
execute store result score #math.quaternion.y ntils.out store result score #math.quaternion.w ntils.out run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 46340
execute store result score #math.quaternion.x ntils.out store result score #math.quaternion.z ntils.out run data get entity 00000023-0000-0000-0000-002300000000 Pos[1] 46340

execute store result storage ntils:out math.quaternion[3] float .000000000465661287520 run scoreboard players operation #math.quaternion.w ntils.out *= #c ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[2] float .000000000465661287520 run scoreboard players operation #math.quaternion.z ntils.out *= #s ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[1] float .000000000465661287520 run scoreboard players operation #math.quaternion.y ntils.out *= #s ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[0] float -.00000000046566128752 run scoreboard players operation #math.quaternion.x ntils.out *= #c ntils.z.math.quaternion.temp

execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.x ntils.out /= #-46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.y ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.z ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.w ntils.out /= #46340^2/1000 ntils.z.const