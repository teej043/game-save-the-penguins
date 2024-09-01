/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_tail)) {
	

	behind_tail = instance_create_depth(x, y, -100, obj_tail, {
		front: id,
		direction : point_direction(x, y, id.x, id.y),
		x : id.x - lengthdir_x(tail_distance, direction),
		y : id.y - lengthdir_y(tail_distance, direction),
	});
	
	with other {
		instance_destroy();
	}
	
	if (!instance_exists(obj_flag)){
		instance_create_depth(random(view_wport[0]), random(view_hport[0]), -200, obj_flag);
	}

}

