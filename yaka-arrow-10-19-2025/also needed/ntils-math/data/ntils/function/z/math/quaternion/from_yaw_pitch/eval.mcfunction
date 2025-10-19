execute store result score #math.quaternion.y ntils.out store result score #math.quaternion.w ntils.out run data get storage ntils:z math.quaternion.pitch[2] 46340
execute store result score #math.quaternion.x ntils.out store result score #math.quaternion.z ntils.out run data get storage ntils:z math.quaternion.pitch[1] 46340
execute store result score #cy ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.yaw[2] 46340
execute store result score #sy ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.yaw[0] 46340

execute store result storage ntils:out math.quaternion[3] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.w ntils.out *= #cy ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[2] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.z ntils.out *= #sy ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[1] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.y ntils.out *= #sy ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[0] float -0.00000000046566128752 run scoreboard players operation #math.quaternion.x ntils.out *= #cy ntils.z.math.quaternion.temp

execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.x ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.y ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.z ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.w ntils.out /= #46340^2/1000 ntils.z.const
