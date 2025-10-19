# MATH/BZ/4/LEN
#
#   Approximates the length of a cubic bezier curve using Simpson's 3/8ths rule.
#
#   NOTE: the error this approximation depends heavily on the scale of the
#   curve and how "curvy" it is. Very swoopy curves can be off by as much as a
#   factor of 10%, though the true error is generally much lower than this.
#
# INPUT:
#   > Scoreboard:
#       | #math.bz.4.in.a.[x,y,z] (3)
#       | #math.bz.4.in.b.[x,y,z] (3)
#       | #math.bz.4.in.c.[x,y,z] (3)
#       | #math.bz.4.in.d.[x,y,z] (3)
#
# OUTPUT:
#   > Scoreboard:
#       | #math.bz.4.len  <- The curve length, scaled by 100
#
# PERFORMANCE: Okay
#   Lots of square roots needed for this, making it quite slow relative to the other bezier
#   functions, with the exceptions of bz/4/c/through and bz/4/i/(f|s)/start.

scoreboard players operation #o ntils.z.math.bz.4.temp = #math.sqrt ntils.in

# Evaluate T=0 term ----------------------------------------------------------------------------------------------- #
scoreboard players operation #math.sqrt ntils.in = #math.bz.4.b.x ntils.in
scoreboard players operation #math.sqrt ntils.in -= #math.bz.4.a.x ntils.in

scoreboard players operation #y ntils.z.math.bz.4.temp = #math.bz.4.b.y ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp -= #math.bz.4.a.y ntils.in

scoreboard players operation #z ntils.z.math.bz.4.temp = #math.bz.4.b.z ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp -= #math.bz.4.a.z ntils.in

scoreboard players operation #math.sqrt ntils.in /= #10 ntils.z.const
scoreboard players operation #y ntils.z.math.bz.4.temp /= #10 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #10 ntils.z.const

scoreboard players operation #math.sqrt ntils.in *= #math.sqrt ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp *= #y ntils.z.math.bz.4.temp
scoreboard players operation #z ntils.z.math.bz.4.temp *= #z ntils.z.math.bz.4.temp

scoreboard players operation #math.sqrt ntils.in += #y ntils.z.math.bz.4.temp
scoreboard players operation #math.sqrt ntils.in += #z ntils.z.math.bz.4.temp
function ntils:math/sqrt
scoreboard players operation #math.bz.4.len ntils.out = #math.sqrt ntils.out
scoreboard players operation #math.bz.4.len ntils.out *= #3 ntils.z.const

# Evaluate T=1/3 term --------------------------------------------------------------------------------------------- #
execute store result score #math.sqrt ntils.in store result score #y ntils.z.math.bz.4.temp run scoreboard players set #z ntils.z.math.bz.4.temp 3
execute store result score #i ntils.z.math.bz.4.temp store result score #j ntils.z.math.bz.4.temp run scoreboard players set #k ntils.z.math.bz.4.temp 4

scoreboard players operation #math.sqrt ntils.in *= #math.bz.4.c.x ntils.in
scoreboard players operation #math.sqrt ntils.in += #math.bz.4.d.x ntils.in

scoreboard players operation #i ntils.z.math.bz.4.temp *= #math.bz.4.a.x ntils.in
scoreboard players operation #math.sqrt ntils.in -= #i ntils.z.math.bz.4.temp

scoreboard players operation #y ntils.z.math.bz.4.temp *= #math.bz.4.c.y ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp += #math.bz.4.d.y ntils.in

scoreboard players operation #j ntils.z.math.bz.4.temp *= #math.bz.4.a.y ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp -= #j ntils.z.math.bz.4.temp

scoreboard players operation #z ntils.z.math.bz.4.temp *= #math.bz.4.c.z ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp += #math.bz.4.d.z ntils.in

scoreboard players operation #k ntils.z.math.bz.4.temp *= #math.bz.4.a.z ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp -= #k ntils.z.math.bz.4.temp

scoreboard players operation #math.sqrt ntils.in /= #10 ntils.z.const
scoreboard players operation #y ntils.z.math.bz.4.temp /= #10 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #10 ntils.z.const

scoreboard players operation #math.sqrt ntils.in *= #math.sqrt ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp *= #y ntils.z.math.bz.4.temp
scoreboard players operation #z ntils.z.math.bz.4.temp *= #z ntils.z.math.bz.4.temp

scoreboard players operation #math.sqrt ntils.in += #y ntils.z.math.bz.4.temp
scoreboard players operation #math.sqrt ntils.in += #z ntils.z.math.bz.4.temp
function ntils:math/sqrt
scoreboard players operation #math.bz.4.len ntils.out += #math.sqrt ntils.out

# Evaluate T=2/3 term --------------------------------------------------------------------------------------------- #
execute store result score #math.sqrt ntils.in store result score #y ntils.z.math.bz.4.temp run scoreboard players set #z ntils.z.math.bz.4.temp 3
execute store result score #i ntils.z.math.bz.4.temp store result score #j ntils.z.math.bz.4.temp run scoreboard players set #k ntils.z.math.bz.4.temp 4

scoreboard players operation #math.sqrt ntils.in *= #math.bz.4.b.x ntils.in
scoreboard players operation #math.sqrt ntils.in += #math.bz.4.a.x ntils.in

scoreboard players operation #i ntils.z.math.bz.4.temp *= #math.bz.4.d.x ntils.in
scoreboard players operation #math.sqrt ntils.in -= #i ntils.z.math.bz.4.temp

scoreboard players operation #y ntils.z.math.bz.4.temp *= #math.bz.4.b.y ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp += #math.bz.4.a.y ntils.in

scoreboard players operation #j ntils.z.math.bz.4.temp *= #math.bz.4.d.y ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp -= #j ntils.z.math.bz.4.temp

scoreboard players operation #z ntils.z.math.bz.4.temp *= #math.bz.4.b.z ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp += #math.bz.4.a.z ntils.in

scoreboard players operation #k ntils.z.math.bz.4.temp *= #math.bz.4.d.z ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp -= #k ntils.z.math.bz.4.temp

scoreboard players operation #math.sqrt ntils.in /= #10 ntils.z.const
scoreboard players operation #y ntils.z.math.bz.4.temp /= #10 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #10 ntils.z.const

scoreboard players operation #math.sqrt ntils.in *= #math.sqrt ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp *= #y ntils.z.math.bz.4.temp
scoreboard players operation #z ntils.z.math.bz.4.temp *= #z ntils.z.math.bz.4.temp

scoreboard players operation #math.sqrt ntils.in += #y ntils.z.math.bz.4.temp
scoreboard players operation #math.sqrt ntils.in += #z ntils.z.math.bz.4.temp
function ntils:math/sqrt
scoreboard players operation #math.bz.4.len ntils.out += #math.sqrt ntils.out

# Evaluate T=1 term ----------------------------------------------------------------------------------------------- #
scoreboard players operation #math.sqrt ntils.in = #math.bz.4.d.x ntils.in
scoreboard players operation #math.sqrt ntils.in -= #math.bz.4.c.x ntils.in

scoreboard players operation #y ntils.z.math.bz.4.temp = #math.bz.4.d.y ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp -= #math.bz.4.c.y ntils.in

scoreboard players operation #z ntils.z.math.bz.4.temp = #math.bz.4.d.z ntils.in
scoreboard players operation #z ntils.z.math.bz.4.temp -= #math.bz.4.c.z ntils.in

scoreboard players operation #math.sqrt ntils.in /= #10 ntils.z.const
scoreboard players operation #y ntils.z.math.bz.4.temp /= #10 ntils.z.const
scoreboard players operation #z ntils.z.math.bz.4.temp /= #10 ntils.z.const

scoreboard players operation #math.sqrt ntils.in *= #math.sqrt ntils.in
scoreboard players operation #y ntils.z.math.bz.4.temp *= #y ntils.z.math.bz.4.temp
scoreboard players operation #z ntils.z.math.bz.4.temp *= #z ntils.z.math.bz.4.temp

scoreboard players operation #math.sqrt ntils.in += #y ntils.z.math.bz.4.temp
scoreboard players operation #math.sqrt ntils.in += #z ntils.z.math.bz.4.temp
function ntils:math/sqrt
scoreboard players operation #math.sqrt ntils.out *= #3 ntils.z.const
scoreboard players operation #math.bz.4.len ntils.out += #math.sqrt ntils.out
scoreboard players operation #math.bz.4.len ntils.out /= #8 ntils.z.const

scoreboard players operation #math.sqrt ntils.in = #o ntils.z.math.bz.4.temp