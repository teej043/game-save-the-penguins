/// @description Insert description here
// You can write your code in this editor


global.token = HIGHSCORE_JWT;

// Only use when jwt has expired
// online_highscore_start();

global.scores = [];


global.req_postscores = 0;
global.req_getscores = 0;
global.req_token = 0;


global.attained_flags = 0;
global.knockedout_enemies = 0;
global.crashes = 0;
global.lost_flags = 0;



bw = browser_width;
bh = browser_height;

camera_set_view_size(view_camera[0], bw, bh);
camera_set_view_pos(view_camera[0], ((-bw)/2)+camera_get_view_width(view_camera[0])/2, ((bw)/2)+camera_get_view_height(view_camera[0])/2);

surface_resize(application_surface, view_wport[0], view_hport[0]);

window_set_size(bw, bh);

window_center();

display_set_gui_size(bw, bh);
display_set_gui_maximise(1, 1, 0, 0);

window_set_color(#008080);

room_goto_next();

// get scores
alarm[1] = 60;

// test post score
alarm[0] = 360;
