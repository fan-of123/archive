execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run gamemode spectator
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:0b,is_flying:1b}}} run gamemode spectator
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:0b,is_flying:0b}}} run gamemode adventure
gamemode creative