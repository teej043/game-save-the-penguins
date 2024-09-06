/// @description Insert description here
// You can write your code in this editor




if (instance_exists(target)) {


	
}

/*
x = player.x;
y = player.y;
*/

if (is_enabled) {
	visible = true;
	image_index = floor((direction % 360) / 22.5);
	

	var _cam = view_camera[0];
	var _cx = camera_get_view_x(_cam);
	var _cy = camera_get_view_y(_cam);
	var _cw = camera_get_view_width(_cam);
	var _ch = camera_get_view_height(_cam);
	//var _vcx = _cx + (_cw/2);
	//var _vcy = _cy + (_ch/2);
	
	var _vcx = player.x;
	var _vcy = player.y;
	
	distance = point_distance(_vcx, _vcy, target.x, target.y);
	direction = point_direction(_vcx, _vcy, target.x, target.y);
	
	scale = 1.5 - abs(clamp((distance * 100 / 1000) * 0.01, 0.5, 1));
	
	
	
	x = clamp(target.x, _cx + 100, _cx + _cw - 100);
	y = clamp(target.y, _cy + 100, _cy + _ch - 100);
	
} else {
	visible = false;
}

