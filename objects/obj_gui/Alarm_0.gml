/// @description Insert description here
// You can write your code in this editor

d_orientation = browser_width < browser_height;
d_camera = view_get_camera(0);

if (d_orientation) {
	display_set_gui_size(browser_width, browser_height);
	view_set_wport(0, browser_width);
	view_set_hport(0, browser_height);
	view_wport[0] = browser_width;
	view_hport[0] = browser_height;
	

} else {
	display_set_gui_size(1336, 768);
	view_set_wport(0, 1336);
	view_set_hport(0, 768);
	view_wport[0] = browser_width;
	view_hport[0] = browser_height;
}

alarm[0] = 60;