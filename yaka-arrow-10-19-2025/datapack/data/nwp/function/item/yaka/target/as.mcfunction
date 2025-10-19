function ntils:context/pos
execute store result score #0.y nwp.temp run data get storage ntils:out context.pos[1] 1000
execute anchored eyes positioned ^ ^ ^ run function ntils:context/pos
execute store result score #1.y nwp.temp run data get storage ntils:out context.pos[1] 1000
scoreboard players operation #1.y nwp.temp -= #0.y nwp.temp
execute store result score #0.y nwp.temp run scoreboard players operation #1.y nwp.temp /= #2 nwp.const
scoreboard players operation #0.y nwp.temp /= #2 nwp.const
return run function nwp:utils/get_id