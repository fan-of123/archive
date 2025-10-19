execute if entity @e[type=!#nwp:no_hitbox,distance=..9,predicate=!nwp:id/owner] run return run execute store result score @s nwp.data.2 store result score #id nwp.temp as @n[type=!#nwp:no_hitbox,distance=..9,predicate=!nwp:id/owner] run function nwp:item/yaka/target/as

tag @a[predicate=nwp:id/owner] add nwp.this
execute as @a[predicate=nwp:id/owner] at @s anchored eyes positioned ^ ^ ^ run function nwp:target/cone
tag @a remove nwp.this

execute if score #target nwp.out matches 16000000.. store result score @s nwp.data.2 store result score #id nwp.temp as @e[predicate=nwp:target,limit=1] run function nwp:item/yaka/target/as
execute if score #target nwp.out matches 16000000.. if entity @e[predicate=nwp:target,limit=1] run return run function nwp:target/clear
function nwp:target/clear

function nwp:item/yaka/target/owner