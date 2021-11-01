scoreboard players operation in itemdb = @s itemdb_id
scoreboard players operation in itemdb += #loop itemdb

function itemdb:items/db/get
execute unless data storage itemdb out run data modify storage itemdb out set value {id:"minecraft:black_stained_glass_pane",Count:1b,tag:{has_id:1b,id:0,display:{Name:'{"text":""}'}}}
execute if score in itemdb = .items itemdb run data modify storage itemdb out.id set value "minecraft:lime_stained_glass_pane"

#tellraw @a {"score":{"objective":"itemdb","name":"in"}}
scoreboard players operation #temp itemdb = #loop itemdb
scoreboard players add #temp itemdb 1
execute if score #temp itemdb matches 8.. run scoreboard players add #temp itemdb 2
execute if score #temp itemdb matches 17.. run scoreboard players add #temp itemdb 2

execute store result storage itemdb out.Slot byte 1 run scoreboard players get #temp itemdb
data modify block ~ ~ ~ Items insert -1 from storage itemdb out

scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 0.. run function itemdb:ui/pages/items/loop