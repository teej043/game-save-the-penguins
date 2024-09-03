// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function					spawn_random(_o, _p);
/// @param {asset.GMObject} _o	Object to create instance with
///	@param {real} _p			Padding boundary of the room to spawn the instance

function spawn_random(_o, _p){
	var _i = instance_create_depth(clamp(random(view_wport[0]), _p, room_width - _p), clamp(random(view_hport[0]), _p, room_height - _p), -200, _o);
	return _i;
}