# CONTEXT/VEC
#
#   Gets the unit vector in the direction of the current command context.
#
# OUTPUT:
#   > Storage:
#       | context.vec, double list (3)
#
# PERFORMANCE: Excellent
#   Maximally optimized entity manipulation using a hardcoded UUID marker.

execute in ntils:z/empty positioned .0 0 .0 run teleport 000564ff-0005-64ff-0005-64ff000564ff ^ ^ ^1
data modify storage ntils:out context.vec set from entity 000564ff-0005-64ff-0005-64ff000564ff Pos