/// @description Recurring alarm for finding next target
// You can write your code in this editor

if (!is_stunned) {

	if instance_exists(target) {
		// but if there's a nearer flag, target that one.
		target = instance_nearest(x, y, obj_flag);

	} else {
		if (instance_exists(obj_flag)) {
			target = instance_nearest(x, y, obj_flag);
			
		}
	}
	
	// move_towards_point(target.x, target.y, spd);

}

// Retrigger every 3 seconds

alarm[1] = 60 * 3;