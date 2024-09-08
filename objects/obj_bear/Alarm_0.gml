/// @description Enemy recovery after being stunned
// You can write your code in this editor



if (hp <= 0) {
	is_koed = true;
	speed = 0;
	sprite_index = spr_bear_front_ko;
	audio_play_sound(snd_koed, 10, false, 0.3);
} else {
	sprite_index = orig_sprite_index;
	spd = max_spd;
	speed = spd;
	is_stunned = false;
}


