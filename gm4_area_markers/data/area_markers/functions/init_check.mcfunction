#unless the module is already initialized
execute unless score area_markers gm4_modules matches 1.. run function area_markers:init
scoreboard players add installed_modules gm4_up_check 1
