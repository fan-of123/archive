scoreboard players operation @s nwp.data.2 = #owner nwp.temp
scoreboard players operation #id nwp.temp = #owner nwp.temp
execute as @a[predicate=nwp:id/owner] at @s positioned .0 0 .0 rotated ~ 0 anchored eyes positioned ^-0.5 ^-0.1 ^0.8 run function ntils:context/pos
execute on passengers store result score @s nwp.pos.x run data get storage ntils:out context.pos[0] 1000
execute on passengers store result score @s nwp.pos.y run data get storage ntils:out context.pos[1] 1000
execute on passengers store result score @s nwp.pos.z run data get storage ntils:out context.pos[2] 1000