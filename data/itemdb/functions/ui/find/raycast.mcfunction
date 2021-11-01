scoreboard players remove #ray itemdb 1
execute if score #versioner itemdb matches 1.. if block ~ ~ ~ #itemdb:containers run function itemdb:versioner/container/start
execute as @e[type=marker,tag=itemdb,tag=!no_ui,distance=..1] at @s run function itemdb:ui/find/found
execute if score #ray itemdb matches 1.. positioned ^ ^ ^0.5 run function itemdb:ui/find/raycast