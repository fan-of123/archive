scoreboard players operation #math.choose.x ntils.in = #l ntils.z.math.bz.n.temp
execute store result score #math.choose.y ntils.in store result score #o ntils.z.math.bz.n.temp run scoreboard players add #n ntils.z.math.bz.n.temp 1
execute store result score #c ntils.z.math.bz.n.temp run function ntils:math/choose

scoreboard players operation #math.choose.x ntils.in = #n ntils.z.math.bz.n.temp
execute store result score #s.z ntils.z.math.bz.n.temp store result score #s.y ntils.z.math.bz.n.temp run scoreboard players set #s.x ntils.z.math.bz.n.temp 0
scoreboard players set #m ntils.z.math.bz.n.temp -1
scoreboard players operation #o ntils.z.math.bz.n.temp %= #2 ntils.z.const
scoreboard players set #-1^(n-m) ntils.z.math.bz.n.temp 1
execute if score #o ntils.z.math.bz.n.temp matches 1 run scoreboard players set #-1^(n-m) ntils.z.math.bz.n.temp -1
data modify storage ntils:z math.bz.n.poly.inner set from storage ntils:z math.bz.n.poly.points
function ntils:z/math/bz/n/poly/start/inner_sum

data modify storage ntils:z math.bz.n.poly.out append value [0d,0d,0d]
execute store result storage ntils:z math.bz.n.poly.out[-1][0] double 0.001 run scoreboard players operation #s.x ntils.z.math.bz.n.temp *= #c ntils.z.math.bz.n.temp
execute store result storage ntils:z math.bz.n.poly.out[-1][1] double 0.001 run scoreboard players operation #s.y ntils.z.math.bz.n.temp *= #c ntils.z.math.bz.n.temp
execute store result storage ntils:z math.bz.n.poly.out[-1][2] double 0.001 run scoreboard players operation #s.z ntils.z.math.bz.n.temp *= #c ntils.z.math.bz.n.temp

execute if score #n ntils.z.math.bz.n.temp < #l ntils.z.math.bz.n.temp run function ntils:z/math/bz/n/poly/start/outer_sum