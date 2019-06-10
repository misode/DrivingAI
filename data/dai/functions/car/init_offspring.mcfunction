function dai:car/init

function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w1
scoreboard players operation @s dai.w1 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w2
scoreboard players operation @s dai.w2 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w3
scoreboard players operation @s dai.w3 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w4
scoreboard players operation @s dai.w4 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w5
scoreboard players operation @s dai.w5 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w6
scoreboard players operation @s dai.w6 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w7
scoreboard players operation @s dai.w7 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w8
scoreboard players operation @s dai.w8 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w9
scoreboard players operation @s dai.w9 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.w10
scoreboard players operation @s dai.w10 = result dai.random

function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.b1
scoreboard players operation @s dai.b1 = result dai.random
function dai:util/random_mutation
scoreboard players operation result dai.random += @e[type=armor_stand,tag=dai.source,limit=1] dai.wb2
scoreboard players operation @s dai.b2 = result dai.random

#tellraw @a [{"score":{"objective":"dai.w1","name":"@e[type=armor_stand,tag=dai.source,limit=1]"}}," -> ",{"score":{"objective":"dai.w1","name":"@s"}}]
