# MATH/BZ/N/POINT
#
#   Find a point along a cubic bezier curve given a t value using the polynomial coefficients defined globally.
#   NOTE: Only works if math/bz/n/poly/f/start was called.
#
# INPUT: 
#   > Scoreboard:
#       | #math.bz.n.t  <- This is the t value for the point along the curve you want to access.
# 
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.n.[x,y,z] (3)
#   > Storage:
#       | math.bz.n, double list (3). The scoreboard output in list form, for direct Pos modification.
#
# PERFORMANCE: Okay
#   Dramatically faster than n/point but much slower than the dedicated second and third order polynomial iterators.

data modify storage ntils:z math.bz.n.poly.f.t set from storage ntils:z math.bz.n.poly.f.coefficients
execute store result score #math.bz.n.x ntils.out run data get storage ntils:z math.bz.n.poly.f.t[-1][0] 1000
execute store result score #math.bz.n.y ntils.out run data get storage ntils:z math.bz.n.poly.f.t[-1][1] 1000
execute store result score #math.bz.n.z ntils.out run data get storage ntils:z math.bz.n.poly.f.t[-1][2] 1000
function ntils:z/math/bz/n/poly/fetch/loop

execute store result storage ntils:out math.bz.n[0] double 0.001 run scoreboard players operation #math.bz.n.x ntils.out += #poly.x ntils.z.math.bz.n.temp
execute store result storage ntils:out math.bz.n[1] double 0.001 run scoreboard players operation #math.bz.n.y ntils.out += #poly.y ntils.z.math.bz.n.temp
execute store result storage ntils:out math.bz.n[2] double 0.001 run scoreboard players operation #math.bz.n.z ntils.out += #poly.z ntils.z.math.bz.n.temp