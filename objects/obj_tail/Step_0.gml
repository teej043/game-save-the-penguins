/// @description Insert description here
// You can write your code in this editor


if (global.game_state == GAME_STATE.PAUSED) {
	return;
}


image_index = floor((direction % 360) / 22.5);
//depth = -y;

var _dist = global.tail_distance;

 if instance_exists(front) {
	 if is_following {
		 
		 if point_distance(x, y, front.x, front.y) > _dist
		 // DIST here is the maximum distance from each other that you want the instances to be
			{
		        direction = point_direction(x, y, front.x, front.y)
		        x = front.x - lengthdir_x(_dist, direction)
		        y = front.y - lengthdir_y(_dist, direction)
			}
	 }
	
}
    
	
with (my_shadow) {
	x = other.x;
	y = other.y;
}