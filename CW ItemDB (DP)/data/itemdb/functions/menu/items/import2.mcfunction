data remove storage itemdb:items nbt
execute if data storage itemdb_buffer:items nbt run data modify storage itemdb:items nbt set from storage itemdb_buffer:items nbt
execute store result score #flavor itemdb run data get storage itemdb:items nbt
scoreboard players operation .items itemdb = #flavor itemdb
data modify storage itemdb flavor set value '{"text":"Items overwritten by imported list! New Item Count: ","color":"gray"}'
function itemdb:menu/items/start
#⎙⎆⎚