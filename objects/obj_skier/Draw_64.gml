/// @description Insert description here
// You can write your code in this editor


// If the left mouse button is NOT pressed...
if (!mouse_check_button(mb_left))
{
	// Exit event.
	exit;
}

// Draw the large joytick "back" sprite at the anchor point.
draw_sprite(spr_joystick_big, 0, global.mouse_anchor_x, global.mouse_anchor_y);

var _distx = 50;
var _disty = 10;

// Draw the joystick "thumb".
draw_sprite(spr_joystick_small, 0, clamp(device_mouse_x_to_gui(0), global.mouse_anchor_x - _distx, global.mouse_anchor_x + _distx), clamp(device_mouse_y_to_gui(0), global.mouse_anchor_y - _disty, global.mouse_anchor_y + _disty));