// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_collision_to_allies(){


	if !is_stunned {
		global.crashes += 1;
	
		audio_play_sound(snd_crash, 12, false, 0.2);
		audio_play_sound(snd_umph, 10, false);
		
		audio_play_sound(snd_bg_lose, 9, false);
		audio_stop_sound(snd_bg_main);
		
	 
		// collision effects
		instance_create_layer(0, 0, "Instances", obj_fx_screenshake,{ duration: 45, magnitude: 4, shakespeed:1 });
		instance_create_depth(x, y - 40, depth - 10, obj_fx,{
		image_speed : 0.2});
	
		// disengage all penguins
		with (obj_tail) {
			alarm[3] = 1;
		}
	
		var _x = -lengthdir_x(5, point_direction(x, y, other.x, other.y) + 20);
		var _y = -lengthdir_y(5, point_direction(x, y, other.x, other.y) + 20);
		x = x + _x;
		y = y + _y;

	
		move_towards_point(x + _x, y + _y, 4);
		is_stunned = true;
		has_recovered = false;
		stunned_image_speed = normal_image_speed;
		
		alarm[2] = 60;
		

	}
		

}