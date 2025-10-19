# MATH/VEC/3/REFLECT
#
#   Rotates the left-hand vector about the right-hand vector by the given angle.
#
# INPUT:
#   > Scoreboard:
#       | #math.vec.3.left.[x,y,z] (3)
#       | #math.vec.3.right.[x,y,z] (3)
#       | #math.vec.3.theta
#
# OUTPUT:
#   > Scoreboard:
#       | #math.vec.3.[x,y,z] (3)
#
# PERFORMANCE:

execute store result score #c.y ntils.z.math.vec.temp store result score #x ntils.z.math.vec.temp run scoreboard players operation #s.z ntils.z.math.vec.temp = #math.vec.3.right.x ntils.in
execute store result score #c.z ntils.z.math.vec.temp store result score #y ntils.z.math.vec.temp run scoreboard players operation #s.x ntils.z.math.vec.temp = #math.vec.3.right.y ntils.in
execute store result score #c.x ntils.z.math.vec.temp store result score #z ntils.z.math.vec.temp run scoreboard players operation #s.y ntils.z.math.vec.temp = #math.vec.3.right.z ntils.in

scoreboard players operation #s.x ntils.z.math.vec.temp *= #math.vec.3.left.z ntils.in
scoreboard players operation #s.y ntils.z.math.vec.temp *= #math.vec.3.left.x ntils.in
scoreboard players operation #s.z ntils.z.math.vec.temp *= #math.vec.3.left.y ntils.in

scoreboard players operation #c.x ntils.z.math.vec.temp *= #math.vec.3.left.y ntils.in
scoreboard players operation #c.y ntils.z.math.vec.temp *= #math.vec.3.left.z ntils.in
scoreboard players operation #c.z ntils.z.math.vec.temp *= #math.vec.3.left.x ntils.in

scoreboard players operation #s.x ntils.z.math.vec.temp -= #c.x ntils.z.math.vec.temp
scoreboard players operation #s.y ntils.z.math.vec.temp -= #c.y ntils.z.math.vec.temp
scoreboard players operation #s.z ntils.z.math.vec.temp -= #c.z ntils.z.math.vec.temp

scoreboard players operation #s.x ntils.z.math.vec.temp /= #1000 ntils.z.const
scoreboard players operation #s.y ntils.z.math.vec.temp /= #1000 ntils.z.const
scoreboard players operation #s.z ntils.z.math.vec.temp /= #1000 ntils.z.const

execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[0] float 0.001 run scoreboard players get #math.vec.3.theta ntils.in
execute in ntils:z/empty positioned .0 0 .0 rotated as 00000023-0000-0000-0000-002300000000 run teleport 00000023-0000-0000-0000-002300000000 ^ ^ ^1

execute store result score #c ntils.z.math.vec.temp store result score #math.vec.3.x ntils.out store result score #math.vec.3.y ntils.out store result score #math.vec.3.z ntils.out run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 1000
execute store result score #s ntils.z.math.vec.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[0] -1000

scoreboard players operation #s.x ntils.z.math.vec.temp *= #s ntils.z.math.vec.temp
scoreboard players operation #s.y ntils.z.math.vec.temp *= #s ntils.z.math.vec.temp
scoreboard players operation #s.z ntils.z.math.vec.temp *= #s ntils.z.math.vec.temp

scoreboard players operation #math.vec.3.x ntils.out *= #math.vec.3.left.x ntils.in
scoreboard players operation #math.vec.3.y ntils.out *= #math.vec.3.left.y ntils.in
scoreboard players operation #math.vec.3.z ntils.out *= #math.vec.3.left.z ntils.in

scoreboard players operation #x ntils.z.math.vec.temp *= #math.vec.3.left.x ntils.in
scoreboard players operation #y ntils.z.math.vec.temp *= #math.vec.3.left.y ntils.in
scoreboard players operation #z ntils.z.math.vec.temp *= #math.vec.3.left.z ntils.in

scoreboard players operation #x ntils.z.math.vec.temp += #y ntils.z.math.vec.temp
scoreboard players operation #x ntils.z.math.vec.temp += #z ntils.z.math.vec.temp

scoreboard players remove #c ntils.z.math.vec.temp 1000
scoreboard players operation #c ntils.z.math.vec.temp *= #x ntils.z.math.vec.temp
execute store result score #x ntils.z.math.vec.temp store result score #y ntils.z.math.vec.temp store result score #z ntils.z.math.vec.temp run scoreboard players operation #c ntils.z.math.vec.temp /= #1000 ntils.z.const
scoreboard players operation #x ntils.z.math.vec.temp *= #math.vec.3.right.x ntils.in
scoreboard players operation #y ntils.z.math.vec.temp *= #math.vec.3.right.y ntils.in
scoreboard players operation #z ntils.z.math.vec.temp *= #math.vec.3.right.z ntils.in

scoreboard players operation #math.vec.3.x ntils.out += #s.x ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.y ntils.out += #s.y ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.z ntils.out += #s.z ntils.z.math.vec.temp

scoreboard players operation #math.vec.3.x ntils.out -= #x ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.y ntils.out -= #y ntils.z.math.vec.temp
scoreboard players operation #math.vec.3.z ntils.out -= #z ntils.z.math.vec.temp

scoreboard players operation #math.vec.3.x ntils.out /= #1000 ntils.z.const
scoreboard players operation #math.vec.3.y ntils.out /= #1000 ntils.z.const
scoreboard players operation #math.vec.3.z ntils.out /= #1000 ntils.z.const