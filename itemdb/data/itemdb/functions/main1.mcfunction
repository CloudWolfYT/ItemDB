execute as @a run function itemdb:scores
execute as @a[scores={itemdb_v_relog=1..},limit=1] run function itemdb:versioner/player/start
execute as @e[type=marker,tag=itemdb,tag=brewer] at @s run function itemdb:brewer/main
execute as @e[type=marker,tag=itemdb,tag=ui] at @s run function itemdb:ui/check
execute as @e[type=#itemdb:itemdb,tag=itemdb] at @s run function itemdb:blocks
execute as @e[type=item,tag=!itemdb_check] run function itemdb:items
clear @a black_stained_glass{id_null:1b}

## for debouncing
execute as @a[scores={itemdb_v_vanilla=1..}] run function itemdb:items/vanilla/player/start
advancement revoke @a only itemdb:inv_changed