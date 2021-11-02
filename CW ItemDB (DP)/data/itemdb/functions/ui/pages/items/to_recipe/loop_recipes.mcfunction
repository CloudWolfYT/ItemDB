execute store result score #temp itemdb run data get storage itemdb temp1[-1][2][0]
#tellraw @a {"score":{"name":"#temp","objective":"itemdb"}}
execute if score #temp itemdb = in itemdb run scoreboard players set #count itemdb -1

scoreboard players remove out itemdb 1
data remove storage itemdb temp1[-1]
scoreboard players remove #count itemdb 1
execute if score #count itemdb matches 1.. run function itemdb:ui/pages/items/to_recipe/loop_recipes