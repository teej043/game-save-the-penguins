/// @description Insert description here
// You can write your code in this editor

is_tail_end = true;
tail_distance = 70;

obj_skier.end_tail = id;

is_following = true;

alarm[0] = 10;

speed = obj_skier.move_speed;

my_shadow = instance_create_layer(x,y,"Shadow_layer" ,obj_shadow);