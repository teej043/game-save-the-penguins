/// @description Picking up a powerup
// You can write your code in this editor

if not other.picked_up {
	show_debug_message($"you got power up index {other.powerup_index}");
	
	var _pow = other.powerup_index;
	
	switch(_pow) {
		case POWERUP.TURNSPEED: turn_speed += turn_speed_increment; break;
		default: move_speed += move_speed_increment; break;
	}
	
	// Update attributes
	speed = move_speed;
	
	// Update the attributes of the tails as well.
	if (instance_exists(obj_tail)) {
		obj_tail.speed = move_speed;
	}
	
}

with (other) {
	picked_up = true;
	alarm[0] = 60;
}

