execute positioned 69 3 69 if block ~ ~ ~ chest run function itemdb:import

advancement revoke @a only itemdb:inv_changed
scoreboard players set #reload itemdb 0
setblock 69 0 69 pink_shulker_box
setblock 69 1 69 yellow_shulker_box
setblock 69 2 69 oak_sign

setblock 69 -1 69 bedrock
setblock 70 0 69 bedrock
setblock 70 1 69 bedrock
setblock 70 2 69 bedrock
setblock 69 0 70 bedrock
setblock 69 1 70 bedrock
setblock 69 2 70 bedrock
setblock 69 0 68 bedrock
setblock 69 1 68 bedrock
setblock 69 2 68 bedrock
setblock 68 0 69 bedrock
setblock 68 1 69 bedrock
setblock 68 2 69 bedrock
setblock 69 3 69 bedrock

data remove block 69 0 69 Items
data remove block 69 1 69 Items
data remove block 69 2 69 Items
execute positioned 69 1 69 unless entity @e[type=armor_stand,tag=itemdb] run summon armor_stand ~ ~ ~ {ShowArms:1b,Invulnerable:1b,Tags:["itemdb"]}
