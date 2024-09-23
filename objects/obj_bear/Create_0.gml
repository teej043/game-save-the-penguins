/// @description Insert description here
// You can write your code in this editor

is_bear_run = function() {
	return sprite_index == spr_bear_run_e || sprite_index == spr_bear_run_se;
}

max_hp = 5;
hp = 15;
spd = 0.25;
max_spd = 0.5;
knockback_spd = 3;
knockback_max_spd = 6;

hp_prev = hp;

my_fx = noone;

orig_sprite_index = sprite_index;
is_stunned = false;
is_groggy = false;
is_crashed = false;
is_running = false;
is_koed = false;
hittable = true;
comboed = 0;

is_facing_west = false;

last_saved_x = 0;
last_saved_y = 0;

// stuck checks
alarm[3] = 120;

// change direction sprite
alarm[4] = 10;

// run or walk
alarm[5] = 30;


mp_potential_settings(45, 5, 5, true);

// spawn a shadow

speed = spd;
image_speed = 15/60;


alarm[1] = 60; // check if target is lost every 60 seconds;



my_shadow = instance_create_layer(x,y,"Shadow_layer" ,obj_shadow);