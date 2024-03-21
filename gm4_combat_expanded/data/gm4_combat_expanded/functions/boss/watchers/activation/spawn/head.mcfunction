# spawn boss secondary head
# @s = unspecified
# at unspecified
# run from ???
## TODO: add spawn function

summon item_display ~ ~ ~ {Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.face","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],teleport_duration:2,item:{id:"minecraft:chiseled_deepslate",Count:1b,tag:{return:{scale:[1f,1f,1f],translation:[0f,0f,0f]}}},Passengers:[\
    {id:"minecraft:item_display",brightness:{sky:15,block:15},Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.eyes","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1875f,0.3125f],scale:[1.005f,0.125f,0.25f]},item:{id:"minecraft:polished_deepslate",Count:1b,tag:{return:{scale:[1.005f,0.125f,0.25f],translation:[0f,0.1875f,0.3125f]}}}},\
    {id:"minecraft:item_display",brightness:{sky:15,block:15},Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.eyes","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1875f,-0.3125f],scale:[1.005f,0.125f,0.25f]},item:{id:"minecraft:polished_deepslate",Count:1b,tag:{return:{scale:[1.005f,0.125f,0.25f],translation:[0f,0.1875f,-0.3125f]}}}},\
    {id:"minecraft:item_display",brightness:{sky:15,block:15},Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.eyes","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.3125f,0.1875f,0f],scale:[0.25f,0.125f,1.005f]},item:{id:"minecraft:polished_deepslate",Count:1b,tag:{return:{scale:[0.25f,0.125f,1.005f],translation:[0.3125f,0.1875f,0f]}}}},\
    {id:"minecraft:item_display",brightness:{sky:15,block:15},Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.eyes","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3125f,0.1875f,0f],scale:[0.25f,0.125f,1.005f]},item:{id:"minecraft:polished_deepslate",Count:1b,tag:{return:{scale:[0.25f,0.125f,1.005f],translation:[-0.3125f,0.1875f,0f]}}}},\
    {id:"minecraft:block_display",Rotation:[0F,-90F],teleport_duration:2,Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.crystal","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[-0.5f,0.5f,0.4375f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:small_amethyst_bud"}},\
    {id:"minecraft:item_display",Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.head","gm4_ce_boss.watcher.vertical","gm4_ce_boss.watcher.new","smithed.entity","smithed.strict"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.0025f,0f],scale:[0.95f,1.0075f,0.95f]},item:{id:"minecraft:copper_block",Count:1b,tag:{return:{scale:[0.95f,1.0075f,0.95f],translation:[0f,-0.0025f,0f]}}}}\
    ]}

summon shulker ~ ~-1 ~ {Silent:1b,CustomName:'{"text":"Watcher"}',DeathLootTable:"empty",PersistenceRequired:1b,NoAI:1b,Health:960f,Peek:1b,AttachFace:1b,Tags:["gm4_ce_boss.watcher","gm4_ce_boss.watcher.main","gm4_ce_boss.watcher.new","smithed.entity"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:1b,duration:-1,show_particles:0b}],Attributes:[{Name:"generic.max_health",Base:1024},{Name:"generic.max_absorption",Base:0},{Name:"generic.armor",Base:20}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:2s},{id:"minecraft:projectile_protection",lvl:6s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1119897995,270158067,-1453831260,2008913814],Slot:"head"}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F]}

execute store result storage gm4_combat_expanded:temp boss.running_id int 1 run scoreboard players add $next_id gm4_ce_boss.id 1
function gm4_combat_expanded:boss/watchers/activation/spawn/bossbar with storage gm4_combat_expanded:temp boss
data remove storage gm4_combat_expanded:temp boss

execute as @e[tag=gm4_ce_boss.watcher.new] run function gm4_combat_expanded:boss/watchers/activation/spawn/head_init

schedule function gm4_combat_expanded:clocks/boss/watchers 1t
