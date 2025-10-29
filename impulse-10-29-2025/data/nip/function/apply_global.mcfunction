# input:
#
# >  #x nip.in
# >  #y nip.in
# >  #z nip.in

execute at @s positioned .0 0 .0 summon marker run function nip:z/ijk

execute store result score #i.x nip.temp run data get storage nip:s i[0] 1000
execute store result score #i.y nip.temp run data get storage nip:s i[1] 1000
execute store result score #i.z nip.temp run data get storage nip:s i[2] 1000

execute store result score #j.x nip.temp run data get storage nip:s j[0] 1000
execute store result score #j.y nip.temp run data get storage nip:s j[1] 1000
execute store result score #j.z nip.temp run data get storage nip:s j[2] 1000

execute store result score #k.x nip.temp run data get storage nip:s k[0] 1000
execute store result score #k.y nip.temp run data get storage nip:s k[1] 1000
execute store result score #k.z nip.temp run data get storage nip:s k[2] 1000

scoreboard players operation #i.x nip.temp *= #x nip.in
scoreboard players operation #i.y nip.temp *= #y nip.in
scoreboard players operation #i.z nip.temp *= #z nip.in

scoreboard players operation #j.x nip.temp *= #x nip.in
scoreboard players operation #j.y nip.temp *= #y nip.in
scoreboard players operation #j.z nip.temp *= #z nip.in

scoreboard players operation #k.x nip.temp *= #x nip.in
scoreboard players operation #k.y nip.temp *= #y nip.in
scoreboard players operation #k.z nip.temp *= #z nip.in

scoreboard players operation #i.x nip.temp += #i.y nip.temp
scoreboard players operation #i.x nip.temp += #i.z nip.temp

scoreboard players operation #j.x nip.temp += #j.y nip.temp
scoreboard players operation #j.x nip.temp += #j.z nip.temp

scoreboard players operation #k.x nip.temp += #k.y nip.temp
scoreboard players operation #k.x nip.temp += #k.z nip.temp

scoreboard players operation #i.x nip.temp /= #1000 nip.temp
scoreboard players operation #j.x nip.temp /= #1000 nip.temp
scoreboard players operation #k.x nip.temp /= #1000 nip.temp

execute unless items entity @s saddle saddle run function nip:z/s

execute store result score #x nip.temp run scoreboard players operation @s nip.z.x += #i.x nip.temp
execute store result score #y nip.temp run scoreboard players operation @s nip.z.y += #j.x nip.temp
execute store result score #z nip.temp run scoreboard players operation @s nip.z.z += #k.x nip.temp

function nip:z/d/x
function nip:z/d/y
function nip:z/d/z