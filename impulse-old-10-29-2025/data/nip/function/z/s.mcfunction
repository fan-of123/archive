scoreboard players set @s nip.z.x 0
scoreboard players set @s nip.z.y 0
scoreboard players set @s nip.z.z 0
execute unless items entity @s saddle * run item replace entity @s saddle with saddle
item modify entity @s saddle {function:"set_enchantments",add:true,enchantments:{"nip:z":1}}
stopsound @s player minecraft:entity.horse.saddle