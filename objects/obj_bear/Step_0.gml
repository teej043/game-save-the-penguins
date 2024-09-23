/// @description Insert description here
// You can write your code in this editor

if (global.game_state == GAME_STATE.PAUSED) {
	return;
}

with(my_shadow) {
	x = other.x;
	y = other.y;
}


//image_speed = 0.2;


if !is_stunned {
	if instance_exists(target) {
	
		mp_potential_step_object(target.x, target.y,speed,obj_boulder);
	}
	
}
