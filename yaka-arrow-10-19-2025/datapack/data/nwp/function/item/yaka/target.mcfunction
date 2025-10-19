ride @s dismount
data modify entity @s Pos set from storage nwp:s item.yaka.target

$execute unless score $(u) nwp.data.4 matches 3 if entity @s[distance=..3.3] run scoreboard players set $(u) nwp.data.4 3
$execute if score $(u) nwp.data.4 matches 3 unless entity @s[distance=..3.3] run scoreboard players set $(u) nwp.data.4 6

$execute if entity @s[distance=..0.6] if score #id nwp.temp = #owner nwp.temp run return run function nwp:item/yaka/idle/start {u:"$(u)"}
$execute if entity @s[distance=..0.6] run scoreboard players set $(u) nwp.data.1 10
execute if entity @s[distance=..0.6] run function nwp:item/yaka/target/rand

execute facing entity @s feet run function ntils:context/vec
$ride @s mount $(u)