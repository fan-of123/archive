scoreboard players set #math.vec.3.theta ntils.in 19500
function ntils:math/vec/3/rotate

scoreboard players operation #math.vec.3.x ntils.in = #math.vec.3.x ntils.out
scoreboard players operation #math.vec.3.y ntils.in = #math.vec.3.y ntils.out
scoreboard players operation #math.vec.3.z ntils.in = #math.vec.3.z ntils.out

function ntils:math/vec/3/normalize

scoreboard players operation #math.vec.3.x ntils.out *= @s nwp.data.0
scoreboard players operation #math.vec.3.y ntils.out *= @s nwp.data.0
scoreboard players operation #math.vec.3.z ntils.out *= @s nwp.data.0

scoreboard players operation #math.vec.3.x ntils.out /= #1000 nwp.const
scoreboard players operation #math.vec.3.y ntils.out /= #1000 nwp.const
scoreboard players operation #math.vec.3.z ntils.out /= #1000 nwp.const

scoreboard players operation @s nwp.vel.x = #math.vec.3.x ntils.out
scoreboard players operation @s nwp.vel.y = #math.vec.3.y ntils.out
scoreboard players operation @s nwp.vel.z = #math.vec.3.z ntils.out