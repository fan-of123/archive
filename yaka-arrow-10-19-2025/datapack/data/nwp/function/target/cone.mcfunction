function ntils:context/vec
execute store result score #t.x nwp.temp run data get storage ntils:out context.vec[0] 4096
execute store result score #t.y nwp.temp run data get storage ntils:out context.vec[1] 4096
execute store result score #t.z nwp.temp run data get storage ntils:out context.vec[2] 4096

tag @s add nwp.this
execute positioned ^ ^ ^150 positioned ~-150 ~-150 ~-150 as @e[type=!#nwp:no_hitbox,tag=!nwp.ignore,tag=!nwp.this,dx=300,dy=300,dz=300] positioned ~150 ~150 ~150 positioned ^ ^ ^-150 facing entity @s eyes run function nwp:target/vec
tag @s remove nwp.this
scoreboard players set #target nwp.out -2147483648
scoreboard players operation #target nwp.out > @e[scores={nwp.target=-2147483648..}] nwp.target