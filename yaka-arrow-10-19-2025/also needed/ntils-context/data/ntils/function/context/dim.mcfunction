# CONTEXT/DIM
#
#   Getter function for the current dimension context. Copies the current dimension context to a storage.
#
# OUTPUT:
#   > Storage:
#       | context.dim, string
#
# PERFORMANCE: Good
#   Has to do some nasty stuff to get the dimension context, so don't run this needlessly.

execute positioned 0 1000000 0 summon piglin_brute run function ntils:z/context/dim/as