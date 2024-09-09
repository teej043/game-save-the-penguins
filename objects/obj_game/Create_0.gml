/// @description Insert description here
// You can write your code in this editor

show_debug_log(true);

show_debug_log(false)

// Check for token
global.token = "";

if file_exists("conf.ini") {
	ini_open("conf.ini");
	global.token = ini_read_string("tokens", "jwt", "");
	ini_close();
	
	show_debug_message($"token from ini file: {global.token}");
}



global.is_token_valid = false;
global.highscores_unreachable = false;

global.scores = [];


global.req_postscores = 0;
global.req_getscores = 0;
global.req_token = 0;


global.attained_flags = 0;
global.knockedout_enemies = 0;
global.crashes = 0;
global.lost_flags = 0;



if (global.token == "" || global.token == "undefined") {
	show_debug_message($"global.token: {global.token}");
	online_highscore_token_request();
} else {
	show_debug_message("check if token is still valid");
	online_highscore_token_validate();
}



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
alarm[0] = 460;

