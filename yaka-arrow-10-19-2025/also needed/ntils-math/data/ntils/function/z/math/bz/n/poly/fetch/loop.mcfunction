scoreboard players operation #math.bz.n.x ntils.out *= #math.bz.n.t ntils.in
scoreboard players operation #math.bz.n.x ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.n.y ntils.out *= #math.bz.n.t ntils.in
scoreboard players operation #math.bz.n.y ntils.out /= #1000 ntils.z.const

scoreboard players operation #math.bz.n.z ntils.out *= #math.bz.n.t ntils.in
scoreboard players operation #math.bz.n.z ntils.out /= #1000 ntils.z.const

data remove storage ntils:z math.bz.n.poly.f.t[-1]
execute unless data storage ntils:z math.bz.n.poly.f.t[] run return 1

execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][0] 1000
scoreboard players operation #math.bz.n.x ntils.out += #a ntils.z.math.bz.n.temp

execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][1] 1000
scoreboard players operation #math.bz.n.y ntils.out += #a ntils.z.math.bz.n.temp

execute store result score #a ntils.z.math.bz.n.temp run data get storage ntils:z math.bz.n.poly.f.t[-1][2] 1000
scoreboard players operation #math.bz.n.z ntils.out += #a ntils.z.math.bz.n.temp
function ntils:z/math/bz/n/poly/fetch/loop