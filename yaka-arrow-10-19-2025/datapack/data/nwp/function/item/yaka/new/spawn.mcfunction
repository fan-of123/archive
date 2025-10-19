playsound nwp:yaka.target player @a
execute if score #s nwp.temp matches 0 run item replace entity @s weapon.mainhand with air
execute if score #s nwp.temp matches 1 run item replace entity @s weapon.mainhand with air
function nwp:item/yaka/new/this