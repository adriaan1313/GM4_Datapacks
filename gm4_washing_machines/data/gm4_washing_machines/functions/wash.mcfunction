#@s = water tank with item in first slot
#run from item_fill

# Copy item to armor stand offhand 
data modify entity @s HandItems[1] merge value {id:"minecraft:stick",Count:1b}
data modify entity @s HandItems[1].id set from block ~ ~ ~ Items[0].id

execute if predicate gm4_washing_machines:glass run function gm4_washing_machines:washing_recipes/glass
execute if predicate gm4_washing_machines:glass_pane run function gm4_washing_machines:washing_recipes/glass_pane
execute if predicate gm4_washing_machines:terracotta run function gm4_washing_machines:washing_recipes/terracotta
execute if predicate gm4_washing_machines:wool run function gm4_washing_machines:washing_recipes/wool
execute if predicate gm4_washing_machines:bed run function gm4_washing_machines:washing_recipes/bed
execute if predicate gm4_washing_machines:carpet run function gm4_washing_machines:washing_recipes/carpet
execute if predicate gm4_washing_machines:map run function gm4_washing_machines:washing_recipes/map
execute if predicate gm4_washing_machines:armour if data block ~ ~ ~ Items[0].tag.display.color run function gm4_washing_machines:washing_recipes/armour
execute if predicate gm4_washing_machines:book run function gm4_washing_machines:washing_recipes/book

# Clear armor stand offhand
data modify entity @s HandItems[1] set value {}
