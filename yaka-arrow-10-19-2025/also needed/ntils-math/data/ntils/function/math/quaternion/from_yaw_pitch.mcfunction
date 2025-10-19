# MATH/QUATERNION/FROM_YAW_PITCH
#
#   Given a yaw/pitch rotation, generates a quaternion representing rotation in that direction.
#   NOTE: If the rotation you are grabbing happens to be the rotation context, use math/quaternion/from_context instead!
#
# INPUT:
#   > Scoreboard:
#       | #math.quaternion.[yaw,pitch] (2) -> The angles. Scale these by 1000.
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#   > Scoreboard:
#       | #math.quaternion.[x,y,z,w] (4)  -> Scores representing the vector and scalar quantities of the quaternion, scaled by 1000.
#       |                                                  NOTE: The storage output is generated at higher precision than the scoreboard output.
#       |                                                        This is done to keep scoreboard output consistent across all quaternion/vector/matrix functions.
#   > Storage:
#       | ntils:out math.quaternion, float list (4). The quaternion in float list form for directly setting display transformations.
#
# PERFORMANCE: Good


execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[0] float 0.0005 run scoreboard players get #math.quaternion.yaw ntils.in
execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[1] float 0.0005 run scoreboard players get #math.quaternion.pitch ntils.in
execute as 00000023-0000-0000-0000-002300000000 at @s positioned .0 0 .0 run function ntils:z/math/quaternion/from_yaw_pitch/as_marker

function ntils:z/math/quaternion/from_yaw_pitch/eval