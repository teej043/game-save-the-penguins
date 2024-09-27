/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_tail)) {
	
	var _bounds_pad = 100;
	var _dist = global.tail_distance;
	
	audio_play_sound(snd_penguin_call, 11, false, 0.3);
	
	behind_tail = instance_create_depth(x, y, -100, obj_tail, {
		front: id,
		direction : point_direction(x, y, id.x, id.y),
		x : id.x - lengthdir_x(_dist, direction),
		y : id.y - lengthdir_y(_dist, direction),
	});
	
	with other {
		instance_destroy();
	}
	
	if (!instance_exists(obj_flag)){
		spawn_random(obj_flag, 200);
	}
	
	global.score += 1;

}

