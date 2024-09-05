// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function							spawn_check_safe_pos(_obj, _pad, _len, _id);
/// @param {asset.GMObject} _obj		Object to stay away from
///	@param {real} _pad					Padding boundary of the room to spawn the instance
/// @param {real} _len					Distance
/// @param {Id.Instance} _id			Another instance ID, otherwise Self
/// @param {real} _checks				Number of times to check to avoid infinite loop

function spawn_check_safe_pos(_obj, _pad = 100, _len = 400, _id = self, _checks = 10){
	
	var _dist = distance_to_object(_obj);

	// Find a safer location to spawn
	do {
		xx = clamp(floor(random(room_width)), _pad, room_width - _pad);
		yy = clamp(floor(random(room_height)), _pad, room_height - _pad);
		_checks -=1;
	} until ((point_distance(xx, yy, _obj.x, _obj.y) > _len) && place_free(xx,yy) && !_checks)
	
	_id.x = xx;
	_id.y = yy;
}
