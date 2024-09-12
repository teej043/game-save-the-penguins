// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function							spawn_random(_obj, _padad, _out, _side);
/// @param {asset.GMObject} _obj		Object to create instance with
///	@param {real} _pad					Padding boundary of the room to spawn the instance
/// @param {bool} _out					Create from room sides
/// @param {string} _side				E, N, W or S

function spawn_random(_obj, _pad, _out = false, _side = choose("E", "N", "W", "S")){
	var _i = noone;
	if _out {
		var _xx = 0;
		var _yy = 0;
		
		switch(_side) {
			case "E" : 
				_xx = room_width;
				_yy = random(room_height);
				break;
			case "N" : 
				_xx = random(room_width);
				_yy = 0;
				break;
			case "W" :
				_xx = 0;
				_yy = random(room_height);
				break;
			case "S" :
				_xx = random(room_width);
				_yy = room_height;
				break;
			default : 
				_xx = 0;
				_yy = 0;
		}
		
		_i = instance_create_depth(_xx, _yy, -200, _obj);
		
	} else {
		_i = instance_create_depth(clamp(random(room_width), _pad, room_width - _pad), clamp(random(room_height), _pad, room_height - _pad), -200, _obj);
	}
	
	return _i;
}

