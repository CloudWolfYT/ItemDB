data modify storage itemdb:items nbt append from storage itemdb_buffer:items nbt[]
execute store result score #flavor itemdb run data get storage itemdb_buffer:items nbt
scoreboard players operation .items itemdb += #flavor itemdb
data modify storage itemdb flavor set value '{"text":"Items appended from imported list! Items Added: ","color":"gray"}'
function itemdb:menu/items/start
#⎙⎆⎚