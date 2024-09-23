/// @description Insert description here
// You can write your code in this editor

if instance_exists(target) && !is_koed && !is_stunned {
	if point_distance(x, y, target.x, target.y) <= 250 {
		is_running = false;
		speed = spd;
		image_speed = 15/60;
	} else {
		is_running = true;
		speed = max_spd;
		image_speed = 25/60; 
	}
}

alarm[5] = 30;