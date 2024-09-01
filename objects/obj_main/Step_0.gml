/// @description Insert description here
// You can write your code in this editor

// turning_direction = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
// turning_speed = approach(turning_speed, turning_speed_max * turning_direction, turning_speed_increment);
// direction += turning_speed_increment;

if (keyboard_check(ord("D"))) {
	direction = angle_difference(direction, turn_speed);
} else if (keyboard_check(ord("A"))) {
	direction = angle_difference(direction, -turn_speed);
}


image_index = floor((direction % 360) / 22.5);
