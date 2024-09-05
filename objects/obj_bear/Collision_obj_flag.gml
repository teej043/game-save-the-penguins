/// @description Enemy captured an ally
// You can write your code in this editor


if (!is_stunned) {


	// Ally captured
	with(other) {
		instance_destroy();
	}

	// Deduct score
	score -= 1;



	// Find new target
	if !instance_exists(obj_flag) {
		// If not exist create one
		spawn_check_safe_pos(obj_bear, 100, 200, spawn_random(obj_flag, 100));
	}
	
	target = instance_nearest(x, y, obj_flag);
	move_towards_point(target.x, target.y, spd);

}