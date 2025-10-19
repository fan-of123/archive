execute rotated ~ 0 positioned ^ ^ ^1 facing .0 0 .0 positioned .0 0 .0 run teleport @s ^ ^ ^-1
execute store result score #sy ntils.z.math.quaternion.temp run data get entity @s Pos[0] 46340
execute store result score #cy ntils.z.math.quaternion.temp run data get entity @s Pos[2] 46340


execute rotated 0 ~ positioned ^ ^ ^1 facing .0 0 .0 positioned .0 0 .0 run teleport @s ^ ^ ^-1
execute store result score #math.quaternion.y ntils.out store result score #math.quaternion.w ntils.out run data get entity @s Pos[2] 46340
execute store result score #math.quaternion.x ntils.out store result score #math.quaternion.z ntils.out run data get entity @s Pos[1] 46340