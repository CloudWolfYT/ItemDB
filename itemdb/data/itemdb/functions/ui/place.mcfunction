scoreboard players set @s itemdb_ui 0
setblock ~ ~ ~ barrel[facing=up]{CustomName:'{"text":"ItemDB UI"}'}
execute align xyz unless entity @e[tag=itemdb,tag=ui,dx=0] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["itemdb","ui"]}

execute if entity @s[type=player] run scoreboard players add .gid itemdb 1
execute if entity @s[type=player] run scoreboard players operation @e[tag=itemdb,tag=ui,sort=nearest,limit=1] itemdb = .gid itemdb
execute if entity @s[type=player] run scoreboard players operation @s itemdb = .gid itemdb

execute as @e[tag=itemdb,tag=ui,sort=nearest,limit=1] run function itemdb:ui/pages/items/refresh