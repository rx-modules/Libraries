# @public

# @doc entity/apply/projectile
# @input Amount of damage, score, @s, smithed.damage
# This function applies the specified amount of damage in half-hearts to the executing entity, 
# respecting armor, the protection enchantment, the projectile protection enchantment, and the resistance effect
# ```mcfunction
# scoreboard players set @s smithed.damage 3          # Does 1.5 damage (3 half-hearts) to a player without any armor or resistance
# function #smithed.damage:entity/apply/armor         # Apply the damage
# ```
# To apply damage that bypasses armor or respects other enchantments, use their specific commands:  
# * [`function #smithed.damage:entity/apply`](../apply.md): Ignores armor, enchantments, and resistance  
# * [`function #smithed.damage:entity/apply/armor`](armor.md): Respects armor, protection, and resistance  
# * [`function #smithed.damage:entity/apply/explosion`](explosion.md): Respects armor, protection, resistance, and blast protection  

# rx97
#  adapted from TCC

# get values (x100)
execute store result score #10armor smithed.damage run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness smithed.damage run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage smithed.damage = @s smithed.damage

#!dbg score "#10armor", "smithed.damage"
#!dbg score "#10toughness", "smithed.damage"
#!dbg score "#damage", "smithed.damage"

data modify storage smithed.damage:main temp set from entity @s

# first armor and toughness
function smithed.damage:impl/__version__/entity/armor/toughness

#!dbg score "#damage", "smithed.damage"

# then protection
function smithed.damage:impl/__version__/entity/armor/protection

#!dbg score "#damage", "smithed.damage"

function smithed.damage:impl/__version__/entity/armor/proj_protection

#!dbg score "#damage", "smithed.damage"

# finally resistance
function smithed.damage:impl/__version__/entity/armor/resistance

#!dbg score "#damage", "smithed.damage"

# go back to same scale
scoreboard players operation @s smithed.damage /= 10 smithed.const

# apply new damage
execute if score @s smithed.damage matches 1.. run function smithed.damage:impl/__version__/entity/apply
