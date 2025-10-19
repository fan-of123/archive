scoreboard players set #math.quaternion.roll ntils.in 45000
function ntils:math/quaternion/from_context_roll
data modify storage nwp:s part.trail.new.transformation.left_rotation set from storage ntils:out math.quaternion
execute store result storage nwp:s part.trail.new.transformation.scale[2] float 0.001 store result score @s nwp.data.0 run scoreboard players get #trail.length nwp.in
scoreboard players operation @s nwp.data.2 = #trail.duration nwp.in
scoreboard players operation @s nwp.data.3 = #trail.int nwp.in

execute store result score #color.h ntils.in run scoreboard players operation @s nwp.pos.x = #trail.0.h nwp.in
execute store result score #color.s ntils.in run scoreboard players operation @s nwp.pos.y = #trail.0.s nwp.in
execute store result score #color.l ntils.in run scoreboard players operation @s nwp.pos.z = #trail.0.l nwp.in
scoreboard players operation @s nwp.vel.x = #trail.1.h nwp.in
scoreboard players operation @s nwp.vel.y = #trail.1.s nwp.in
scoreboard players operation @s nwp.vel.z = #trail.1.l nwp.in

function ntils:color/hsl/rgb

scoreboard players operation #color.r ntils.out *= #2^16 nwp.const
scoreboard players operation #color.g ntils.out *= #2^8 nwp.const
scoreboard players operation #color.r ntils.out += #color.g ntils.out
execute store result storage nwp:s part.trail.new.item.components."minecraft:custom_model_data".colors[0] int 1 run scoreboard players operation #color.r ntils.out += #color.b ntils.out

data modify entity @s {} merge from storage nwp:s part.trail.new