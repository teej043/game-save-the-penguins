/// @description Insert description here
// You can write your code in this editor

randomize();

arr_alarms = [];
arr_speed = [];
arr_direction = [];
arr_image_speed = [];

add_alarm = function(_instance, _index, _value) {
	array_push(arr_alarms, {_instance, _index, _value});
	
	_instance.alarm[_index] = -1;
}

add_speed = function(_instance, _value) {
	array_push(arr_speed, {_instance, _value});
	
	_instance.speed = 0;
}

add_direction = function(_instance, _value) {
	array_push(arr_direction, {_instance, _value});
}


add_image_speed = function(_instance, _value) {
	array_push(arr_image_speed, {_instance, _value});
	
	_instance.image_speed = 0;
}


global.game_state = GAME_STATE.RUNNING;

// Check for token
global.token = "";

if file_exists("conf.ini") {
	ini_open("conf.ini");
	global.token = ini_read_string("tokens", "jwt", "");
	ini_close();
	
	show_debug_message($"token from ini file: {global.token}");
}

global.player_name = "Anon";

global.is_token_valid = false;
global.highscores_unreachable = false;
global.highscores_retrieved = false;

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
alarm[1] = 10;

// TESTING

// test post score NOTE: this erases scores
// alarm[0] = 360;
// alarm[0] = 460;

// testing
alarm[11] = 360;


