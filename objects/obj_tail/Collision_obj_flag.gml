/// @description Insert description here
// You can write your code in this editor

if (is_tail_end) {
	
	self.is_tail_end = false;
	
	instance_create_depth(x, y, -100, obj_tail, {
		front: id,
		direction : point_direction(x, y, id.x, id.y),
	    x : id.x - lengthdir_x(tail_distance, direction),
	    y : id.y - lengthdir_y(tail_distance, direction),
	});

	with other instance_destroy();	
	
	if (!instance_exists(obj_flag)){
		spawn_random(obj_flag, 200);
	}
	
	score +=1;
}
