tag @s add nwp.owner
execute at @s anchored eyes positioned ^ ^ ^ run function nwp:target/cone
execute at @s anchored eyes positioned ^-1 ^ ^ run function nwp:item/yaka/new
function nwp:target/clear
tag @s remove nwp.owner