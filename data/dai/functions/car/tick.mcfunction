# Get inputs
scoreboard players set #length dai 0
execute positioned ~ ~-1 ~ rotated ~-90 ~ run function dai:car/ray
scoreboard players operation @s dai.x1 = #length dai
scoreboard players set #length dai 0
execute positioned ~ ~-1 ~ rotated ~-45 ~ run function dai:car/ray
scoreboard players operation @s dai.x2 = #length dai
scoreboard players set #length dai 0
execute positioned ~ ~-1 ~ rotated ~ ~ run function dai:car/ray
scoreboard players operation @s dai.x3 = #length dai
scoreboard players set #length dai 0
execute positioned ~ ~-1 ~ rotated ~45 ~ run function dai:car/ray
scoreboard players operation @s dai.x4 = #length dai
scoreboard players set #length dai 0
execute positioned ~ ~-1 ~ rotated ~90 ~ run function dai:car/ray
scoreboard players operation @s dai.x5 = #length dai

# Compute output layer
scoreboard players operation @s dai.y1 = @s dai.b1
scoreboard players operation #temp dai = @s dai.x1
scoreboard players operation #temp dai *= @s dai.w1
scoreboard players operation @s dai.y1 += #temp dai
scoreboard players operation #temp dai = @s dai.x2
scoreboard players operation #temp dai *= @s dai.w2
scoreboard players operation @s dai.y1 += #temp dai
scoreboard players operation #temp dai = @s dai.x3
scoreboard players operation #temp dai *= @s dai.w3
scoreboard players operation @s dai.y1 += #temp dai
scoreboard players operation #temp dai = @s dai.x4
scoreboard players operation #temp dai *= @s dai.w4
scoreboard players operation @s dai.y1 += #temp dai
scoreboard players operation #temp dai = @s dai.x5
scoreboard players operation #temp dai *= @s dai.w5
scoreboard players operation @s dai.y1 += #temp dai

scoreboard players operation @s dai.y2 = @s dai.b2
scoreboard players operation #temp dai = @s dai.x1
scoreboard players operation #temp dai *= @s dai.w6
scoreboard players operation @s dai.y2 += #temp dai
scoreboard players operation #temp dai = @s dai.x2
scoreboard players operation #temp dai *= @s dai.w7
scoreboard players operation @s dai.y2 += #temp dai
scoreboard players operation #temp dai = @s dai.x3
scoreboard players operation #temp dai *= @s dai.w8
scoreboard players operation @s dai.y2 += #temp dai
scoreboard players operation #temp dai = @s dai.x4
scoreboard players operation #temp dai *= @s dai.w9
scoreboard players operation @s dai.y2 += #temp dai
scoreboard players operation #temp dai = @s dai.x5
scoreboard players operation #temp dai *= @s dai.w10
scoreboard players operation @s dai.y2 += #temp dai

# Rotate and move
execute store result score #rotation dai run data get entity @s Rotation[0] 1000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players operation #rotation dai += @s dai.y1

scoreboard players operation #move dai = @s dai.y2
scoreboard players operation #move dai /= 5 dai.const
execute if score #move dai matches 2000.. run scoreboard players set #move dai 2000
execute if score #move dai matches ..0 run scoreboard players add @s dai.stil 1
execute if score #move dai matches 1.. run scoreboard players set @s dai.stil 0
execute if score #move dai matches 0.. run function dai:car/move

# Detect if dead
execute if score @s dai.stil matches 20.. run tag @s add dai.dead
execute if block ~ ~-1 ~ minecraft:white_concrete run tag @s add dai.dead
data merge entity @s[tag=dai.dead] {ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}

# Adjust and display fitness
execute if entity @s[tag=!dai.dead] if score @e[type=armor_stand,tag=dai.marker,sort=nearest,limit=1,distance=..6] dai.marker = @s dai.fitness run scoreboard players add @s dai.fitness 1
execute if score @s[tag=!dai.success] dai.fitness = #markers dai run function dai:car/success

#scoreboard players operation #fitness dai = @s dai.fitness
#data merge block 0 1 0 {Text1:'{"score":{"objective":"dai","name":"#fitness"}}'}
#data merge entity @s {CustomName:""}
#data modify entity @s CustomName set from block 0 1 0 Text1
