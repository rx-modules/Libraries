execute if entity @s[type=player] run function smithed.damage:impl/__version__/entity/health/update_player
execute if entity @s[type=!player] run function smithed.damage:impl/__version__/entity/health/update_entity
