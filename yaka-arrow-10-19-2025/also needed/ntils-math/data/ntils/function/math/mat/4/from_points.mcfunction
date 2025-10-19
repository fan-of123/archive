# MATH/MAT/4/FROM_POINTS
#
# INPUT:
#   > Flags:
#       | $ntils:math.DO_SCOREBOARD_OUTPUT
#
# OUTPUT:
#
# PERFORMANCE: 

data modify storage ntils:out math.mat.4 set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]

execute store result score #b.x ntils.z.math.mat.temp store result storage ntils:out math.mat.4[3] float 0.001 run scoreboard players operation #a.x ntils.z.math.mat.temp = #math.mat.4.o.x ntils.in
execute store result score #b.y ntils.z.math.mat.temp store result storage ntils:out math.mat.4[7] float 0.001 run scoreboard players operation #a.y ntils.z.math.mat.temp = #math.mat.4.o.y ntils.in
execute store result score #b.z ntils.z.math.mat.temp store result storage ntils:out math.mat.4[11] float 0.001 run scoreboard players operation #a.z ntils.z.math.mat.temp = #math.mat.4.o.z ntils.in

execute store result storage ntils:out math.mat.4[0] float 0.001 run scoreboard players operation #a.x ntils.z.math.mat.temp -= #math.mat.4.a.x ntils.in
execute store result storage ntils:out math.mat.4[4] float 0.001 run scoreboard players operation #a.y ntils.z.math.mat.temp -= #math.mat.4.a.y ntils.in
execute store result storage ntils:out math.mat.4[8] float 0.001 run scoreboard players operation #a.z ntils.z.math.mat.temp -= #math.mat.4.a.z ntils.in

execute store result storage ntils:out math.mat.4[1] float -0.001 run scoreboard players operation #b.x ntils.z.math.mat.temp -= #math.mat.4.b.x ntils.in
execute store result storage ntils:out math.mat.4[5] float -0.001 run scoreboard players operation #b.y ntils.z.math.mat.temp -= #math.mat.4.b.y ntils.in
execute store result storage ntils:out math.mat.4[9] float -0.001 run scoreboard players operation #b.z ntils.z.math.mat.temp -= #math.mat.4.b.z ntils.in