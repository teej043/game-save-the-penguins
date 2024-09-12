/// @description Insert description here
// You can write your code in this editor

if is_stunned && !is_crashed {
	sprite_index = spr_bear_front_hurt;
	hp -= 1;
	
	is_crashed = true;
	
	// collision effect
	audio_play_sound(snd_hit, 12, false);
	switch(choose("ow", "hurt")) {
		case "ow": audio_play_sound(snd_ow, 10, false); break;
		case "hurt" : audio_play_sound(snd_hurt_big, 10, false); break;
		default: audio_play_sound(snd_hurt_big, 10, false);
	}
	instance_create_layer(x, y - 40, "Effects", obj_fx,{
	image_speed : 0.2});
	
	knockback(20, other.x, other.y, obj_boulder, 5, 10, random_range(knockback_spd, knockback_spd + 5), true);
	
	alarm[0] = -1;
	alarm[0] = 30;
}