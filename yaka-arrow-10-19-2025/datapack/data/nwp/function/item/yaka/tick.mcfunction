#scoreboard players set #trail.0.h nwp.in 255
#scoreboard players set #trail.0.s nwp.in 255
#scoreboard players set #trail.0.l nwp.in 255

#scoreboard players set #trail.1.h nwp.in 240
#scoreboard players set #trail.1.s nwp.in 230
#scoreboard players set #trail.1.l nwp.in 50

scoreboard players set #trail.0.h nwp.in 0
scoreboard players set #trail.0.s nwp.in 255
scoreboard players set #trail.0.l nwp.in 250

scoreboard players set #trail.1.h nwp.in 8
scoreboard players set #trail.1.s nwp.in 230
scoreboard players set #trail.1.l nwp.in 30

scoreboard players set #trail.length nwp.in 225
scoreboard players set #trail.duration nwp.in 50
scoreboard players set #trail.int nwp.in 200

scoreboard players operation #id nwp.temp = @s nwp.data.2
scoreboard players operation #owner nwp.temp = @s nwp.data.3

execute unless score #owner nwp.temp = #id nwp.temp if entity @a[predicate=nwp:id/owner,scores={nwp.sneak=1}] run function nwp:item/yaka/target/owner

execute as @e[predicate=nwp:id/match] at @s run function ntils:context/pos
execute store result score #x nwp.temp run data get storage ntils:out context.pos[0] 1000
execute store result score #y nwp.temp run data get storage ntils:out context.pos[1] 1000
execute store result score #z nwp.temp run data get storage ntils:out context.pos[2] 1000

execute on passengers store result storage nwp:s item.yaka.target[0] double 0.001 run scoreboard players operation #x nwp.temp += @s nwp.pos.x
execute on passengers store result storage nwp:s item.yaka.target[1] double 0.001 run scoreboard players operation #y nwp.temp += @s nwp.pos.y
execute on passengers store result storage nwp:s item.yaka.target[2] double 0.001 run scoreboard players operation #z nwp.temp += @s nwp.pos.z

scoreboard players operation #l nwp.temp = @s nwp.data.4
function nwp:item/yaka/loop

execute if score #l nwp.temp matches 0 facing entity @s feet run rotate @s ~ ~