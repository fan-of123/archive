execute store result score @s nwp.pos.x run random value -333..333
execute store result score @s nwp.pos.z run random value -333..333

execute store result score @s nwp.pos.y run random value 0..999999
scoreboard players operation @s nwp.pos.y %= @s nwp.data.0
scoreboard players operation @s nwp.pos.y += @s nwp.data.1