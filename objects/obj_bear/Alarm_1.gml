/// @description Insert description here
// You can write your code in this editor


if instance_exists(target) {

} else {
	if (instance_exists(obj_flag)) {
		target = instance_nearest(x, y, obj_flag);
		move_towards_point(target.x, target.y, spd);
	}
}


alarm[1] = 60;