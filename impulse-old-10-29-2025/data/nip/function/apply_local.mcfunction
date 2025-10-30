# input:
#
# >  #x nip.in
# >  #y nip.in
# >  #z nip.in

execute unless items entity @s saddle *[enchantments~[{enchantments:"nip:z",levels:{min:1}}]] run function nip:z/s

execute store result score #x nip.temp run scoreboard players operation @s nip.z.x += #x nip.in
execute store result score #y nip.temp run scoreboard players operation @s nip.z.y += #y nip.in
execute store result score #z nip.temp run scoreboard players operation @s nip.z.z += #z nip.in

function nip:z/d/x
function nip:z/d/y
function nip:z/d/z