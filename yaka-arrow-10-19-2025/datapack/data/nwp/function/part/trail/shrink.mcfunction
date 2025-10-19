execute store result storage nwp:s part.trail.shrink.transformation.scale[2] float 0.001 run scoreboard players get @s nwp.data.0
execute store result storage nwp:s part.trail.shrink.interpolation_duration int 1 run scoreboard players get @s nwp.data.3
data modify entity @s {} merge from storage nwp:s part.trail.shrink