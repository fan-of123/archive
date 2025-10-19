scoreboard players operation #d.x ntils.z.math.vec.temp = #math.vec.3.x ntils.in
scoreboard players operation #d.y ntils.z.math.vec.temp = #math.vec.3.y ntils.in
scoreboard players operation #d.z ntils.z.math.vec.temp = #math.vec.3.z ntils.in

scoreboard players operation #d.x ntils.z.math.vec.temp *= #d.x ntils.z.math.vec.temp
scoreboard players operation #d.y ntils.z.math.vec.temp *= #d.y ntils.z.math.vec.temp
scoreboard players operation #d.z ntils.z.math.vec.temp *= #d.z ntils.z.math.vec.temp

scoreboard players operation #d.x ntils.z.math.vec.temp += #d.y ntils.z.math.vec.temp
execute store result score #math.sqrt ntils.in run scoreboard players operation #d.x ntils.z.math.vec.temp += #d.z ntils.z.math.vec.temp
function ntils:math/sqrt

execute store result score #math.vec.3.z ntils.out store result score #math.vec.3.y ntils.out run scoreboard players operation #math.vec.3.x ntils.out = #math.vec.SCALE ntils.in
scoreboard players operation #math.vec.3.x ntils.out *= #math.vec.3.x ntils.in
scoreboard players operation #math.vec.3.y ntils.out *= #math.vec.3.y ntils.in
scoreboard players operation #math.vec.3.z ntils.out *= #math.vec.3.z ntils.in
scoreboard players operation #math.vec.3.x ntils.out /= #math.sqrt ntils.out
scoreboard players operation #math.vec.3.y ntils.out /= #math.sqrt ntils.out
scoreboard players operation #math.vec.3.z ntils.out /= #math.sqrt ntils.out