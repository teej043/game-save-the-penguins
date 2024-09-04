/// @description Insert description here
// You can write your code in this editor

if (!is_stunned) {
	spd = 0;
	speed = spd;
	sprite_index = spr_bear_front_hurt;
	hp--;

	alarm[0] = 20;
	
	is_stunned = true;
}
