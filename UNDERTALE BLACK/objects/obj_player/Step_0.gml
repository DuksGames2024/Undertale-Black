 // CONTROLES
var up_key    = keyboard_check(vk_up);
var down_key  = keyboard_check(vk_down);
var left_key  = keyboard_check(vk_left);
var right_key = keyboard_check(vk_right);

// VELOCIDADE
if (keyboard_check(vk_shift) || keyboard_check(ord("X"))) {
    movespeed = runspeed;
} else {
    movespeed = walkspeed;
}

// MOVIMENTO
xspeed = (right_key - left_key) * movespeed;
yspeed = (down_key - up_key) * movespeed;


// colisão eixo X
if (place_meeting(x + xspeed, y, obj_collider)) {
    xspeed = 0;
}

// colisão eixo Y
if (place_meeting(x, y + yspeed, obj_collider)) {
    yspeed = 0;
}



x += xspeed;
y += yspeed;


//animate
if(xspeed > 0){
	sprite_index = spr_semnomer
} else if(xspeed < 0){
	sprite_index = spr_semnomel
} else if(yspeed > 0){
	sprite_index = spr_semnomed
} else if(yspeed < 0){
	sprite_index = spr_semnomeu
}


if(xspeed != 0 or yspeed != 0){
	image_speed = 1
} else{
	image_speed = 0
	image_index = 0
}
