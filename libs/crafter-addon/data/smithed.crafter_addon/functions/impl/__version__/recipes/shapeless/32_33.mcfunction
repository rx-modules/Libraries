execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{item_tag:["#minecraft:crimson_stems"]}]} run item replace block ~ ~ ~ container.16 with minecraft:crimson_planks 4
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:white_bed"},{id:"minecraft:cyan_dye"}]} run item replace block ~ ~ ~ container.16 with minecraft:cyan_bed 1