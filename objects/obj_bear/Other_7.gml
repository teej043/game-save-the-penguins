/// @description Make enemy lie on the ground for a while
// You can write your code in this editor

if is_koed {
	hittable = false;
	sprite_index = spr_bear_front_ko;
	image_index = image_number - 1;
	image_speed = 0;
	
	alarm[2] = 60*5;
}