item replace block ~ ~ ~ container.0 with crafting_table{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Custom Item Database","italic":false}'}}
item replace block ~ ~ ~ container.9 with knowledge_book{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Recipes","italic":false}'},Enchantments:[{}]}
item replace block ~ ~ ~ container.18 with brewing_stand{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Brews","italic":false}'}}
item replace block ~ ~ ~ container.17 with spyglass{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"Search by ID","italic":false}'}}
item replace block ~ ~ ~ container.1 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.5 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.6 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.7 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.10 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.14 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.16 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.19 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.23 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
item replace block ~ ~ ~ container.24 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}
#item replace block ~ ~ ~ container.25 with black_stained_glass_pane{itemdb:{has_id:1b,id:0},display:{Name:'{"text":""}'}}

scoreboard players operation #temp itemdb = @s itemdb_id
scoreboard players remove #temp itemdb 1
data modify block 69 2 69 Text1 set value '[{"text":"ID: ","italic":false},{"score":{"objective":"itemdb","name":"#temp"}}]'
execute if score #temp itemdb matches ..-1 run data modify block 69 2 69 Text1 set value '[{"text":"-----","italic":false}]'
item replace block ~ ~ ~ container.8 with flint{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"+ID","italic":false}'}}
data modify block ~ ~ ~ Items[{Slot:8b}].tag.display.Name set from block 69 2 69 Text1

scoreboard players operation #temp itemdb = @s itemdb_id
scoreboard players add #temp itemdb 1
data modify block 69 2 69 Text1 set value '[{"text":"ID: ","italic":false},{"score":{"objective":"itemdb","name":"#temp"}}]'
execute if score #temp itemdb > .recipes itemdb run data modify block 69 2 69 Text1 set value '[{"text":"-----","italic":false}]'
item replace block ~ ~ ~ container.26 with hopper{itemdb:{has_id:1b,id:0},display:{Name:'{"text":"-ID","italic":false}'}}
data modify block ~ ~ ~ Items[{Slot:26b}].tag.display.Name set from block 69 2 69 Text1

#say load recipes

execute if score #bool itemdb matches 0 run scoreboard players set @s itemdb_id 0
execute if score #bool itemdb matches 1 if score #bool1 itemdb matches 0 run function itemdb:ui/pages/recipes/save

function itemdb:ui/pages/recipes/load1

scoreboard players set #bool itemdb 1
scoreboard players set @s itemdb_page 2