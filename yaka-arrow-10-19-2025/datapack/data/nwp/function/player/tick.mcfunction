execute if score @s nwp.click matches 1.. run function nwp:item/click
execute if score @s nwp.sneak matches 1.. unless predicate nwp:flag/sneaking run scoreboard players set @s nwp.sneak 0