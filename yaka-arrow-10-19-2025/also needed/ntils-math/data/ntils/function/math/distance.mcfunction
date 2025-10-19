# MATH/DISTANCE
#
#   Calculates the length of a 1, 2, or 3 component vector with floating-point precision.
#
# INPUT:
#   > Storage:
#       | math.distance, object. Not all of X, Y, and Z need to be specified for this to work, but at least one needs to be.
#       |   {
#       |       X, float
#       |       Y, float
#       |       Z, float
#       |   }
#
# OUTPUT:
#   > Storage:
#       | math.distance, float.
#
# PERFORMANCE: Good
#   Use this if you need floating-point precision on your distance calculation. Otherwise, just use the scoreboard method.

execute if data storage ntils:in math.distance.X run data modify storage ntils:z math.distance.transform[0] set from storage ntils:in math.distance.X
execute if data storage ntils:in math.distance.Y run data modify storage ntils:z math.distance.transform[4] set from storage ntils:in math.distance.Y
execute if data storage ntils:in math.distance.Z run data modify storage ntils:z math.distance.transform[8] set from storage ntils:in math.distance.Z
data modify entity 00000000-0000-0023-0000-000000000023 transformation set from storage ntils:z math.distance.transform
data modify storage ntils:out math.distance set from entity 00000000-0000-0023-0000-000000000023 transformation.scale[0]