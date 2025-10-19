summon item ~ ~ ~ {PickupDelay:4,Item:{id:"minecraft:stone",count:1},Tags:["nwd.temp"],Motion:[0d,.2d,0d]}
execute as @a[predicate=nwp:id/owner] run function ntils:uuid/get_int
data modify entity @e[type=item,dx=0,tag=nwd.temp,limit=1] Owner set from storage ntils:out uuid.get_int
loot replace entity @e[type=item,dx=0,tag=nwd.temp] contents loot nwp:item/yaka
tag @e[type=item,dx=0] remove nwd.temp

execute on passengers run kill @s
kill @s