# MATH/VEC/3/CROSS
#
#   Performs a cross product using the two input vectors.
#
# INPUT:
#   > Scoreboard:
#       | #math.vec.3.left.[x,y,z] (3)
#       | #math.vec.3.right.[x,y,z] (3)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.vec.3.[x,y,z] (3)
#
# PERFORMANCE: Excellent

execute store result score #c.y ntils.z.math.vec.temp run scoreboard players operation #math.vec.3.z ntils.out = #math.vec.3.right.x ntils.in
execute store result score #c.z ntils.z.math.vec.temp run scoreboard players operation #math.vec.3.x ntils.out = #math.vec.3.right.y ntils.in
execute store result score #c.x ntils.z.math.vec.temp run scoreboard players operation #math.vec.3.y ntils.out = #math.vec.3.right.z ntils.in

scoreboard players operation #math.vec.3.x ntils.out *= #math.vec.3.left.z ntils.in
scoreboard players operation #math.vec.3.y ntils.out *= #math.vec.3.left.x ntils.in
scoreboard players operation #math.vec.3.z ntils.out *= #math.vec.3.left.y ntils.in

scoreboard players operation #c.x ntils.z.math.vec.temp *= #math.vec.3.left.y ntils.in
scoreboard players operation #c.y ntils.z.math.vec.temp *= #math.vec.3.left.z ntils.in
scoreboard players operation #c.z ntils.z.math.vec.temp *= #math.vec.3.left.x ntils.in

scoreboard players operation #math.vec.3.x ntils.out -= #c.x ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.y ntils.out -= #c.y ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.z ntils.out -= #c.z ntils.z.math.vec.temp

scoreboard players operation #math.vec.3.x ntils.out /= #math.vec.SCALE ntils.in
scoreboard players operation #math.vec.3.y ntils.out /= #math.vec.SCALE ntils.in
scoreboard players operation #math.vec.3.z ntils.out /= #math.vec.SCALE ntils.in