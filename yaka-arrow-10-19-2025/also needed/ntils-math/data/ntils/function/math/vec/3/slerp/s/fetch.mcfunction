execute store result score #m ntils.z.math.vec.temp run scoreboard players operation #o ntils.z.math.vec.temp = #math.vec.3.slerp.t ntils.in
scoreboard players remove #m ntils.z.math.vec.temp 1000
execute store result storage ntils:z math.vec.3.slerp.rot[0] float 0.0000000838222967309 run scoreboard players operation #o ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.o
execute store result storage ntils:z math.vec.3.slerp.rot[1] float 0.0000000838222967309 run scoreboard players operation #m ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.o
data modify entity 00000023-0000-0000-0000-002300000000 Rotation set from storage ntils:z math.vec.3.slerp.rot
execute as 00000023-0000-0000-0000-002300000000 at @s positioned .0 0 .0 run function ntils:z/math/vec/3/slerp/as_marker

scoreboard players operation #0.x ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.0.x
scoreboard players operation #0.y ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.0.y
scoreboard players operation #0.z ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.0.z

scoreboard players operation #1.x ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.1.x
scoreboard players operation #1.y ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.1.y
scoreboard players operation #1.z ntils.z.math.vec.temp *= @s ntils.z.math.vec.3.slerp.1.z

execute store result storage ntils:out math.vec.3[0] double 0.00000000093132257462 run scoreboard players operation #0.x ntils.z.math.vec.temp += #1.x ntils.z.math.vec.temp
execute store result storage ntils:out math.vec.3[1] double 0.00000000093132257462 run scoreboard players operation #0.y ntils.z.math.vec.temp += #1.y ntils.z.math.vec.temp
execute store result storage ntils:out math.vec.3[2] double 0.00000000093132257462 run scoreboard players operation #0.z ntils.z.math.vec.temp += #1.z ntils.z.math.vec.temp