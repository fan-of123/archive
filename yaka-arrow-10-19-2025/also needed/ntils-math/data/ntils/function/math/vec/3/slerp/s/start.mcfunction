execute store result score #d.x ntils.z.math.vec.temp store result score #s.x ntils.z.math.vec.temp run data get storage ntils:in math.vec.3.slerp.start[0] 1024
execute store result score #d.y ntils.z.math.vec.temp store result score #s.y ntils.z.math.vec.temp run data get storage ntils:in math.vec.3.slerp.start[1] 1024
execute store result score #d.z ntils.z.math.vec.temp store result score #s.z ntils.z.math.vec.temp run data get storage ntils:in math.vec.3.slerp.start[2] 1024

execute store result score #h.x ntils.z.math.vec.temp run data get storage ntils:in math.vec.3.slerp.end[0] 1024
execute store result score #h.y ntils.z.math.vec.temp run data get storage ntils:in math.vec.3.slerp.end[1] 1024
execute store result score #h.z ntils.z.math.vec.temp run data get storage ntils:in math.vec.3.slerp.end[2] 1024

scoreboard players operation #d.x ntils.z.math.vec.temp *= #h.x ntils.z.math.vec.temp
scoreboard players operation #d.y ntils.z.math.vec.temp *= #h.y ntils.z.math.vec.temp
scoreboard players operation #d.z ntils.z.math.vec.temp *= #h.z ntils.z.math.vec.temp

scoreboard players operation #d.x ntils.z.math.vec.temp += #d.y ntils.z.math.vec.temp
execute store result storage ntils:z math.vec.3.slerp.pos[2] double 0.00000095367431641 run scoreboard players operation #d.x ntils.z.math.vec.temp += #d.z ntils.z.math.vec.temp

scoreboard players set #math.sqrt ntils.in 1048576
scoreboard players operation #math.sqrt ntils.in -= #d.x ntils.z.math.vec.temp
function ntils:math/sqrt
execute store result storage ntils:z math.vec.3.slerp.pos[0] double 0.0009765625 run scoreboard players get #math.sqrt ntils.out

scoreboard players set @s ntils.z.math.vec.3.slerp.0.x 1048576
execute store result score @s ntils.z.math.vec.3.slerp.1.z store result score @s ntils.z.math.vec.3.slerp.1.y store result score @s ntils.z.math.vec.3.slerp.1.x store result score @s ntils.z.math.vec.3.slerp.0.z store result score @s ntils.z.math.vec.3.slerp.0.y run scoreboard players operation @s ntils.z.math.vec.3.slerp.0.x /= #math.sqrt ntils.out

scoreboard players operation @s ntils.z.math.vec.3.slerp.0.x *= #s.x ntils.z.math.vec.temp
scoreboard players operation @s ntils.z.math.vec.3.slerp.0.y *= #s.y ntils.z.math.vec.temp
scoreboard players operation @s ntils.z.math.vec.3.slerp.0.z *= #s.z ntils.z.math.vec.temp

scoreboard players operation @s ntils.z.math.vec.3.slerp.1.x *= #h.x ntils.z.math.vec.temp
scoreboard players operation @s ntils.z.math.vec.3.slerp.1.y *= #h.y ntils.z.math.vec.temp
scoreboard players operation @s ntils.z.math.vec.3.slerp.1.z *= #h.z ntils.z.math.vec.temp

data modify entity 00000023-0000-0000-0000-002300000000 Pos set from storage ntils:z math.vec.3.slerp.pos
execute as 00000023-0000-0000-0000-002300000000 at @s facing .0 0 .0 run rotate @s facing ^ ^ ^-1
execute store result score @s ntils.z.math.vec.3.slerp.o run data get entity 00000023-0000-0000-0000-002300000000 Rotation[0] 11930