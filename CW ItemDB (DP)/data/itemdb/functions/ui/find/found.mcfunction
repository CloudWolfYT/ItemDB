execute if score #versioner itemdb matches 1.. run function itemdb:versioner/container/start

scoreboard players set #ray itemdb -1
execute if entity @s[tag=ui] run function itemdb:ui/main
execute if entity @s[tag=crafter] run function itemdb:crafter/main
execute if entity @s[tag=smither] run function itemdb:smither/main