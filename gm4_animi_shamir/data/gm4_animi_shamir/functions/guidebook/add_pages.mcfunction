# adds pages to the guidebook
# @s = player who's updating their guidebook
# located at @s
# run from gm4_animi_shamir:guidebook/verify_module

data modify storage gm4_guidebook:temp insert set value ['["",{"text":"◀ ","color":"#4AA0C7","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Return to Table of Contents"},{"translate":"text.gm4.guidebook.return_to_table"}],"italic":true,"color":"gold"}]}},{"translate":"%1$s%3427655$s","with":[{"text":"Back"},{"translate":"text.gm4.guidebook.back"}],"color":"#4AA0C7","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Return to Table of Contents"},{"translate":"text.gm4.guidebook.return_to_table"}],"italic":true,"color":"gold"}]}},{"text":"\\n"},{"text":"☶ ","color":"#864BC7","bold":true,"clickEvent":{"action":"open_url","value":"https://wiki.gm4.co/wiki/Metallurgy/Animi_Shamir"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Open External Wiki"},{"translate":"text.gm4.guidebook.open_wiki"}],"italic":true,"color":"gold"}]}},{"translate":"%1$s%3427655$s","with":[{"text":"Wiki"},{"translate":"text.gm4.guidebook.wiki"}],"color":"#864BC7","clickEvent":{"action":"open_url","value":"https://wiki.gm4.co/wiki/Metallurgy/Animi_Shamir"},"hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Open External Wiki"},{"translate":"text.gm4.guidebook.open_wiki"}],"italic":true,"color":"gold"}]}},{"text":"\\n\\n"},{"text":"Animi Shamir","underlined":true},{"text":"\\n"},{"translate":"%1$s%3427655$s","with":[{"text":"Animi allows items to return to the player upon death."},{"translate":"text.gm4.guidebook.animi_shamir.1"}]}]','["",{"text":"???","hoverEvent":{"action":"show_text","contents":[{"translate":"%1$s%3427655$s","with":[{"text":"Undiscovered"},{"translate":"text.gm4.guidebook.undiscovered"}],"italic":true,"color":"red"}]}}]']

# unlockable pages
execute if entity @s[advancements={gm4_guidebook:animi_shamir/page_1=true}] run data modify storage gm4_guidebook:temp insert[1] set value '["",{"translate":"%1$s%3427655$s","with":[{"text":"The Animi Shamir is found on Curie\'s Bismium Bands. It can be placed onto all tools, armour, weapons, and elytra.\\n\\nAnimi items do not drop when the player dies, instead appearing in the player\'s inventory upon respawning."},{"translate":"text.gm4.guidebook.animi_shamir.2"}]}]'
