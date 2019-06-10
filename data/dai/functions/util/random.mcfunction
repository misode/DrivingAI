scoreboard players operation seed dai.random *= mult dai.random
scoreboard players operation seed dai.random += incr dai.random
scoreboard players operation result dai.random = seed dai.random
scoreboard players operation result dai.random /= 100 dai.const
scoreboard players operation result dai.random %= max dai.random
