/// @description Insert description here
// You can write your code in this editor

if (!is_stunned) {
	spd = 0;
	speed = spd;
	sprite_index = spr_bear_front_hurt;
	hp -= 1;
	
	var _x = -lengthdir_x(5, point_direction(x, y, other.x, other.y));
	var _y = -lengthdir_y(5, point_direction(x, y, other.x, other.y));
	x = x + _x;
	y = y + _y;
	alarm[0] = 30;
	
	move_towards_point(x + _x, y + _y, 1);
	is_stunned = true;
}

if is_koed {
	
}