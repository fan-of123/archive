# UUID/GET_HEX
#
#   Gets the string representation of the UUID of the @s entity.
#
# OUTPUT:
#   > Storage:
#       | uuid.get_hex, string
#
# Performance: Okay
#   Caches the entity's hex UUID for faster access.

execute unless score $ntils:uuid.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

execute if entity @s[tag=ntils.z.uuid.hex] run return run data modify storage ntils:out uuid.get_hex set from entity @s data.ntils.z.uuid.hex

function ntils:z/uuid/get_int
data modify storage ntils:z uuid.to_hex.in set from storage ntils:z uuid.get_int.out
function ntils:z/uuid/to_hex
execute if entity @s[type=!player] run function ntils:z/uuid/get_hex/cache
data modify storage ntils:out uuid.get_hex set from storage ntils:z uuid.to_hex.out