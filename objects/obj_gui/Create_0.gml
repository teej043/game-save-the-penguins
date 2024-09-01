/// @description Insert description here
// You can write your code in this editor

d_orientation = browser_width < browser_height;
d_camera = view_get_camera(0);

if (d_orientation) {
	display_set_gui_size(768, 1024);
}

alarm[0] = 60;