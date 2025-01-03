#@s = liquid tank, positioned at furnace
#scheduled run from standard_liquids:util/furnace_fueling/furnace_start

#remove hoe if not furnace not started
execute if block ~ ~ ~ #gm4_standard_liquids:furnace[lit=false] if items block ~ ~ ~ container.1 *[custom_data~{tankhoe:1b}] run item replace block ~ ~ ~ container.1 with air

#adjust burntime and remove lava
scoreboard players operation @s gm4_lt_prior_val = @s gm4_lt_value

execute unless block ~ ~ ~ #gm4_standard_liquids:double_speed store success score lava_fueling gm4_lt_util if block ~ ~ ~ #gm4_standard_liquids:furnace[lit=true]{cooking_time_spent:1s,lit_time_remaining:200s} run data merge block ~ ~ ~ {lit_time_remaining:6600s}
execute if block ~ ~ ~ #gm4_standard_liquids:double_speed store success score lava_fueling gm4_lt_util if block ~ ~ ~ #gm4_standard_liquids:furnace[lit=true]{cooking_time_spent:1s,lit_time_remaining:100s} run data merge block ~ ~ ~ {lit_time_remaining:3300s}

execute if score lava_fueling gm4_lt_util matches 1.. run scoreboard players remove @s gm4_lt_value 1
scoreboard players reset lava_fueling gm4_lt_util

tag @s remove gm4_lt_furnace_start

execute unless score @s gm4_lt_prior_val = @s gm4_lt_value run function gm4_liquid_tanks:liquid_value_update
