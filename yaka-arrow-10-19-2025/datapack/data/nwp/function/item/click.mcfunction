scoreboard players set #s nwp.temp 1
execute if items entity @s weapon.mainhand warped_fungus_on_a_stick run scoreboard players set #s nwp.temp 0

execute if score #s nwp.temp matches 0 if items entity @s weapon.mainhand *[minecraft:custom_data~{nwp:{id:"yaka_arrow"}}] run function nwp:item/yaka/new/spawn
execute if score #s nwp.temp matches 1 if items entity @s weapon.offhand *[minecraft:custom_data~{nwp:{id:"yaka_arrow"}}] run function nwp:item/yaka/new/spawn

scoreboard players reset @s nwp.click