scoreboard players operation #slot itemdb = @s itemdb_id
scoreboard players operation in itemdb = #slot itemdb
function itemdb:smither/db/get
data modify storage itemdb hold set value [0,0,0]
data modify storage itemdb hold set from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[0]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 2b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[1]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 11b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[2]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 20b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out
#tellraw @a {"nbt":"hold","storage":"itemdb"}
scoreboard players add #slot itemdb 1
scoreboard players operation in itemdb = #slot itemdb
function itemdb:smither/db/get
data modify storage itemdb hold set value [0,0,0]
data modify storage itemdb hold set from storage itemdb out
execute store result score in itemdb run data get storage itemdb hold[0]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 4b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[1]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 13b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[2]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 22b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out
#tellraw @a {"nbt":"hold","storage":"itemdb"}
scoreboard players add #slot itemdb 1
scoreboard players operation in itemdb = #slot itemdb
function itemdb:smither/db/get
data modify storage itemdb hold set value [0,0,0]
data modify storage itemdb hold set from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[0]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 6b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[1]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:air",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 15b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

execute store result score in itemdb run data get storage itemdb hold[2]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute unless data storage itemdb out run data modify storage itemdb out set value {Count:1b,id:"minecraft:stick",tag:{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}}
data modify storage itemdb out.Slot set value 24b
execute if score in itemdb matches 0 run data modify storage itemdb out.id set value "minecraft:air"
execute if score #slot itemdb = .smiths itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"
execute if score #slot itemdb > .smiths itemdb run data modify storage itemdb out.id set value "minecraft:black_stained_glass_pane"
execute if score #slot itemdb >= .smiths itemdb run data modify storage itemdb out.tag.display.Name set value '{"text":""}'
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

#tellraw @a {"nbt":"hold","storage":"itemdb"}