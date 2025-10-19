function nwp:item/yaka/target/new

execute on passengers run scoreboard players operation @s nwp.data.0 = #0.y nwp.temp
execute on passengers run scoreboard players operation @s nwp.data.1 = #1.y nwp.temp

execute unless score #owner nwp.temp = #id nwp.temp on passengers run function nwp:item/yaka/target/rand

execute as @e[predicate=nwp:id/match] at @s anchored eyes positioned ^ ^ ^ run function ntils:context/pos
execute store result score #x nwp.temp run data get storage ntils:out context.pos[0] 1000
execute store result score #y nwp.temp run data get storage ntils:out context.pos[1] 1000
execute store result score #z nwp.temp run data get storage ntils:out context.pos[2] 1000

execute on passengers store result storage nwp:s item.yaka.target[0] double 0.001 run scoreboard players operation #x nwp.temp += @s nwp.pos.x
execute on passengers store result storage nwp:s item.yaka.target[1] double 0.001 run scoreboard players operation #y nwp.temp += @s nwp.pos.y
execute on passengers store result storage nwp:s item.yaka.target[2] double 0.001 run scoreboard players operation #z nwp.temp += @s nwp.pos.z