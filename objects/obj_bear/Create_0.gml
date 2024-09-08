/// @description Insert description here
// You can write your code in this editor


max_hp = 5;
hp = 5;
spd = 0.25;
max_spd = 0.25;

orig_sprite_index = sprite_index;
is_stunned = false;
is_koed = false;

mp_potential_settings(45, 5, 5, true);

// spawn a shadow

speed = max_spd;
image_speed = 20/60;


alarm[1] = 60; // check if target is lost every 60 seconds;



my_shadow = instance_create_layer(x,y,"Shadow_layer" ,obj_shadow);