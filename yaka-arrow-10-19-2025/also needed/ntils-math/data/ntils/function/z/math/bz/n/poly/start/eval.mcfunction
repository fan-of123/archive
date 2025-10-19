data modify storage ntils:z math.bz.n.poly.out set value []

execute store result score #math.bz.n.x ntils.out store result score #poly.x ntils.z.math.bz.n.temp run data get storage ntils:in math.bz.n[0][0] 1000
execute store result score #math.bz.n.y ntils.out store result score #poly.y ntils.z.math.bz.n.temp run data get storage ntils:in math.bz.n[0][1] 1000
execute store result score #math.bz.n.z ntils.out store result score #poly.z ntils.z.math.bz.n.temp run data get storage ntils:in math.bz.n[0][2] 1000

data modify storage ntils:z math.bz.n.poly.points set from storage ntils:in math.bz.n
data remove storage ntils:z math.bz.n.poly.points[0]

execute store result score #l ntils.z.math.bz.n.temp if data storage ntils:z math.bz.n.poly.points[]
scoreboard players remove #l ntils.z.math.bz.n.temp 1
scoreboard players set #n ntils.z.math.bz.n.temp -1

execute if score #n ntils.z.math.bz.n.temp < #l ntils.z.math.bz.n.temp run function ntils:z/math/bz/n/poly/start/outer_sum