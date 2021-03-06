#@s = player looking at tank positioned at tank stand
#run from #liquid_tanks:level_report_check in liquid_tanks:level_report_ray

#actual max of 100
execute if score @e[type=armor_stand,tag=gm4_liquid_tank,distance=..0.5,limit=1] gm4_lt_max matches 100 run function standard_liquids:level_report/100

#actual max of 300
execute if score @e[type=armor_stand,tag=gm4_liquid_tank,distance=..0.5,limit=1] gm4_lt_max matches 300 run function standard_liquids:level_report/300

#max 1395 (xp)
execute if score @e[type=armor_stand,tag=gm4_liquid_tank,distance=..0.5,limit=1] gm4_lt_max matches 1395 run function standard_liquids:level_report/experience


#linking of util tanks to adjacent blocks
execute as @e[type=armor_stand,tag=gm4_liquid_tank,distance=..0.5,limit=1] run function standard_liquids:util/link_blocks
