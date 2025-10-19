# UUID/GET_INT
#
#   Gets the integer array representation of the UUID of the @s entity.
#
# OUTPUT:
#   > Storage:
#       | uuid.get_int, int list (4)
#
# Performance: Good
#   Caches the entities UUID in scores, meaning that running this multiple times on the same entity results in far better performance than getting its UUID.
#   Always use this instead of getting UUID data directly.

execute unless score $ntils:uuid.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

function ntils:z/uuid/get_int
data modify storage ntils:out uuid.get_int set from storage ntils:z uuid.get_int.out