# MATH/SQRT
#
#   Given a scoreboard input, calculates the integer square root of that score.
#
# INPUT:
#   > Scoreboard:
#       | #math.sqrt ntils.in
#
# OUTPUT:
#   > Scoreboard:
#       | #math.sqrt ntils.out
#
# PERFORMANCE: Excellent
#   I have no goddamn idea how this works.

execute store result score #t1 ntils.z.math.sqrt.temp store result score #t2 ntils.z.math.sqrt.temp store result score #t3 ntils.z.math.sqrt.temp store result score #t4 ntils.z.math.sqrt.temp run scoreboard players operation #math.sqrt ntils.out = #math.sqrt ntils.in
execute if score #t4 ntils.z.math.sqrt.temp matches 0..1515359 run scoreboard players operation #math.sqrt ntils.out /= #559 ntils.z.const
execute if score #t4 ntils.z.math.sqrt.temp matches 0..1515359 run scoreboard players add #math.sqrt ntils.out 15
execute if score #t4 ntils.z.math.sqrt.temp matches 1515360.. run scoreboard players operation #math.sqrt ntils.out /= #2^15 ntils.z.const
execute if score #t4 ntils.z.math.sqrt.temp matches 1515360.. run scoreboard players add #math.sqrt ntils.out 2456
scoreboard players operation #t1 ntils.z.math.sqrt.temp /= #math.sqrt ntils.out
scoreboard players operation #math.sqrt ntils.out += #t1 ntils.z.math.sqrt.temp
scoreboard players operation #math.sqrt ntils.out /= #2 ntils.z.const
scoreboard players operation #t2 ntils.z.math.sqrt.temp /= #math.sqrt ntils.out
scoreboard players operation #math.sqrt ntils.out += #t2 ntils.z.math.sqrt.temp
scoreboard players operation #math.sqrt ntils.out /= #2 ntils.z.const
scoreboard players operation #t3 ntils.z.math.sqrt.temp /= #math.sqrt ntils.out
scoreboard players operation #math.sqrt ntils.out += #t3 ntils.z.math.sqrt.temp
scoreboard players operation #math.sqrt ntils.out /= #2 ntils.z.const
scoreboard players operation #t4 ntils.z.math.sqrt.temp /= #math.sqrt ntils.out
execute if score #math.sqrt ntils.out > #t4 ntils.z.math.sqrt.temp run scoreboard players remove #math.sqrt ntils.out 1