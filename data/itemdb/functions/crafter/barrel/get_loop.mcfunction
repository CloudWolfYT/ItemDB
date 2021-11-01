scoreboard players operation #temp itemdb = #count itemdb
scoreboard players operation #temp itemdb %= #64 itemdb
execute if score #temp itemdb matches 0 run scoreboard players set #temp itemdb 64
execute store result storage itemdb out.Slot byte 1 run scoreboard players get #slot itemdb
execute store result storage itemdb out.Count byte 1 run scoreboard players get #temp itemdb
data modify block 69 1 69 Items insert -1 from storage itemdb out
#tellraw @a {"nbt":"out","storage":"itemdb"}
#tellraw @a {"block":"69 1 69","nbt":"Items"}
scoreboard players operation #count itemdb -= #temp itemdb
#tellraw @a {"score":{"objective":"itemdb","name":"#count"}}
#scoreboard players add #slot itemdb 1
execute store result score #inv itemdb run data get entity @p[tag=this] Inventory
execute if score #inv itemdb matches ..35 run loot give @p[tag=this] mine 69 1 69 air{drop_contents:true}
execute if score #inv itemdb matches 36.. at @p[tag=this] run loot spawn ~ ~ ~ mine 69 1 69 air{drop_contents:true}

execute if score #count itemdb matches 1.. run function itemdb:crafter/barrel/get_loop