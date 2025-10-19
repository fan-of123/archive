# COLOR/GRADIENT/LINEAR
#
#   Performs a color gradient between a start and end color.
#   Does not perform any easing, this is just pure linear interpolation.
#
# INPUT:
#   > Scoreboard:
#       | #color.gradient.start.[0,1,2] (3)    <- The starting color.
#       | #color.gradient.end.[0,1,2] (3)      <- The ending color.
#       | #color.gradient.time                 <- The time parameter, 0..1000
#
# OUTPUT:
#   > Scoreboard:
#       | #color.gradient.[0,1,2] (3)
#
# Performance: Good

scoreboard players operation #t ntils.z.color.temp = #color.gradient.time ntils.in
function ntils:z/color/gradient/linear