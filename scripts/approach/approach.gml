/// @function					approach(_a, _b, _amount);
/// @param {real} _a			test a
///	@param {real} _b			test b
/// @param {real} _amount		amount

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


/// Approach(a, b, amount)
// Moves "a" towards "b" by "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);

function approach(_a, _b, _amount){
	if (_a < _b)
	{
	    _a += _amount;
	    if (_a > _b)
	        return _b;
	}
	else
	{
	    _a -= _amount;
	    if (_a < _b)
	        return _b
	}
	return _a;
}


 
