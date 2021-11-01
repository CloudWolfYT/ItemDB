tag @p[tag=this] add ender_craft
execute as @p[tag=this] if entity @s[tag=!locked_ender] run function itemdb:crafter/ender/enter

data modify storage itemdb container set from entity @p[tag=this] EnderItems
execute store result score #temp itemdb run data modify entity @s data.prev set from storage itemdb container
execute if score #temp itemdb matches 1 as @p[tag=this] run function itemdb:crafter/ender/refresh
data modify entity @s data.prev set from entity @p[tag=this] EnderItems