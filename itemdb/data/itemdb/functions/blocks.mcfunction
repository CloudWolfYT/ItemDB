execute if entity @s[tag=barrel] unless block ~ ~ ~ barrel run kill @s
execute if entity @s[tag=brewer] unless block ~ ~ ~ brewing_stand run kill @s
execute if entity @s[tag=ender] if block ~ ~ ~ air run kill @s
execute if entity @s[type=marker,tag=barrel] if block ~ ~-1 ~ hopper[enabled=true] run function itemdb:crafter/hopper
execute if entity @s[tag=ui] unless block ~ ~ ~ barrel run kill @e[type=item,distance=..1]
execute if entity @s[tag=ui] unless block ~ ~ ~ barrel run kill @s