data remove storage itemdb:items nbt
scoreboard players set .items itemdb 0
function itemdb:items/db/append
data modify storage itemdb flavor set value '{"text":"ALL Items DELETED","color":"gray"}'
function itemdb:menu/items/start
#⎙⎆⎚