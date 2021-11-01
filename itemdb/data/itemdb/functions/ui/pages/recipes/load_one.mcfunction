execute unless data storage itemdb out.id run data modify storage itemdb out.id set value "minecraft:air"
execute unless data storage itemdb out.Count run data modify storage itemdb out.Count set value 1b
execute unless data storage itemdb out.tag run data modify storage itemdb out.tag set value {has_id:1b,id:0,display:{Name:'{"text":""}'}}
execute if score @s itemdb_id = .recipes itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
data modify block ~ ~ ~ Items insert -1 from storage itemdb out
#tellraw @a {"nbt":"out","storage":"itemdb"}