// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collision_to_obstacle(){

	if (!is_stunned) {
		speed = 0;
		if (score > 0) {
			score -= 1;
			global.crashes += 1;
		}
	
		audio_play_sound(snd_crash, 12, false, 0.2);
		 audio_play_sound(snd_umph, 10, false);
	 
	 
		// collision effect
		instance_create_depth(x, y - 40, depth - 10, obj_fx,{
		image_speed : 0.2});
	
		// disengage the last tail
		with (end_tail) {
			alarm[1] = 1;
		}
	
		var _x = -lengthdir_x(5, point_direction(x, y, other.x, other.y) + 20);
		var _y = -lengthdir_y(5, point_direction(x, y, other.x, other.y) + 20);
		x = x + _x;
		y = y + _y;
		alarm[0] = 40;
		alarm[1] = 60* 3;
	
		move_towards_point(x + _x, y + _y, 3);
		is_stunned = true;
		has_recovered = false;
		stunned_image_speed = normal_image_speed;
	}



}