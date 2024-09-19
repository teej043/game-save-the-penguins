// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function restrict_angle_direction(_min_angle, _max_angle){
// Script: restrict_angle_direction
// Arguments:
// arg0 = _min_angle (the minimum angle of the prohibited range)
// arg1 = _max_angle (the maximum angle of the prohibited range)

	var _current_direction = direction; // Assume 'direction' is the current angle

	// Normalize angles to ensure values are between 0 and 360 degrees
	_min_angle = angle_normalize(_min_angle);
	_max_angle = angle_normalize(_max_angle);
	_current_direction = angle_normalize(_current_direction);

	// Check if the current direction is within the prohibited range
	var _prohibited = false;

	if (_min_angle <= _max_angle) {
	    // Normal case where min_angle is less than or equal to max_angle
	    if (_current_direction >= _min_angle && _current_direction <= _max_angle) {
	        _prohibited = true;
	    }
	} else {
	    // Case where the prohibited range crosses the 0-degree boundary
	    if (_current_direction >= _min_angle || _current_direction <= _max_angle) {
	        _prohibited = true;
	    }
	}

	// If the current direction is within the prohibited range, take action
	if (_prohibited) {
	    // You can either stop movement or adjust the direction here
	    // Example: stop movement
	    // speed = 0;
    
	    // Example: adjust the direction to the closest allowed angle
	    if (abs(_min_angle - _current_direction) < abs(_max_angle - _current_direction)) {
	        direction = _min_angle;
	    } else {
	        direction = _max_angle;
	    }
}

}