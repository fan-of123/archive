function ntils:context/vec
execute store result score @s nwp.target run data get storage ntils:out context.vec[0] 4096
execute store result score #y nwp.temp run data get storage ntils:out context.vec[1] 4096
execute store result score #z nwp.temp run data get storage ntils:out context.vec[2] 4096
scoreboard players operation @s nwp.target *= #t.x nwp.temp
scoreboard players operation #y nwp.temp *= #t.y nwp.temp
scoreboard players operation #z nwp.temp *= #t.z nwp.temp
scoreboard players operation @s nwp.target += #y nwp.temp
scoreboard players operation @s nwp.target += #z nwp.temp