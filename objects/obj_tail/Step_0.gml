/// @description Insert description here
// You can write your code in this editor

image_index = floor((direction % 360) / 22.5);
//depth = -y;

 if instance_exists(front) {
	if point_distance(x, y, front.x, front.y) > tail_distance // DIST here is the maximum distance from each other that you want the instances to be
	{
        direction = point_direction(x, y, front.x, front.y)
        x = front.x - lengthdir_x(tail_distance, direction)
        y = front.y - lengthdir_y(tail_distance, direction)
	}
}
    
	
with (my_shadow) {
	x = other.x;
	y = other.y;
}