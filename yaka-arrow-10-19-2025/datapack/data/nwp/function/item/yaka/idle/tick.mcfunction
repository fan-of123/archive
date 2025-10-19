execute if entity @s[tag=nwp.yaka.turn] run data merge entity @s {transformation:{left_rotation:{angle:0.f,axis:[1f,0f,0f]}},start_interpolation:-1,interpolation_duration:3}
tag @s remove nwp.yaka.turn

scoreboard players operation #owner nwp.temp = @s nwp.data.3

execute if entity @a[predicate=nwp:id/owner,predicate=nwp:flag/sneaking] positioned ~ ~-0.3 ~ run return run function nwp:item/yaka/despawn

execute rotated as @a[predicate=nwp:id/owner] run rotate @s ~ 0


execute as @a[predicate=nwp:id/owner] at @s anchored eyes positioned ^-0.5 ^-0.1 ^0.8 run function ntils:context/pos
execute store result score #x nwp.temp run data get storage ntils:out context.pos[0] 1000
execute store result score #y nwp.temp run data get storage ntils:out context.pos[1] 1000
execute store result score #z nwp.temp run data get storage ntils:out context.pos[2] 1000
scoreboard players operation #x nwp.temp += @s nwp.pos.x
scoreboard players operation #y nwp.temp += @s nwp.pos.y
scoreboard players operation #z nwp.temp += @s nwp.pos.z
execute store result storage nwp:s pos[0] double 0.001 store result score @s nwp.pos.x run scoreboard players operation #x nwp.temp /= #2 nwp.const
execute store result storage nwp:s pos[1] double 0.001 store result score @s nwp.pos.y run scoreboard players operation #y nwp.temp /= #2 nwp.const
execute store result storage nwp:s pos[2] double 0.001 store result score @s nwp.pos.z run scoreboard players operation #z nwp.temp /= #2 nwp.const
data modify entity @s Pos set from storage nwp:s pos

execute if entity @s[distance=0.001..] run function nwp:item/yaka/idle/trail

execute as @a[predicate=nwp:id/owner] at @s anchored eyes positioned ^ ^ ^ run function nwp:target/cone
execute unless score #target nwp.out matches 16000000.. run return run function nwp:target/clear

execute rotated as @s facing ^ ^1 ^10 run function ntils:context/vec
execute store result score @s nwp.vel.x run data get storage ntils:out context.vec[0] 225
execute store result score @s nwp.vel.y run data get storage ntils:out context.vec[1] 225
execute store result score @s nwp.vel.z run data get storage ntils:out context.vec[2] 225

execute store result score @s nwp.data.2 store result score #id nwp.temp as @e[predicate=nwp:target,limit=1] run function nwp:item/yaka/target/as
execute on passengers run scoreboard players operation @s nwp.data.0 = #0.y nwp.temp
execute on passengers run scoreboard players operation @s nwp.data.1 = #1.y nwp.temp
data modify entity @s data.nwp.tick.command set value "function nwp:item/yaka/tick"
function nwp:target/clear
execute on passengers run function nwp:item/yaka/target/rand