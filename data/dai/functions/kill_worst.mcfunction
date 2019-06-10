scoreboard players set #min dai 10000
execute as @e[type=armor_stand,tag=dai.car] run scoreboard players operation #min dai < @s dai.fitness
execute as @e[type=armor_stand,tag=dai.car] if score #min dai = @s dai.fitness run tag @s add dai.kill
execute as @e[type=armor_stand,tag=dai.car,tag=dai.kill,sort=random,limit=1] at @s run function dai:car/kill
tag @e[type=armor_stand,tag=dai.car] remove dai.kill
scoreboard players add #killed dai 1
execute if score #killed dai < #required dai run function dai:kill_worst
