# YAW + PITCH QUATERNION
execute store result score #y ntils.z.math.quaternion.temp store result score #w ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.pitch[2] 46340
execute store result score #x ntils.z.math.quaternion.temp store result score #z ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.pitch[1] -46340
execute store result score #cy ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.yaw[2] 46340
execute store result score #sy ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.yaw[0] 46340

scoreboard players operation #w ntils.z.math.quaternion.temp *= #cy ntils.z.math.quaternion.temp
scoreboard players operation #x ntils.z.math.quaternion.temp *= #cy ntils.z.math.quaternion.temp
scoreboard players operation #y ntils.z.math.quaternion.temp *= #sy ntils.z.math.quaternion.temp
scoreboard players operation #z ntils.z.math.quaternion.temp *= #sy ntils.z.math.quaternion.temp

# IN-STEP SCALING
scoreboard players operation #w ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const
scoreboard players operation #x ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const
scoreboard players operation #y ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const
scoreboard players operation #z ntils.z.math.quaternion.temp /= #2^15.5 ntils.z.const

# ROLL QUATERNION
execute store result score #math.quaternion.y ntils.out store result score #d ntils.z.math.quaternion.temp store result score #a ntils.z.math.quaternion.temp store result score #c ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.roll[2] 46340
execute store result score #math.quaternion.x ntils.out store result score #math.quaternion.z ntils.out store result score #math.quaternion.w ntils.out store result score #b ntils.z.math.quaternion.temp run data get storage ntils:z math.quaternion.roll[0] 46340

scoreboard players operation #math.quaternion.w ntils.out *= #z ntils.z.math.quaternion.temp
scoreboard players operation #d ntils.z.math.quaternion.temp *= #w ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[3] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.w ntils.out += #d ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.x ntils.out *= #y ntils.z.math.quaternion.temp
scoreboard players operation #a ntils.z.math.quaternion.temp *= #x ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[0] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.x ntils.out += #a ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.y ntils.out *= #y ntils.z.math.quaternion.temp
scoreboard players operation #b ntils.z.math.quaternion.temp *= #x ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[1] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.y ntils.out -= #b ntils.z.math.quaternion.temp

scoreboard players operation #math.quaternion.z ntils.out *= #w ntils.z.math.quaternion.temp
scoreboard players operation #c ntils.z.math.quaternion.temp *= #z ntils.z.math.quaternion.temp
execute store result storage ntils:out math.quaternion[2] float 0.00000000046566128752 run scoreboard players operation #math.quaternion.z ntils.out -= #c ntils.z.math.quaternion.temp

execute unless score $ntils:math.DO_SCOREBOARD_OUTPUT ntils.API.flag matches -2147483648..2147483647 run return 0

scoreboard players operation #math.quaternion.x ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.y ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.z ntils.out /= #46340^2/1000 ntils.z.const
scoreboard players operation #math.quaternion.w ntils.out /= #46340^2/1000 ntils.z.const
