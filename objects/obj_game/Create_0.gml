/// @description Insert description here
// You can write your code in this editor


bw = browser_width;
bh = browser_height;

camera_set_view_size(view_camera[0], bw, bh);
camera_set_view_pos(view_camera[0], ((-bw)/2)+camera_get_view_width(view_camera[0])/2, ((bw)/2)+camera_get_view_height(view_camera[0])/2);

surface_resize(application_surface, view_wport[0], view_hport[0]);
window_set_size(bw, bh);

window_center();

/*
pos = application_get_position();
display_set_gui_maximise(1,1, pos[0], pos[1]);
*/

display_set_gui_size(bw, bh);
// display_set_gui_maximise(2, 2, 0, 0);

room_goto_next();