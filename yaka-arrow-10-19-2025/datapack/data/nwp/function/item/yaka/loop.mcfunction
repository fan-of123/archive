function nwp:item/yaka/logic
scoreboard players remove #l nwp.temp 1
execute if score #l nwp.temp matches 1.. at @s run function nwp:item/yaka/loop