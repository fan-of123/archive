# MATH/BZ/N/POINT
#
#   Given an arbitrarily long list of points and a t value, calculates a point along a bezier curve of arbitrary order.
#   NOTE: This suffers from HUGE precision issues for curves with more than 3 control points (5 points total). To be honest, this thing doesn't serve much of a purpose, but it sure is fun!
#
# INPUT: 
#   > Scoreboard:
#       | #math.bz.n.t  <- This is the t value for the point along the curve you want to access.
#   > Storage:
#       | math.bz.n, double list (3) list (n). This will be a list of lists. Each list must contain numbers, 
#       |                                      and they will be treated as coordinates, and will have their 
#       |                                      values scaled as such. Copying entity Pos data directly to the 
#       |                                      list will create the desired effect.
#       |                                      The [0] entry of the list will be treated as the start, and 
#       |                                      the [-1] entry will be treated as the end.
#       |                                      All other points will be treated as controls.
# 
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.n.[x,y,z] (3)
#   > Storage:
#       | ntils:out math.bz.n, double list (3). The scoreboard output in list form, for direct Pos modification.
#
# PERFORMANCE: Okay
#   Very little use cases here, and performance cost scales quadratically with input size. If you know your curve will only ever be 3 or 4 points, just use the dedicated functions.

execute store result score #math.choose.x ntils.in if data storage ntils:in math.bz.n[]
execute store result score #k ntils.z.math.bz.n.temp run scoreboard players remove #math.choose.x ntils.in 1
scoreboard players set #n ntils.z.math.bz.n.temp 0

scoreboard players set #1-t ntils.z.math.bz.n.temp 1000
scoreboard players operation #1-t ntils.z.math.bz.n.temp -= #math.bz.n.t ntils.in
scoreboard players set #t^n ntils.z.math.bz.n.temp 1000

data modify storage ntils:z math.bz.n.list set from storage ntils:in math.bz.n

execute store result score #a.x ntils.z.math.bz.n.temp store result score #math.bz.n.x ntils.out run data get storage ntils:z math.bz.n.list[0][0] 1000
execute store result score #a.y ntils.z.math.bz.n.temp store result score #math.bz.n.y ntils.out run data get storage ntils:z math.bz.n.list[0][1] 1000
execute store result score #a.z ntils.z.math.bz.n.temp store result score #math.bz.n.z ntils.out run data get storage ntils:z math.bz.n.list[0][2] 1000

data remove storage ntils:z math.bz.n.list[0]
execute if data storage ntils:z math.bz.n.list[] run function ntils:z/math/bz/n/point/main

execute store result storage ntils:out math.bz.n[0] double 0.001 run scoreboard players get #math.bz.n.x ntils.out
execute store result storage ntils:out math.bz.n[1] double 0.001 run scoreboard players get #math.bz.n.y ntils.out
execute store result storage ntils:out math.bz.n[2] double 0.001 run scoreboard players get #math.bz.n.z ntils.out