# checks if this is the next module to generate pages
# @s = player who's updating their guidebook
# located at @s
# run from #gm4_guidebook:add_pages

execute if data storage gm4_guidebook:temp module{id:"podzol_rooting_soil"} run function gm4_podzol_rooting_soil:guidebook/add_pages
