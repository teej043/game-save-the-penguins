/// @description Insert description here
// You can write your code in this editor

behind_tail = noone;
end_tail = noone;
msg_scorer_name = -1;
is_stunned = false;
has_recovered = true;
normal_image_speed = 2;
stunned_image_speed = normal_image_speed;
temp = 1;



// Upgradeable stats

turn_speed = 1; // dictates turning speed
move_speed = 3;

//turning_direction = direction;
//turning_speed = 0;
//turning_speed_max = 15;

turn_speed_increment = 0.25;
move_speed_increment = 0.5;

speed = move_speed;
image_speed = 2;

// Create variables for the mouse anchor position.
global.mouse_anchor_x = 0;
global.mouse_anchor_y = 0;


my_shadow = instance_create_layer(x, y, "Shadow_layer", obj_shadow);

