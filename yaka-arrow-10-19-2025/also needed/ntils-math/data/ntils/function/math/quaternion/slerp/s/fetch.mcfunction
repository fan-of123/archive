scoreboard players operation #c ntils.z.math.quaternion.temp = #math.quaternion.slerp.t ntils.in
execute store result entity 00000023-0000-0000-0000-002300000000 Rotation[0] float 0.0000000838293234974 run scoreboard players operation #c ntils.z.math.quaternion.temp *= @s ntils.z.math.quaternion.slerp.o
execute as 00000023-0000-0000-0000-002300000000 at @s positioned .0 0 .0 rotated ~ 0 run teleport @s ^ ^ ^1
execute store result score #x ntils.z.math.quaternion.temp store result score #y ntils.z.math.quaternion.temp store result score #z ntils.z.math.quaternion.temp run data get entity 00000023-0000-0000-0000-002300000000 Pos[0] 46340

execute store result storage ntils:in math.quaternion.multiply.left[0] float 0.000000000465680380458 run scoreboard players operation #x ntils.z.math.quaternion.temp *= @s ntils.z.math.quaternion.slerp.x
execute store result storage ntils:in math.quaternion.multiply.left[1] float 0.000000000465680380458 run scoreboard players operation #y ntils.z.math.quaternion.temp *= @s ntils.z.math.quaternion.slerp.y
execute store result storage ntils:in math.quaternion.multiply.left[2] float 0.000000000465680380458 run scoreboard players operation #z ntils.z.math.quaternion.temp *= @s ntils.z.math.quaternion.slerp.z
execute store result storage ntils:in math.quaternion.multiply.left[3] float 0.0000215796288304 run data get entity 00000023-0000-0000-0000-002300000000 Pos[2] 46340

execute store result storage ntils:in math.quaternion.multiply.right[0] float 0.0000215796288304 run scoreboard players get @s ntils.z.math.quaternion.slerp.q.x
execute store result storage ntils:in math.quaternion.multiply.right[1] float 0.0000215796288304 run scoreboard players get @s ntils.z.math.quaternion.slerp.q.y
execute store result storage ntils:in math.quaternion.multiply.right[2] float 0.0000215796288304 run scoreboard players get @s ntils.z.math.quaternion.slerp.q.z
execute store result storage ntils:in math.quaternion.multiply.right[3] float 0.0000215796288304 run scoreboard players get @s ntils.z.math.quaternion.slerp.q.w

function ntils:math/quaternion/multiply