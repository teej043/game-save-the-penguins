/// @description Check every 2 seconds if pinned to an obstacle
// You can write your code in this editor

if not is_stunned && not is_crashed && not is_koed {

	if point_distance(x,y,last_saved_x, last_saved_y) <= 4{
		show_debug_message("a bear is stucked, adjusting position");
		var _obstacle = instance_nearest(x, y, obj_boulder);
		var _new_x = lengthdir_x(15, point_direction(_obstacle.x, _obstacle.y, x, y));
		var _new_y = lengthdir_y(15, point_direction(_obstacle.x, _obstacle.y, x, y));
		
		
		x = x + _new_x;
		y = y + _new_y;
	}

}

last_saved_x = x;
last_saved_y = y;


alarm[3] = 120;