execute rotated ~ 0 run teleport @s ^ ^ ^1
execute store result score #1.x ntils.z.math.vec.temp store result score #1.y ntils.z.math.vec.temp store result score #1.z ntils.z.math.vec.temp run data get entity @s Pos[0] 1024
execute rotated 0 ~ run teleport @s ^ ^ ^1
execute store result score #0.x ntils.z.math.vec.temp store result score #0.y ntils.z.math.vec.temp store result score #0.z ntils.z.math.vec.temp run data get entity @s Pos[1] -1024
