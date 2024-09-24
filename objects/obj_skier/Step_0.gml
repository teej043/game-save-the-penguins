/// @description Insert description here
// You can write your code in this editor

// turning_direction = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
// turning_speed = approach(turning_speed, turning_speed_max * turning_direction, turning_speed_increment);
// direction += turning_speed_increment;

if (global.game_state == GAME_STATE.PAUSED) {
	return;
}


if (is_stunned) {
	stunned_image_speed -= 0.05;
	image_speed = lerp(0, 2, stunned_image_speed);
} else {
	image_index = floor((direction % 360) / (360 / sprite_get_number(sprite_index)));
}

// depth = -y;



// If the left mouse button is pressed...
if (mouse_check_button_pressed(mb_left))
{
	// Set the anchor point to the current mouse position.
	global.mouse_anchor_x = device_mouse_x_to_gui(0);
	global.mouse_anchor_y = device_mouse_y_to_gui(0);
}

// If the left mouse button is held down...
if (mouse_check_button(mb_left))
{
	/*
	// If the button is active.
	if (instance_exists(obj_pause_button))
	{
		// If the pause button is not clicked.
		if (!obj_pause_button.is_clicked)
		{
			// Set horizontal and vertical speeds based
			// on the difference between the current mouse
			// poisition and the anchor position.
			direction = (device_mouse_x_to_gui(0) - global.mouse_anchor_x) * 0.1;
			// vspeed = (device_mouse_y_to_gui(0) - global.mouse_anchor_y) * 0.1;
		}
	}*/
		
	if (abs(device_mouse_x_to_gui(0) - global.mouse_anchor_x) > 20) {
		if (device_mouse_x_to_gui(0) > global.mouse_anchor_x) {
			direction = angle_difference(direction, turn_speed);
		} else if (device_mouse_x_to_gui(0) < global.mouse_anchor_x) {
			direction = angle_difference(direction, -turn_speed);
		}
	}

}
	
else {
	if (keyboard_check(ord("D"))) {
		direction = angle_difference(direction, turn_speed);
	} else if (keyboard_check(ord("A"))) {
		direction = angle_difference(direction, -turn_speed);
	}

}



with (my_shadow) {
	x = other.x;
	y = other.y;
}