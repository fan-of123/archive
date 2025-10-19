# MATH/VEC/3/REFLECT
#
#   Reflects the left-hand vector through the right-hand vector.
#   NOTE: For the sake of performance, both vectors are assumed to be UNIT LENGTH.
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
# PERFORMANCE:

scoreboard players operation #d.x ntils.z.math.vec.temp = #math.vec.3.right.x ntils.in
scoreboard players operation #d.y ntils.z.math.vec.temp = #math.vec.3.right.y ntils.in
scoreboard players operation #d.z ntils.z.math.vec.temp = #math.vec.3.right.z ntils.in

scoreboard players operation #d.x ntils.z.math.vec.temp *= #math.vec.3.left.x ntils.in
scoreboard players operation #d.y ntils.z.math.vec.temp *= #math.vec.3.left.y ntils.in
scoreboard players operation #d.z ntils.z.math.vec.temp *= #math.vec.3.left.z ntils.in

scoreboard players operation #d.x ntils.z.math.vec.temp += #d.y ntils.z.math.vec.temp
scoreboard players operation #d.x ntils.z.math.vec.temp += #d.z ntils.z.math.vec.temp
execute store result score #math.vec.3.z ntils.out store result score #math.vec.3.y ntils.out store result score #math.vec.3.x ntils.out run scoreboard players operation #d.x ntils.z.math.vec.temp /= #-500 ntils.z.const

scoreboard players operation #math.vec.3.x ntils.out *= #math.vec.3.right.x ntils.in
scoreboard players operation #math.vec.3.y ntils.out *= #math.vec.3.right.y ntils.in
scoreboard players operation #math.vec.3.z ntils.out *= #math.vec.3.right.z ntils.in

scoreboard players operation #math.vec.3.x ntils.out /= #1000 ntils.z.const
scoreboard players operation #math.vec.3.y ntils.out /= #1000 ntils.z.const
scoreboard players operation #math.vec.3.z ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.vec.3.x ntils.out += #math.vec.3.left.x ntils.in
scoreboard players operation #math.vec.3.y ntils.out += #math.vec.3.left.y ntils.in
scoreboard players operation #math.vec.3.z ntils.out += #math.vec.3.left.z ntils.in
