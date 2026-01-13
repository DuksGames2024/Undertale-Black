room_goto(target_room)
obj_player.x = target_x
obj_player.y = target_y


//facing

if(facing = 0){
	obj_player.sprite_index = spr_semnomer
}

if(facing = 1){
	obj_player.sprite_index = spr_semnomel
}

if(facing = 2){
	obj_player.sprite_index = spr_semnomed
}

if(facing = 3){
	obj_player.sprite_index = spr_semnomeu
}

//fade out
image_speed = -1