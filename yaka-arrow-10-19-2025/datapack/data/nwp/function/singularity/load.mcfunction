scoreboard objectives add nwp.temp dummy
scoreboard objectives add nwp.const dummy
scoreboard objectives add nwp.global dummy
scoreboard objectives add nwp.in dummy
scoreboard objectives add nwp.id dummy
scoreboard objectives add nwp.out dummy
scoreboard objectives add nwp.data.0 dummy
scoreboard objectives add nwp.data.1 dummy
scoreboard objectives add nwp.data.2 dummy
scoreboard objectives add nwp.data.3 dummy
scoreboard objectives add nwp.data.4 dummy


scoreboard objectives add nwp.sneak minecraft.custom:sneak_time
scoreboard objectives add nwp.click minecraft.used:minecraft.warped_fungus_on_a_stick

data modify storage nwp:s pos set value [0d,0d,0d]

data modify storage nwp:s item.yaka.target set value [0d,0d,0d]

data modify storage nwp:s part.trail.shrink set value {transformation:{scale:[0.005f,0.005f,0.f]},start_interpolation:0,interpolation_duration:-1}
data modify storage nwp:s part.trail.grow set value {transformation:{scale:[0.11f,0.11f,0.f]},start_interpolation:0,interpolation_duration:5}
data modify storage nwp:s part.trail.new set value {Tags:["nwp.tick"],data:{nwp:{tick:{command:"function nwp:part/trail/tick",space:"",macro:""}}},transformation:{scale:[0.f,0.f,0.f]},start_interpolation:-1,interpolation_duration:0,brightness:{sky:15,block:15},item:{id:"minecraft:white_concrete",count:1,components:{"minecraft:item_model":"ntils:sfx/cube/back","minecraft:custom_model_data":{colors:[I;16711680]}}}}

scoreboard objectives add nwp.target dummy

scoreboard objectives add nwp.pos.x dummy
scoreboard objectives add nwp.pos.y dummy
scoreboard objectives add nwp.pos.z dummy
scoreboard objectives add nwp.vel.x dummy
scoreboard objectives add nwp.vel.y dummy
scoreboard objectives add nwp.vel.z dummy
scoreboard objectives add nwp.acc.x dummy
scoreboard objectives add nwp.acc.y dummy
scoreboard objectives add nwp.acc.z dummy

scoreboard players set #2000 nwp.const 2000
scoreboard players set #1000 nwp.const 1000
scoreboard players set #900 nwp.const 900
scoreboard players set #800 nwp.const 800
scoreboard players set #4 nwp.const 4
scoreboard players set #2 nwp.const 2

scoreboard players set #2^24 nwp.const 16777216
scoreboard players set #2^16 nwp.const 65536
scoreboard players set #2^8 nwp.const 256

forceload add 0 0

kill 0052ccfa-0000-fb6b-0006-a8d414a4d35e
summon marker 0 0 0 {UUID:[I;5426426,64363,436436,346346334]}