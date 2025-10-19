execute rotated ~ 0 run teleport @s ^ ^ ^1
data modify storage ntils:z math.quaternion.yaw set from entity @s Pos

execute rotated 0 ~ run teleport @s ^ ^ ^1
data modify storage ntils:z math.quaternion.pitch set from entity @s Pos

execute store result entity @s Rotation[0] float 0.0005 run scoreboard players get #math.quaternion.roll ntils.in
execute rotated as @s rotated ~ 0 run teleport @s ^ ^ ^1
data modify storage ntils:z math.quaternion.roll set from entity @s Pos