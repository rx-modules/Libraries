execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:pumpkin"},{id:"minecraft:sugar"},{id:"minecraft:egg"}]} run item replace block ~ ~ ~ container.16 with minecraft:pumpkin_pie 1
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:pumpkin"}]} run item replace block ~ ~ ~ container.16 with minecraft:pumpkin_seeds 4