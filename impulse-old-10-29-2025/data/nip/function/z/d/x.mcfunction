execute \
store result score @s nip.z.x.0 store result score @s nip.z.x.1 store result score @s nip.z.x.2 store result score @s nip.z.x.3 store result score @s nip.z.x.4 \
store result score @s nip.z.x.5 store result score @s nip.z.x.6 store result score @s nip.z.x.7 store result score @s nip.z.x.8 store result score @s nip.z.x.9 \
store result score @s nip.z.x.10 store result score @s nip.z.x.11 store result score @s nip.z.x.12 store result score @s nip.z.x.13 store result score @s nip.z.x.14 \
store result score @s nip.z.x.15 store result score @s nip.z.x.16 store result score @s nip.z.x.17 store result score @s nip.z.x.18 store result score @s nip.z.x.19 \
store result score @s nip.z.x.20 store result score @s nip.z.x.21 store result score @s nip.z.x.22 store result score @s nip.z.x.23 store result score @s nip.z.x.24 \
store result score @s nip.z.x.25 store result score @s nip.z.x.26 store result score @s nip.z.x.27 store result score @s nip.z.x.28 store result score @s nip.z.x.29 \
store result score @s nip.z.x.30 run scoreboard players set @s nip.z.x.31 0
execute store success score @s nip.z.x.31 if score #x nip.temp matches ..-1 run scoreboard players add #x nip.temp 2147483647
execute store success score @s nip.z.x.30 if score #x nip.temp matches 1073741824.. run scoreboard players remove #x nip.temp 1073741824
execute store success score @s nip.z.x.29 if score #x nip.temp matches 536870912.. run scoreboard players remove #x nip.temp 536870912
execute store success score @s nip.z.x.28 if score #x nip.temp matches 268435456.. run scoreboard players remove #x nip.temp 268435456
execute store success score @s nip.z.x.27 if score #x nip.temp matches 134217728.. run scoreboard players remove #x nip.temp 134217728
execute store success score @s nip.z.x.26 if score #x nip.temp matches 67108864.. run scoreboard players remove #x nip.temp 67108864
execute store success score @s nip.z.x.25 if score #x nip.temp matches 33554432.. run scoreboard players remove #x nip.temp 33554432
execute store success score @s nip.z.x.24 if score #x nip.temp matches 16777216.. run scoreboard players remove #x nip.temp 16777216
execute store success score @s nip.z.x.23 if score #x nip.temp matches 8388608.. run scoreboard players remove #x nip.temp 8388608
execute store success score @s nip.z.x.22 if score #x nip.temp matches 4194304.. run scoreboard players remove #x nip.temp 4194304
execute store success score @s nip.z.x.21 if score #x nip.temp matches 2097152.. run scoreboard players remove #x nip.temp 2097152
execute store success score @s nip.z.x.20 if score #x nip.temp matches 1048576.. run scoreboard players remove #x nip.temp 1048576
execute store success score @s nip.z.x.19 if score #x nip.temp matches 524288.. run scoreboard players remove #x nip.temp 524288
execute store success score @s nip.z.x.18 if score #x nip.temp matches 262144.. run scoreboard players remove #x nip.temp 262144
execute store success score @s nip.z.x.17 if score #x nip.temp matches 131072.. run scoreboard players remove #x nip.temp 131072
execute store success score @s nip.z.x.16 if score #x nip.temp matches 65536.. run scoreboard players remove #x nip.temp 65536
execute store success score @s nip.z.x.15 if score #x nip.temp matches 32768.. run scoreboard players remove #x nip.temp 32768
execute store success score @s nip.z.x.14 if score #x nip.temp matches 16384.. run scoreboard players remove #x nip.temp 16384
execute store success score @s nip.z.x.13 if score #x nip.temp matches 8192.. run scoreboard players remove #x nip.temp 8192
execute store success score @s nip.z.x.12 if score #x nip.temp matches 4096.. run scoreboard players remove #x nip.temp 4096
execute store success score @s nip.z.x.11 if score #x nip.temp matches 2048.. run scoreboard players remove #x nip.temp 2048
execute store success score @s nip.z.x.10 if score #x nip.temp matches 1024.. run scoreboard players remove #x nip.temp 1024
execute store success score @s nip.z.x.9 if score #x nip.temp matches 512.. run scoreboard players remove #x nip.temp 512
execute store success score @s nip.z.x.8 if score #x nip.temp matches 256.. run scoreboard players remove #x nip.temp 256
execute store success score @s nip.z.x.7 if score #x nip.temp matches 128.. run scoreboard players remove #x nip.temp 128
execute store success score @s nip.z.x.6 if score #x nip.temp matches 64.. run scoreboard players remove #x nip.temp 64
execute store success score @s nip.z.x.5 if score #x nip.temp matches 32.. run scoreboard players remove #x nip.temp 32
execute store success score @s nip.z.x.4 if score #x nip.temp matches 16.. run scoreboard players remove #x nip.temp 16
execute store success score @s nip.z.x.3 if score #x nip.temp matches 8.. run scoreboard players remove #x nip.temp 8
execute store success score @s nip.z.x.2 if score #x nip.temp matches 4.. run scoreboard players remove #x nip.temp 4
execute store success score @s nip.z.x.1 if score #x nip.temp matches 2.. run scoreboard players remove #x nip.temp 2
execute if score #x nip.temp matches 1.. run scoreboard players set @s nip.z.x.0 1