/// @description Insert description here
// You can write your code in this editor


max_hp = 5;
hp = 15;
spd = 0.25;
max_spd = 0.25;
knockback_spd = 3;
knockback_max_spd = 6;

orig_sprite_index = sprite_index;
is_stunned = false;
is_crashed = false;
is_koed = false;

last_saved_x = 0;
last_saved_y = 0;

// stuck checks
alarm[3] = 120;


mp_potential_settings(45, 5, 5, true);

// spawn a shadow

speed = max_spd;
image_speed = 20/60;


alarm[1] = 60; // check if target is lost every 60 seconds;



my_shadow = instance_create_layer(x,y,"Shadow_layer" ,obj_shadow);