# COLOR/GRADIENT/SMOOTH_OUT
#
#   Performs a color gradient between a start and end color.
#   Performs easing using the second half of the smoothstep function, making this very
#   steep at the start and very smooth at the end. (t=0 is start, t=1000 is end)
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
scoreboard players operation #t ntils.z.color.temp *= #color.gradient.time ntils.in
scoreboard players remove #t ntils.z.color.temp 3000000
scoreboard players operation #t ntils.z.color.temp *= #color.gradient.time ntils.in
scoreboard players operation #t ntils.z.color.temp /= #-2000000 ntils.z.const

function ntils:z/color/gradient/linear