execute store result score #math.vec.3.left.x ntils.in run data get storage ntils:out context.vec[0] 1000
execute store result score #math.vec.3.left.y ntils.in run data get storage ntils:out context.vec[1] 1000
execute store result score #math.vec.3.left.z ntils.in run data get storage ntils:out context.vec[2] 1000

scoreboard players operation #math.vec.3.right.x ntils.in = #math.vec.3.x ntils.out
scoreboard players operation #math.vec.3.right.y ntils.in = #math.vec.3.y ntils.out
scoreboard players operation #math.vec.3.right.z ntils.in = #math.vec.3.z ntils.out

scoreboard players set #math.vec.SCALE ntils.in 22
function ntils:math/vec/3/cross
scoreboard players set #math.vec.SCALE ntils.in 1000

scoreboard players operation #math.vec.3.x ntils.in = #math.vec.3.x ntils.out
scoreboard players operation #math.vec.3.y ntils.in = #math.vec.3.y ntils.out
scoreboard players operation #math.vec.3.z ntils.in = #math.vec.3.z ntils.out

function ntils:math/vec/3/normalize

scoreboard players operation #math.vec.3.left.x ntils.in = @s nwp.vel.x
scoreboard players operation #math.vec.3.left.y ntils.in = @s nwp.vel.y
scoreboard players operation #math.vec.3.left.z ntils.in = @s nwp.vel.z

scoreboard players operation #math.vec.3.right.x ntils.in = #math.vec.3.x ntils.out
scoreboard players operation #math.vec.3.right.y ntils.in = #math.vec.3.y ntils.out
scoreboard players operation #math.vec.3.right.z ntils.in = #math.vec.3.z ntils.out

function nwp:item/yaka/rotate