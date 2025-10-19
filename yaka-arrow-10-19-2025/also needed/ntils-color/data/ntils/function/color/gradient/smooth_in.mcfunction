# COLOR/GRADIENT/SMOOTH_IN
#
#   Performs a color gradient between a start and end color.
#   Performs easing using the first half of the smoothstep function, making this very
#   smooth at the start and very steep at the end. (t=0 is start, t=1000 is end)
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

scoreboard players set #t ntils.z.color.temp 3000
scoreboard players operation #t ntils.z.color.temp -= #color.gradient.time ntils.in
scoreboard players operation #t ntils.z.color.temp *= #color.gradient.time ntils.in
scoreboard players operation #t ntils.z.color.temp *= #color.gradient.time ntils.in
scoreboard players operation #t ntils.z.color.temp /= #2000000 ntils.z.const

function ntils:z/color/gradient/linear