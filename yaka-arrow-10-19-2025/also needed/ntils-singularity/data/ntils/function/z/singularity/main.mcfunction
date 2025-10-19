# ntils.API.flag is used as a load status tracker for 
# each pack that passes load data to singularity, a fake player
# score in the format '$<id>.ENABLED ntils.API.flag` is
# created and set to 0 or 1, depending on the load status of the pack
scoreboard objectives add ntils.API.flag dummy
scoreboard players reset * ntils.API.flag

function ntils:z/singularity/singularity/load

data remove storage ntils:z lang
function #ntils:singularity/lang

data modify storage ntils:in singularity set value []
function #ntils:singularity/data

data modify storage ntils:in singularity[].enabled set value True
function ntils:z/singularity/verify

data modify storage ntils:z singularity.data set from storage ntils:in singularity
function ntils:z/singularity/process/output

data modify storage ntils:z singularity.data set from storage ntils:in singularity
execute if data storage ntils:z singularity.data[] run function ntils:z/singularity/set_enabled_loop with storage ntils:z singularity.data[-1]

# DIMENSION-SPECIFIC FORCELOADS #

execute in ntils:z/empty run forceload add 0 0
execute in ntils:z/empty unless loaded 0 0 0 run schedule function ntils:z/singularity/singularity/void/schedule 1t
execute in ntils:z/empty positioned 0 0 0 if loaded ~ ~ ~ run function #ntils:z/singularity/place_in_void

# NON-DIMENSION-SPECIFIC FORCELOADS #

function ntils:z/singularity/singularity/all/schedule