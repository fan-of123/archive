execute unless score @s nwp.data.1 matches 1.. run function nwp:item/yaka/handle
scoreboard players remove @s nwp.data.1 1

execute store result storage nwp:s pos[0] double 0.001 run scoreboard players operation @s nwp.pos.x += @s nwp.vel.x
execute store result storage nwp:s pos[1] double 0.001 run scoreboard players operation @s nwp.pos.y += @s nwp.vel.y
execute store result storage nwp:s pos[2] double 0.001 run scoreboard players operation @s nwp.pos.z += @s nwp.vel.z

data modify entity @s Pos set from storage nwp:s pos

execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,dy=0,dz=0,type=!#nwp:no_hitbox,predicate=!nwp:id/owner] positioned ~-.9 ~-.9 ~-.9 if entity @s[dx=0,dy=0,dz=0] positioned ~.95 ~.95 ~.95 run function nwp:item/yaka/damage
execute unless entity @e[predicate=nwp:id/match] run function nwp:item/yaka/target/logic

execute facing entity @s feet summon item_display run function nwp:part/trail