/// @description Insert description here
// You can write your code in this editor

if display_mouse_get_x() > x && display_mouse_get_x() < x + btnw
{
	if display_mouse_get_y() > y && display_mouse_get_y() < y + btnh {
		script_execute(props.trigger)
	}
}
