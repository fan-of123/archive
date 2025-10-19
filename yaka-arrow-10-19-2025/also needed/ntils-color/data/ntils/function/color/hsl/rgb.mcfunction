# COLOR/HSL/RGB
#
# Converts a color in the HSL color space to a color in the RGB color space.
#
# INPUT:
#   > Scoreboard:
#       | #color.[h,s,l] (3)   <- The Hue, Saturation, and Lightness of the color, on the range 0..255
#
# OUTPUT:
#   > Scoreboard:
#       | #color.[r,g,b] (3)
#
# Performance: Okay

execute unless score $ntils:color.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

scoreboard players operation #r.k ntils.z.color.temp = #color.h ntils.in
execute store result score #b.k ntils.z.color.temp store result score #g.k ntils.z.color.temp run scoreboard players operation #r.k ntils.z.color.temp *= #48 ntils.z.const

execute store result score #r.9-k ntils.z.color.temp store result score #g.9-k ntils.z.color.temp run scoreboard players set #b.9-k ntils.z.color.temp 9216
scoreboard players add #g.k ntils.z.color.temp 8192
scoreboard players operation #g.k ntils.z.color.temp %= #2^10*12 ntils.z.const
scoreboard players add #b.k ntils.z.color.temp 4096
scoreboard players operation #b.k ntils.z.color.temp %= #2^10*12 ntils.z.const

scoreboard players operation #r.9-k ntils.z.color.temp -= #r.k ntils.z.color.temp
scoreboard players operation #g.9-k ntils.z.color.temp -= #g.k ntils.z.color.temp
scoreboard players operation #b.9-k ntils.z.color.temp -= #b.k ntils.z.color.temp

scoreboard players operation #r.9-k ntils.z.color.temp < #2^10 ntils.z.const
scoreboard players operation #g.9-k ntils.z.color.temp < #2^10 ntils.z.const
scoreboard players operation #b.9-k ntils.z.color.temp < #2^10 ntils.z.const

scoreboard players remove #r.k ntils.z.color.temp 3072
scoreboard players remove #g.k ntils.z.color.temp 3072
scoreboard players remove #b.k ntils.z.color.temp 3072

scoreboard players operation #r.9-k ntils.z.color.temp < #r.k ntils.z.color.temp
scoreboard players operation #g.9-k ntils.z.color.temp < #g.k ntils.z.color.temp
scoreboard players operation #b.9-k ntils.z.color.temp < #b.k ntils.z.color.temp

scoreboard players operation #r.9-k ntils.z.color.temp > #-2^10 ntils.z.const
scoreboard players operation #g.9-k ntils.z.color.temp > #-2^10 ntils.z.const
scoreboard players operation #b.9-k ntils.z.color.temp > #-2^10 ntils.z.const

execute store result score #color.r ntils.out run scoreboard players operation #a ntils.z.color.temp = #color.l ntils.in
scoreboard players operation #a ntils.z.color.temp *= #32 ntils.z.const

execute if score #a ntils.z.color.temp matches 4096.. run scoreboard players remove #a ntils.z.color.temp 8192
execute if score #a ntils.z.color.temp matches ..-1 run scoreboard players operation #a ntils.z.color.temp *= #-1 ntils.z.const
scoreboard players operation #a ntils.z.color.temp *= #color.s ntils.in

scoreboard players operation #r.9-k ntils.z.color.temp *= #a ntils.z.color.temp
scoreboard players operation #g.9-k ntils.z.color.temp *= #a ntils.z.color.temp
scoreboard players operation #b.9-k ntils.z.color.temp *= #a ntils.z.color.temp

execute store result score #color.g ntils.out store result score #color.b ntils.out run scoreboard players operation #color.r ntils.out *= #2^23 ntils.z.const

scoreboard players operation #color.r ntils.out -= #r.9-k ntils.z.color.temp
scoreboard players operation #color.g ntils.out -= #g.9-k ntils.z.color.temp
scoreboard players operation #color.b ntils.out -= #b.9-k ntils.z.color.temp

scoreboard players operation #color.r ntils.out /= #2^23 ntils.z.const
scoreboard players operation #color.g ntils.out /= #2^23 ntils.z.const
scoreboard players operation #color.b ntils.out /= #2^23 ntils.z.const