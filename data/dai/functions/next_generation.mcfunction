tag @e[type=armor_stand,tag=dai.car] add dai.parent
scoreboard players operation #temp dai = population dai
scoreboard players operation #temp dai /= 2 dai.const
execute store result score #required dai if entity @e[type=armor_stand,tag=dai.car]
scoreboard players operation #required dai -= #temp dai
scoreboard players set #killed dai 0
execute if score #killed dai < #required dai run function dai:kill_worst
execute at @e[type=armor_stand,tag=dai.car,tag=dai.parent] run particle dust 0 1 0 3 ~ ~1 ~

scoreboard players set #time dai 0
scoreboard players add generation dai 1

execute as @e[type=armor_stand,tag=dai.car,tag=dai.parent] run function dai:try_reproduce
execute as @e[type=armor_stand,tag=dai.car,tag=dai.parent] run function dai:try_reproduce

kill @e[type=armor_stand,tag=dai.car,tag=dai.parent]
