execute if score running dai matches 1 run function dai:running

execute as @e[type=armor_stand,tag=dai.marker,tag=dai.new] run function dai:new_marker
execute if entity @a[nbt={SelectedItem:{id:"minecraft:armor_stand"}}] as @e[type=armor_stand,tag=dai.marker] run data merge entity @s {Marker:0b,Glowing:1b}
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:armor_stand"}}] as @e[type=armor_stand,tag=dai.marker] run data merge entity @s {Marker:1b,Glowing:0b}
