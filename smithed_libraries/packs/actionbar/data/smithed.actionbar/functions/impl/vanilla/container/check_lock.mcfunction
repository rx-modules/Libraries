# check if the block the player clicked is locked
# @s = player who clicked a lockable block
# located at the center of the clicked block
# run from vanilla/container/raycast

# check if the block is locked
scoreboard players set $locked smithed.actionbar.temp 0
execute store success score $locked smithed.actionbar.temp if data block ~ ~ ~ Lock
execute if score $locked smithed.actionbar.temp matches 0 if block ~ ~ ~ #smithed.actionbar:impl/chests unless block ~ ~ ~ #smithed.actionbar:impl/chests[type=single] run function smithed.actionbar:impl/vanilla/container/check_double_chest_lock

# if the block is locked, show the message
execute if score $locked smithed.actionbar.temp matches 1 run function smithed.actionbar:impl/vanilla/send_message
