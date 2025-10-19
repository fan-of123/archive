# MATH/CHOOSE
#
#   Given two numbers X and Y, caculates X choose Y. Google "binomial coefficient" to see what this means.
#   NOTE: This can only calculate choose values up to 33 choose y. Any higher would have scoreboard overflows.
#
# INPUT:
#   > Scoreboard:
#       | #math.choose.x
#       | #math.choose.y
#
# OUTPUT:
#   > Scoreboard:
#       | #math.choose ntils.out
#   > Return:
#       | This function also returns the choose result in addition to storing it as a score.
#
# PERFORMANCE: Good. 
#   This uses a macro for simplicity and to gain the ability to calculate numbers up to 33.
#   For reference, the performance impact of a single-key storage-referenced uncached macro is ~25 scoreboard commands.

execute store result storage ntils:z math.choose.m.x int 1 run scoreboard players get #math.choose.x ntils.in
execute store result storage ntils:z math.choose.m.y int 1 run scoreboard players get #math.choose.y ntils.in

return run execute store result score #math.choose ntils.out run function ntils:z/math/choose/main with storage ntils:z math.choose.m