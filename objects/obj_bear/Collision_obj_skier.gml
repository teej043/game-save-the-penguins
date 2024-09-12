/// @description Collision with the hero
// You can write your code in this editor

/// @description Collision with player tails
// You can write your code in this editor

if (!is_stunned) {
	
	sprite_index = spr_bear_front_hurt;
	hp -= 1;
	
	
	// collision effect
	audio_play_sound(snd_hit, 12, false);
	switch(choose("ow", "hurt")) {
		case "ow": audio_play_sound(snd_ow, 10, false); break;
		case "hurt" : audio_play_sound(snd_hurt_big, 10, false); break;
		default: audio_play_sound(snd_hurt_big, 10, false);
	}
	instance_create_layer(x, y - 40, "Effects", obj_fx,{
	image_speed : 0.2});
	
	var _dir = point_direction( other.x, other.y,x, y);
	direction = _dir;
	knockback(20, other.x, other.y, obj_boulder, 30, 10, random_range(knockback_spd, knockback_max_spd));
	
	
	
	alarm[0] = 30;
	
	
	is_stunned = true;
}

if is_koed {
	
}