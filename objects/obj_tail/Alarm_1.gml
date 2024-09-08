/// @description Become disconnected to the line
// You can write your code in this editor

if is_tail_end {
	
	// The followed tail will be the tail end
	is_tail_end = false;
	front.is_tail_end = true;
	obj_skier.end_tail = front;
	
	is_following = false;
	
	knockback(5, front.x, front.y, obj_boulder,,,7);
	
	alarm[2] = 30;

}