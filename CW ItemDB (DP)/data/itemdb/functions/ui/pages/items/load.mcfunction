item replace block ~ ~ ~ container.0 with grass_block{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"View Vanilla IDs","italic":false}'}}
item replace block ~ ~ ~ container.9 with crafting_table{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Custom Item Database","italic":false}'},Enchantments:[{}]}
item replace block ~ ~ ~ container.18 with knowledge_book{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Recipes","italic":false}'}}

item replace block ~ ~ ~ container.17 with spyglass{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Search by ID","italic":false}'}}

scoreboard players operation #temp itemdb = @s itemdb_id
scoreboard players remove #temp itemdb 21
scoreboard players operation #temp1 itemdb = @s itemdb_id
scoreboard players remove #temp1 itemdb 1
data modify block 69 2 69 Text1 set value '[{"text":"ID: ","italic":false},{"score":{"objective":"itemdb","name":"#temp"}},{"text":"-"},{"score":{"objective":"itemdb","name":"#temp1"}}]'
execute if score #temp itemdb matches ..-1 run data modify block 69 2 69 Text1 set value '[{"text":"-----","italic":false}]'
item replace block ~ ~ ~ container.8 with flint{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"+ID","italic":false}'}}
data modify block ~ ~ ~ Items[{Slot:8b}].tag.display.Name set from block 69 2 69 Text1

scoreboard players operation #temp itemdb = @s itemdb_id
scoreboard players add #temp itemdb 21
scoreboard players operation #temp1 itemdb = @s itemdb_id
scoreboard players add #temp1 itemdb 40
data modify block 69 2 69 Text1 set value '[{"text":"ID: ","italic":false},{"score":{"objective":"itemdb","name":"#temp"}},{"text":"-"},{"score":{"objective":"itemdb","name":"#temp1"}}]'
execute if score #temp itemdb >= .items itemdb run data modify block 69 2 69 Text1 set value '[{"text":"-----","italic":false}]'
item replace block ~ ~ ~ container.26 with hopper{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"-ID","italic":false}'}}
data modify block ~ ~ ~ Items[{Slot:26b}].tag.display.Name set from block 69 2 69 Text1

#say load items

execute if score #bool itemdb matches 0 run scoreboard players set @s itemdb_id 0
execute if score #bool itemdb matches 1 if score #bool1 itemdb matches 0 run function itemdb:ui/pages/items/save
scoreboard players set #loop itemdb 20
function itemdb:ui/pages/items/loop

scoreboard players set #bool itemdb 1
scoreboard players set @s itemdb_page 1