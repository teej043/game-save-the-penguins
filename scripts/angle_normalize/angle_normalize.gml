// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function				angle_normalize(_angle)
/// @param {real}_angle		The input angle to normalize (can be any number)
/// @return					The normalized angle (between 0 and 360 degrees)

function angle_normalize(_angle) {
    var _normalized_angle = _angle mod 360; // Get remainder of the angle when divided by 360
    
    // If the remainder is negative, adjust it to make it positive
    if (_normalized_angle < 0) {
        _normalized_angle += 360;
    }

    return _normalized_angle;
}
