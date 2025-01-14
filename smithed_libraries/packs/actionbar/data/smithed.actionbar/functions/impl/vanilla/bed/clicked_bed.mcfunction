# send message when a player uses a bed
# @s = player who used a bed
# located at @s
# run from advancement bed/clicked_bed

# check if the player entered the bed
tag @s[advancements={smithed.actionbar:impl/vanilla/bed/clicked_bed={occupied=true}}] add smithed.actionbar.occupied
tag @s[advancements={smithed.actionbar:impl/vanilla/bed/clicked_bed={occupied_empty=true}}] add smithed.actionbar.occupied
tag @s[advancements={smithed.actionbar:impl/vanilla/bed/slept_in_bed={requirement=true}}] add smithed.actionbar.sleeping

advancement revoke @s only smithed.actionbar:impl/vanilla/bed/clicked_bed
advancement revoke @s only smithed.actionbar:impl/vanilla/bed/slept_in_bed

# if the player isn't in the bed, send message for it
execute if entity @s[tag=!smithed.actionbar.sleeping] run function smithed.actionbar:impl/vanilla/send_message

# else send sleeping message
execute if entity @s[tag=smithed.actionbar.sleeping] run function smithed.actionbar:impl/vanilla/bed/check_sleep_status

# clean up
tag @s remove smithed.actionbar.occupied
