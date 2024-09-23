/// @description Insert description here
// You can write your code in this editor

if (!is_stunned && !is_koed) {

	switch(floor((direction % 360) / (360 / 8))) {
		case 0 : 
			sprite_index = is_running ? spr_bear_run_e : spr_bear_walk_e;
			is_facing_west = false;
			break;
		case 1 :
			sprite_index = is_running ? spr_bear_run_ne : spr_bear_walk_ne;
			is_facing_west = false;
			break;
		case 2 :
			sprite_index = is_running ? spr_bear_run_n : spr_bear_walk_n;
			is_facing_west = false;
			break;
		case 3 :
			sprite_index = is_running ? spr_bear_run_ne : spr_bear_walk_ne;
			is_facing_west = true;
			break;
		case 4 :
			sprite_index = is_running ? spr_bear_run_e : spr_bear_walk_e;
			is_facing_west = true;
			break;
		case 5 :
			sprite_index = is_running ? spr_bear_run_se : spr_bear_walk_se;
			is_facing_west = true;
			break;
		case 7 :
			sprite_index = is_running ? spr_bear_run_se : spr_bear_walk_se;
			is_facing_west = false;
			break;
		default :
			sprite_index = is_running ? spr_bear_run_s : spr_bear_walk_s;
			is_facing_west = false;
			break;
	}

}

alarm[4] = 10;