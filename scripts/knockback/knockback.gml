// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function									knockback(_distance, _startx, _starty, _obj, _checks)
/// @description								Knocks back the calling instance
/// @param {real} _distance						How far the knockback
/// @param {real} _startx 						Starting position x
/// @param {real} _starty 						Starting position y
/// @param {Id.Instance|Asset.GMObject} _obj	Make sure that destination does not collide with this object
/// @param {real} _rot							How much change in direction when check fails
/// @param {real} _checks 						How many times to check if destination is clear
/// @param {real} _speed 						Speed


function knockback(_distance, _startx, _starty, _obj = noone, _rot = 30, _checks = 5, _speed = 1){

	speed = 0;
	
	var _x = 0;
	var _y = 0;
	var _tx = 0;
	var _ty = 0;
	var _irot = 0; // iterated value
	
	do {
		
		_x = -lengthdir_x(5, point_direction(x, y, _startx, _starty) + _irot);
		_y = -lengthdir_y(5, point_direction(x, y, _startx, _starty) + _irot);
		
		x = x + _x;
		y = y + _y;
		
		_tx = x + _x;
		_ty = y + _y;
		
		_irot += _rot;
		_checks -= 1;
		
	
	} until (place_meeting(_tx, _ty, _obj) || _checks <= 0 || _obj == noone);
	
	
	move_towards_point(x + _x, y + _y, _speed);
	
}