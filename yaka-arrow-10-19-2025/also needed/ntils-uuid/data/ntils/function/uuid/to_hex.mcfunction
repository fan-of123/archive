# UUID/TO_HEX
#
#   Converts an int-array UUID to a stringified UUID. Used mainly for macroing in a direct UUID access.
#
# INPUT:
#   > Storage:
#       | uuid.to_hex, int list (4)
#
# OUTPUT:
#   > Storage:
#       | uuid.to_hex, string
#
# Performance: Okay

execute unless score $ntils:uuid.ENABLED ntils.API.flag matches -2147483648..2147483647 run return fail

data modify storage ntils:z uuid.to_hex.in set from storage ntils:in uuid.to_hex
function ntils:z/uuid/to_hex
data modify storage ntils:out uuid.to_hex set from storage ntils:z uuid.to_hex.out