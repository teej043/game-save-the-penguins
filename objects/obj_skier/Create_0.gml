/// @description Insert description here
// You can write your code in this editor


tail_distance = 70; // distance beetween tails
turn_speed = 1; // dictates turning speed
behind_tail = noone;
msg_scorer_name = -1;
is_stunned = false;
has_recovered = true;
normal_image_speed = 2;
stunned_image_speed = normal_image_speed;
temp = 1;

speed = 5;
image_speed = 2;


turning_direction = direction;
turning_speed = 0;
turning_speed_max = 15;
turning_speed_increment = 1;




// Create variables for the mouse anchor position.
global.mouse_anchor_x = 0;
global.mouse_anchor_y = 0;


my_shadow = instance_create_layer(x, y, "Shadow_layer", obj_shadow);


alarm[11] = 120;