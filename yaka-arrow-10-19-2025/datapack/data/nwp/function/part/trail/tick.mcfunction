execute store result score #color.gradient.time ntils.in run scoreboard players add @s nwp.data.1 1
execute if score @s nwp.data.1 > @s nwp.data.2 run return run kill @s
execute if score @s nwp.data.1 matches 2 run function nwp:part/trail/grow
execute if score @s nwp.data.1 matches 7 run function nwp:part/trail/shrink

scoreboard players operation #color.gradient.time ntils.in *= #1000 nwp.const
scoreboard players operation #color.gradient.time ntils.in /= @s nwp.data.2

scoreboard players operation #color.gradient.start.0 ntils.in = @s nwp.pos.x
scoreboard players operation #color.gradient.start.1 ntils.in = @s nwp.pos.y
scoreboard players operation #color.gradient.start.2 ntils.in = @s nwp.pos.z

scoreboard players operation #color.gradient.end.0 ntils.in = @s nwp.vel.x
scoreboard players operation #color.gradient.end.1 ntils.in = @s nwp.vel.y
scoreboard players operation #color.gradient.end.2 ntils.in = @s nwp.vel.z

function ntils:color/gradient/smooth_out

scoreboard players operation #color.h ntils.in = #color.gradient.0 ntils.out
scoreboard players operation #color.s ntils.in = #color.gradient.1 ntils.out
scoreboard players operation #color.l ntils.in = #color.gradient.2 ntils.out

function ntils:color/hsl/rgb

scoreboard players operation #color.r ntils.out *= #2^16 nwp.const
scoreboard players operation #color.g ntils.out *= #2^8 nwp.const
scoreboard players operation #color.r ntils.out += #color.g ntils.out
scoreboard players operation #color.r ntils.out += #color.b ntils.out

item modify entity @s container.0 {function:"minecraft:set_custom_model_data",colors:{values:[{type:"minecraft:score",target:{type:"minecraft:fixed",name:"#color.r"},score:"ntils.out"}],mode:"replace_all"}}