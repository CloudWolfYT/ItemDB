execute store result score #slot itemdb run data get storage itemdb temp[-1].Slot

scoreboard players set #bool itemdb 0
execute if score #slot itemdb matches 1..3 run scoreboard players set #bool itemdb 1
execute if score #slot itemdb matches 10..12 run scoreboard players set #bool itemdb 1
execute if score #slot itemdb matches 19..21 run scoreboard players set #bool itemdb 1
execute if score #bool itemdb matches 0 run function itemdb:crafter/prune/return
execute if score #bool itemdb matches 1 run function itemdb:crafter/prune/build

data remove storage itemdb temp[-1]
scoreboard players remove #items itemdb 1
execute if score #items itemdb matches 1.. run function itemdb:crafter/prune/filter