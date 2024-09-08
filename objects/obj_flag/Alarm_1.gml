/// @description When skier is near, penguin will face at his direction
// You can write your code in this editor

if not is_stunned {
	if point_distance(x, y, obj_skier.x, obj_skier.y) < distance_call_help {
		direction = point_direction(x, y, obj_skier.x, obj_skier.y);
	}
}

alarm[1] = 10;