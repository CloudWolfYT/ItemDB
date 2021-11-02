data remove storage itemdb out
execute if score in itemdb matches 0..511 run function itemdb:crafter/db/vanilla/get/l3_i0
execute if score in itemdb matches 512..1023 run function itemdb:crafter/db/vanilla/get/l3_i512
execute if score in itemdb matches 1024..1535 run function itemdb:crafter/db/vanilla/get/l3_i1024