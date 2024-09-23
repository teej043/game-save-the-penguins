/// @description Enemy recovery after being stunned
// You can write your code in this editor



if is_groggy {
	
	if instance_exists(my_fx){
		instance_destroy(my_fx);
		is_groggy = false;
	}
	
	if (hp <= 0) {
		is_koed = true;
		hittable = false;
		speed = 0;
		sprite_index = spr_bear_front_ko;
		audio_play_sound(snd_koed, 10, false, 0.3);
		
	} else {
		sprite_index = orig_sprite_index;
		speed = spd;
		is_stunned = false;
		is_crashed = false;
		is_running = false;
		hittable = true;
		comboed = 0;
		exit;
	}
}


if !is_groggy {
	is_groggy = true;
	speed = 0;
	
	comboed = hp_prev - hp;
	hp_prev = hp;
	hittable = true;
	
	my_fx = instance_create_depth(x+3, y-60, depth, obj_fx);
	with (my_fx) {
		will_persist = true;
		sprite_index = spr_fx_fainted;
		image_speed = 0.25;
		depth = other.depth - 100;
	}
	
	alarm[0] = 60 * comboed;
}





