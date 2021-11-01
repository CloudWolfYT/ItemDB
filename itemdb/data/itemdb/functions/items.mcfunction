tag @s add itemdb_check
kill @s[nbt={Item:{tag:{id_null:1b}}}]
execute if score .vanilla_scan itemdb matches 1 run function itemdb:versioner/item/start
execute at @s if entity @e[tag=itemdb,tag=ui,distance=..5] run function itemdb:show_id