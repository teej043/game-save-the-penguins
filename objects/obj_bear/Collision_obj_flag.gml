/// @description Insert description here
// You can write your code in this editor



with(other) {
	instance_destroy();
}

if instance_exists(obj_flag) {
	target = instance_nearest(x, y, obj_flag);
	move_towards_point(target.x, target.y, spd);
} else {
	show_message("remaining penguins vanquished");
	room_goto(rm_gameover);
}