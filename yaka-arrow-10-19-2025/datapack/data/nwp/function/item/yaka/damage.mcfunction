execute store result score #d nwp.temp run damage @s 11 arrow
execute if score #d nwp.temp matches 0 run return fail

particle block{block_state:{Name:"redstone_block"}} ~ ~ ~ 0 0 0 0 9 force
particle lava ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.hurt player @a[distance=..35] ~ ~ ~ 0.6 1 0.6
playsound minecraft:item.firecharge.use player @a[distance=..35] ~ ~ ~ 0.6 1.8 0.6
playsound minecraft:item.firecharge.use player @a[distance=..35] ~ ~ ~ 0.3 0 0.3
playsound nwp:yaka.hit player @a[distance=..35] ~ ~ ~ 0.6 0.7 0.6