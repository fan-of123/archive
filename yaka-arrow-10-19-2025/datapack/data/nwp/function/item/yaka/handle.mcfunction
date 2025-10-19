execute on passengers run function nwp:item/yaka/target with entity @s data.nwp.yaka
scoreboard players operation #math.vec.3.x ntils.in = @s nwp.vel.x
scoreboard players operation #math.vec.3.y ntils.in = @s nwp.vel.y
scoreboard players operation #math.vec.3.z ntils.in = @s nwp.vel.z
function ntils:math/vec/3/normalize

execute store result score #x nwp.temp run data get storage ntils:out context.vec[0] 1000
execute store result score #y nwp.temp run data get storage ntils:out context.vec[1] 1000
execute store result score #z nwp.temp run data get storage ntils:out context.vec[2] 1000

scoreboard players operation #x nwp.temp *= #math.vec.3.x ntils.out
scoreboard players operation #y nwp.temp *= #math.vec.3.y ntils.out
scoreboard players operation #z nwp.temp *= #math.vec.3.z ntils.out

scoreboard players operation #x nwp.temp += #y nwp.temp
scoreboard players operation #x nwp.temp += #z nwp.temp

execute if score #x nwp.temp matches ..975000 run function nwp:item/yaka/turn
#execute if score #x nwp.temp matches ..-900000 run function nwp:item/yaka/turn_nocross