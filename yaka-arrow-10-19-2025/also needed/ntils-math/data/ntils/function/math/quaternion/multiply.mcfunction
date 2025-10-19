# MATH/QUATERNION/MULTIPLY
#
#   Multiplies two quaternions using storage input.
#
# INPUT:
#   > Storage:
#       | math.quaternion.multiply.left, float list (4)
#       | math.quaternion.multiply.right, float list (4)
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#   > Scoreboard:
#       | #math.quaternion.out.[x,y,z,w] (4)  -> Scores representing the vector and scalar quantities of the quaternion, scaled by 1000.
#       |                                                  NOTE: The storage output is generated at higher precision than the scoreboard output.
#       |                                                        This is done to keep scoreboard output consistent across all quaternion/vector/matrix functions.
#   > Storage:
#       | math.quaternion, float list (4)
#
# PERFORMANCE: Good

execute store result score #a2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.right[0] 23170
execute store result score #b2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.right[1] 23170
execute store result score #c2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.right[2] 23170
execute store result score #d2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.right[3] 23170

execute store result score #math.quaternion.x ntils.out store result score #a1c2 ntils.z.math.quaternion.temp store result score #math.quaternion.z ntils.out store result score #a1a2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.left[0] 23170

scoreboard players operation #math.quaternion.x ntils.out *= #d2 ntils.z.math.quaternion.temp
scoreboard players operation #a1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.z ntils.out *= #b2 ntils.z.math.quaternion.temp
scoreboard players operation #a1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp

execute store result score #b1c2 ntils.z.math.quaternion.temp store result score #math.quaternion.y ntils.out store result score #b1a2 ntils.z.math.quaternion.temp store result score #b1b2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.left[1] 23170

scoreboard players operation #b1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.y ntils.out *= #d2 ntils.z.math.quaternion.temp
scoreboard players operation #b1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp
scoreboard players operation #b1b2 ntils.z.math.quaternion.temp *= #b2 ntils.z.math.quaternion.temp

execute store result score #c1b2 ntils.z.math.quaternion.temp store result score #c1a2 ntils.z.math.quaternion.temp store result score #c1d2 ntils.z.math.quaternion.temp store result score #c1c2 ntils.z.math.quaternion.temp run data get storage ntils:in math.quaternion.multiply.left[2] 23170

scoreboard players operation #c1b2 ntils.z.math.quaternion.temp *= #b2 ntils.z.math.quaternion.temp
scoreboard players operation #c1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp
scoreboard players operation #c1d2 ntils.z.math.quaternion.temp *= #d2 ntils.z.math.quaternion.temp
scoreboard players operation #c1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp

execute store result score #d1a2 ntils.z.math.quaternion.temp store result score #d1b2 ntils.z.math.quaternion.temp store result score #d1c2 ntils.z.math.quaternion.temp store result score #math.quaternion.w ntils.out run data get storage ntils:in math.quaternion.multiply.left[3] 23170

scoreboard players operation #d1a2 ntils.z.math.quaternion.temp *= #a2 ntils.z.math.quaternion.temp
scoreboard players operation #d1b2 ntils.z.math.quaternion.temp *= #b2 ntils.z.math.quaternion.temp
scoreboard players operation #d1c2 ntils.z.math.quaternion.temp *= #c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.w ntils.out *= #d2 ntils.z.math.quaternion.temp

# ADDING THE PRODUCTS
scoreboard players operation #math.quaternion.x ntils.out += #b1c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.x ntils.out -= #c1b2 ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[0] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.x ntils.out += #d1a2 ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.y ntils.out -= #a1c2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.y ntils.out += #c1a2 ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[1] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.y ntils.out += #d1b2 ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.z ntils.out -= #b1a2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.z ntils.out += #c1d2 ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[2] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.z ntils.out += #d1c2 ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.w ntils.out -= #a1a2 ntils.z.math.quaternion.temp
scoreboard players operation #math.quaternion.w ntils.out -= #b1b2 ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[3] float 0.00000000186272152183 run scoreboard players operation #math.quaternion.w ntils.out -= #c1c2 ntils.z.math.quaternion.temp

execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.x ntils.out /= #(((2^31)-1)/4)/1000 ntils.z.const
scoreboard players operation #math.quaternion.y ntils.out /= #(((2^31)-1)/4)/1000 ntils.z.const
scoreboard players operation #math.quaternion.z ntils.out /= #(((2^31)-1)/4)/1000 ntils.z.const
scoreboard players operation #math.quaternion.w ntils.out /= #(((2^31)-1)/4)/1000 ntils.z.const