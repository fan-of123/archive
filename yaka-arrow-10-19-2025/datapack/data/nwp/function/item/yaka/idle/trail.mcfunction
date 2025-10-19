scoreboard players set #trail.0.h nwp.in 0
scoreboard players set #trail.0.s nwp.in 255
scoreboard players set #trail.0.l nwp.in 250

scoreboard players set #trail.1.h nwp.in 8
scoreboard players set #trail.1.s nwp.in 230
scoreboard players set #trail.1.l nwp.in 30

scoreboard players set #trail.duration nwp.in 50
scoreboard players set #trail.int nwp.in 200

function ntils:context/pos
execute store result score #x nwp.temp run data get storage ntils:out context.pos[0] 1000
execute store result score #y nwp.temp run data get storage ntils:out context.pos[1] 1000
execute store result score #z nwp.temp run data get storage ntils:out context.pos[2] 1000
scoreboard players operation #x nwp.temp -= @s nwp.pos.x
scoreboard players operation #y nwp.temp -= @s nwp.pos.y
scoreboard players operation #z nwp.temp -= @s nwp.pos.z
scoreboard players operation #x nwp.temp *= #x nwp.temp
scoreboard players operation #y nwp.temp *= #y nwp.temp
scoreboard players operation #z nwp.temp *= #z nwp.temp
scoreboard players operation #x nwp.temp += #y nwp.temp
scoreboard players operation #x nwp.temp += #z nwp.temp
scoreboard players operation #math.sqrt ntils.in = #x nwp.temp
function ntils:math/sqrt
scoreboard players operation #trail.length nwp.in = #math.sqrt ntils.out
execute facing entity @s feet summon item_display run function nwp:part/trail