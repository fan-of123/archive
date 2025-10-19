data modify storage ntils:in math.quaternion.multiply.left set from storage ntils:in math.quaternion.slerp.end
data modify storage ntils:in math.quaternion.multiply.right set from storage ntils:in math.quaternion.slerp.start
execute store result storage ntils:in math.quaternion.multiply.right[0] float 0.000000001 run data get storage ntils:in math.quaternion.multiply.right[0] -1000000000
execute store result storage ntils:in math.quaternion.multiply.right[1] float 0.000000001 run data get storage ntils:in math.quaternion.multiply.right[1] -1000000000
execute store result storage ntils:in math.quaternion.multiply.right[2] float 0.000000001 run data get storage ntils:in math.quaternion.multiply.right[2] -1000000000

execute store result score @s ntils.z.math.quaternion.slerp.q.x run data get storage ntils:in math.quaternion.slerp.start[0] 46340
execute store result score @s ntils.z.math.quaternion.slerp.q.y run data get storage ntils:in math.quaternion.slerp.start[1] 46340
execute store result score @s ntils.z.math.quaternion.slerp.q.z run data get storage ntils:in math.quaternion.slerp.start[2] 46340
execute store result score @s ntils.z.math.quaternion.slerp.q.w run data get storage ntils:in math.quaternion.slerp.start[3] 46340

function ntils:math/quaternion/multiply

execute store result score @s ntils.z.math.quaternion.slerp.x run data get storage ntils:out math.quaternion[0] 2147395600
execute store result score @s ntils.z.math.quaternion.slerp.y run data get storage ntils:out math.quaternion[1] 2147395600
execute store result score @s ntils.z.math.quaternion.slerp.z run data get storage ntils:out math.quaternion[2] 2147395600
execute store result score #x ntils.z.math.quaternion.temp run data get storage ntils:out math.quaternion[3] 2147395600

#execute if score #x ntils.z.math.quaternion.temp matches ..-1 run scoreboard players operation @s ntils.z.math.quaternion.slerp.q.x *= #-1 ntils.z.const
#execute if score #x ntils.z.math.quaternion.temp matches ..-1 run scoreboard players operation @s ntils.z.math.quaternion.slerp.q.y *= #-1 ntils.z.const
#execute if score #x ntils.z.math.quaternion.temp matches ..-1 run scoreboard players operation @s ntils.z.math.quaternion.slerp.q.z *= #-1 ntils.z.const
#execute if score #x ntils.z.math.quaternion.temp matches ..-1 run scoreboard players operation @s ntils.z.math.quaternion.slerp.q.w *= #-1 ntils.z.const

#   > Scaling
execute store result storage ntils:z math.quaternion.slerp.pos[2] double 0.0000215796288304 run scoreboard players operation #x ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const

# ARCCOS
scoreboard players set #math.sqrt ntils.in 2147395600
scoreboard players operation #x ntils.z.math.quaternion.temp *= #x ntils.z.math.quaternion.temp
scoreboard players operation #math.sqrt ntils.in -= #x ntils.z.math.quaternion.temp

function ntils:math/sqrt

execute store result storage ntils:z math.quaternion.slerp.pos[0] double 0.0000215796288304 run scoreboard players get #math.sqrt ntils.out
data modify entity 00000023-0000-0000-0000-002300000000 Pos set from storage ntils:z math.quaternion.slerp.pos
execute positioned .0 0 .0 facing entity 00000023-0000-0000-0000-002300000000 feet run rotate 00000023-0000-0000-0000-002300000000 ~ ~
execute store result score @s ntils.z.math.quaternion.slerp.o run data get entity 00000023-0000-0000-0000-002300000000 Rotation[0] 11929

#   > Scaling
scoreboard players operation @s ntils.z.math.quaternion.slerp.x /= #math.sqrt ntils.out
scoreboard players operation @s ntils.z.math.quaternion.slerp.y /= #math.sqrt ntils.out
scoreboard players operation @s ntils.z.math.quaternion.slerp.z /= #math.sqrt ntils.out

# generate backend