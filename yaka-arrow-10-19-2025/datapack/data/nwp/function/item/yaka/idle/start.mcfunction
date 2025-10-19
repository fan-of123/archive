scoreboard players set #l nwp.temp -1
$ride @s mount $(u)
execute on vehicle run data modify entity @s data.nwp.tick.command set value "function nwp:item/yaka/idle/tick"
function ntils:context/pos
execute on vehicle store result score @s nwp.pos.x run data get storage ntils:out context.pos[0] 1000
execute on vehicle store result score @s nwp.pos.y run data get storage ntils:out context.pos[1] 1000
execute on vehicle store result score @s nwp.pos.z run data get storage ntils:out context.pos[2] 1000