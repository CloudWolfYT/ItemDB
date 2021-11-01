scoreboard players set #hold1 itemdb 0
execute if data storage itemdb container[{Slot:19b}] run scoreboard players set #hold1 itemdb 1
execute if data storage itemdb container[{Slot:22b}] run scoreboard players set #hold1 itemdb 1

function itemdb:smither/player_io
function itemdb:smither/prune/start
data remove storage itemdb hold
data modify storage itemdb hold set from storage itemdb in
execute store result score #hold itemdb run data get storage itemdb in[1]
function itemdb:smither/search/start
execute if score #player_io itemdb matches 1..2 run function itemdb:smither/barrel/click
item replace block ~ ~ ~ container.25 with air
execute if score out itemdb matches 0.. run function itemdb:smither/barrel/output
function itemdb:smither/barrel/mask
execute if score out itemdb matches -1 if score #hold1 itemdb matches 1 run item replace block ~ ~ ~ container.14 with minecraft:black_stained_glass_pane{has_id:1b,id:0,display:{Name:'{"text":""}'},CustomModelData:7}