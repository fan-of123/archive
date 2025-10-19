scoreboard players set #-4000 ntils.z.const -4000
scoreboard players set #-2000 ntils.z.const -2000
scoreboard players set #-500 ntils.z.const -500
scoreboard players set #-400 ntils.z.const -400
scoreboard players set #-250 ntils.z.const -250
scoreboard players set #-40 ntils.z.const -40
scoreboard players set #-3 ntils.z.const -3
scoreboard players set #-2 ntils.z.const -2
scoreboard players set #-1 ntils.z.const -1
scoreboard players set #1 ntils.z.const 1
scoreboard players set #2 ntils.z.const 2
scoreboard players set #3 ntils.z.const 3
scoreboard players set #6 ntils.z.const 6
scoreboard players set #8 ntils.z.const 8
scoreboard players set #10 ntils.z.const 10
scoreboard players set #100 ntils.z.const 100
scoreboard players set #559 ntils.z.const 559
scoreboard players set #1000 ntils.z.const 1000
scoreboard players set #333333 ntils.z.const 333333

scoreboard players set #46340^2/1000 ntils.z.const 2147395
scoreboard players set #-46340^2/1000 ntils.z.const 2147395
scoreboard players set #23170^2/2000 ntils.z.const 268424
scoreboard players set #(((2^31)-1)/4)/1000 ntils.z.const 536871

scoreboard players set #2^15 ntils.z.const 32768
scoreboard players set #2^15.5 ntils.z.const 46340
scoreboard players set #-2^15.5 ntils.z.const -46340
scoreboard players set #2^16 ntils.z.const 65536

execute unless score #math.vec.SCALE ntils.in = #math.vec.SCALE ntils.in run scoreboard players set #math.vec.SCALE ntils.in 1000

# 3 POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.3.temp dummy

# Iteration scores
scoreboard objectives add ntils.z.math.bz.3.i.vec.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec.z dummy

scoreboard objectives add ntils.z.math.bz.3.i.accel.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.accel.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.accel.z dummy

scoreboard objectives add ntils.z.math.bz.3.i.vec_s.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec_s.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.vec_s.z dummy

scoreboard objectives add ntils.z.math.bz.3.i.base.x dummy
scoreboard objectives add ntils.z.math.bz.3.i.base.y dummy
scoreboard objectives add ntils.z.math.bz.3.i.base.z dummy

# Entity polynomial scores
scoreboard objectives add ntils.z.math.bz.3.poly.0.x dummy
scoreboard objectives add ntils.z.math.bz.3.poly.0.y dummy
scoreboard objectives add ntils.z.math.bz.3.poly.0.z dummy

scoreboard objectives add ntils.z.math.bz.3.poly.1.x dummy
scoreboard objectives add ntils.z.math.bz.3.poly.1.y dummy
scoreboard objectives add ntils.z.math.bz.3.poly.1.z dummy

scoreboard objectives add ntils.z.math.bz.3.poly.2.x dummy
scoreboard objectives add ntils.z.math.bz.3.poly.2.y dummy
scoreboard objectives add ntils.z.math.bz.3.poly.2.z dummy

# 4 POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.4.temp dummy

# Iteration scores
scoreboard objectives add ntils.z.math.bz.4.i.vec.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.accel.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.accel_s.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel_s.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.accel_s.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.jerk.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.jerk.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.jerk.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.vec_s.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec_s.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.vec_s.z dummy

scoreboard objectives add ntils.z.math.bz.4.i.base.x dummy
scoreboard objectives add ntils.z.math.bz.4.i.base.y dummy
scoreboard objectives add ntils.z.math.bz.4.i.base.z dummy

# Entity polynomial scores
scoreboard objectives add ntils.z.math.bz.4.poly.0.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.0.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.0.z dummy

scoreboard objectives add ntils.z.math.bz.4.poly.1.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.1.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.1.z dummy

scoreboard objectives add ntils.z.math.bz.4.poly.2.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.2.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.2.z dummy

scoreboard objectives add ntils.z.math.bz.4.poly.3.x dummy
scoreboard objectives add ntils.z.math.bz.4.poly.3.y dummy
scoreboard objectives add ntils.z.math.bz.4.poly.3.z dummy

# N POINT BEZIER SCOREBOARDS #

scoreboard objectives add ntils.z.math.bz.n.temp dummy

# SQRT SCOREBOARDS #

scoreboard objectives add ntils.z.math.sqrt.temp dummy

# QUATERNION SCOREBOARDS #

scoreboard objectives add ntils.z.math.quaternion.temp dummy

scoreboard objectives add ntils.z.math.quaternion.slerp.o dummy
scoreboard objectives add ntils.z.math.quaternion.slerp.x dummy
scoreboard objectives add ntils.z.math.quaternion.slerp.y dummy
scoreboard objectives add ntils.z.math.quaternion.slerp.z dummy

scoreboard objectives add ntils.z.math.quaternion.slerp.q.w dummy
scoreboard objectives add ntils.z.math.quaternion.slerp.q.x dummy
scoreboard objectives add ntils.z.math.quaternion.slerp.q.y dummy
scoreboard objectives add ntils.z.math.quaternion.slerp.q.z dummy

# MATRIX SCOREBOARDS #

scoreboard objectives add ntils.z.math.mat.temp dummy

# VECTOR SCOREBOARDS #

scoreboard objectives add ntils.z.math.vec.temp dummy

scoreboard objectives add ntils.z.math.vec.3.slerp.0.x dummy
scoreboard objectives add ntils.z.math.vec.3.slerp.0.y dummy
scoreboard objectives add ntils.z.math.vec.3.slerp.0.z dummy

scoreboard objectives add ntils.z.math.vec.3.slerp.1.x dummy
scoreboard objectives add ntils.z.math.vec.3.slerp.1.y dummy
scoreboard objectives add ntils.z.math.vec.3.slerp.1.z dummy

scoreboard objectives add ntils.z.math.vec.3.slerp.o dummy

# TRIG SCOREBOARDS #

scoreboard objectives add ntils.z.math.trig.temp dummy

# --------------------------- STORAGE OUTPUT INIT #

# Bezier output initialization
data modify storage ntils:out math.bz.3 set value [0d,0d,0d]
data modify storage ntils:out math.bz.4 set value [0d,0d,0d]
data modify storage ntils:out math.bz.n set value [0d,0d,0d]

# Quaternion output initialization
data modify storage ntils:out math.quaternion set value [0f,0f,0f,0f]

# Vector output initialization
data modify storage ntils:out math.vec.2 set value [0d,0d]
data modify storage ntils:out math.vec.3 set value [0d,0d,0d]

# Matrix output initialization
data modify storage ntils:out math.mat.2 set value [\
    [0d,0d],\
    [0d,0d],\
]
data modify storage ntils:out math.mat.3 set value [\
    [0d,0d,0d],\
    [0d,0d,0d],\
    [0d,0d,0d],\
]

data modify storage ntils:out math.mat.4 set value [\
    1f,0f,0f,0f,\
    0f,1f,0f,0f,\
    0f,0f,1f,0f,\
    0f,0f,0f,1f\
]


data modify storage ntils:z math.vec.3.slerp.pos set value [0d,0d,0d]
data modify storage ntils:z math.vec.3.slerp.rot set value [0f,0f]

data modify storage ntils:z math.distance.transform set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]

data modify storage ntils:z math.bz.4.len.transform set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]

data modify storage ntils:z math.quaternion.slerp.pos set value [0d,0d,0d]

# --------------------------- STORAGE INPUT INIT #

execute unless data storage ntils:in math.quaternion.single run data modify storage ntils:in math.quaternion.single set value [1f,0f,0f,0f]
execute unless data storage ntils:in math.quaternion.multiply run data modify storage ntils:in math.quaternion.multiply set value {left:[1f,0f,0f,0f],right:[1f,0f,0f,0f]}
execute unless data storage ntils:in math.quaternion.slerp run data modify storage ntils:in math.quaternion.slerp set value {start:[1f,0f,0f,0f],end:[1f,0f,0f,0f]}
execute unless data storage ntils:in math.quaternion.from_yaw_pitch run data modify storage ntils:in math.quaternion.from_yaw_pitch set value [0f,0f]
execute unless data storage ntils:in math.vec.3.slerp run data modify storage ntils:in math.vec.3.slerp set value {start:[0d,0d,0d],end:[0d,0d,0d]}
execute unless data storage ntils:in math.vec.3.pair run data modify storage ntils:in math.vec.3.pair set value {left:[0d,0d,0d],right:[0d,0d,0d]}