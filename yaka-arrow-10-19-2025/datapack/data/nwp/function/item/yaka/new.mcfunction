execute unless entity @s[type=item_display] summon item_display run return run function nwp:item/yaka/new

function ntils:context/vec
execute store result score @s nwp.vel.x run data get storage ntils:out context.vec[0] 225
execute store result score @s nwp.vel.y run data get storage ntils:out context.vec[1] 225
execute store result score @s nwp.vel.z run data get storage ntils:out context.vec[2] 225

function ntils:context/pos
execute store result score @s nwp.pos.x run data get storage ntils:out context.pos[0] 1000
execute store result score @s nwp.pos.y run data get storage ntils:out context.pos[1] 1000
execute store result score @s nwp.pos.z run data get storage ntils:out context.pos[2] 1000

tag @s add nwp.this
function ntils:uuid/get_hex
execute summon marker positioned ~-.5 ~-.5 ~-.5 run function nwp:item/yaka/new/as
tag @s remove nwp.this

rotate @s ~ 0
scoreboard players set @s nwp.data.0 225
scoreboard players set @s nwp.data.1 0
scoreboard players set @s nwp.data.4 6

data merge entity @s {data:{nwp:{tick:{command:"function nwp:item/yaka/idle/tick",space:"",macro:""}}},Tags:["nwp.tick"],brightness:{sky:15,block:15},teleport_duration:1,item:{id:command_block,components:{custom_model_data:{strings:[proj]},item_model:"nwp:yaka"}},transformation:{left_rotation:{angle:0.5f,axis:[1f,0f,0f]}},start_interpolation:-1,interpolation_duration:0}
tag @s add nwp.yaka.turn
execute store result score @s nwp.data.3 as @a[tag=nwp.owner] run function nwp:utils/get_id