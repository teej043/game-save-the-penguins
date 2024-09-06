/// @description Insert description here
// You can write your code in this editor

if (!is_stunned) {
	speed = 0;
	if (score > 0) {
		score -= 1;
	}
	
	
	var _x = -lengthdir_x(5, point_direction(x, y, other.x, other.y) + 20);
	var _y = -lengthdir_y(5, point_direction(x, y, other.x, other.y) + 20);
	x = x + _x;
	y = y + _y;
	alarm[0] = 40;
	alarm[1] = 60* 3;
	
	move_towards_point(x + _x, y + _y, 1);
	is_stunned = true;
	has_recovered = false;
	stunned_image_speed = normal_image_speed;
}

