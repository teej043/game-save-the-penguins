/// @description Insert description here
// You can write your code in this editor

if (is_tail_end) {
	
	// If flag is not stunned, it will join the tail
	if !other.is_stunned {
	
		audio_play_sound(snd_penguin_call, 11, false, 0.3);
	
		self.is_tail_end = false;
	
		instance_create_depth(x, y, -100, obj_tail, {
			front: id,
			direction : point_direction(x, y, id.x, id.y),
		    x : id.x - lengthdir_x(tail_distance, direction),
		    y : id.y - lengthdir_y(tail_distance, direction),
		});

		with other {
			instance_destroy();
		}
	
		if (!instance_exists(obj_flag)){
			var _i = spawn_random(obj_flag, 500);
			spawn_check_safe_pos(obj_bear,100,200, _i);
		}
	
		// Reward a score
		score +=1;
		global.attained_flags+=1;
	
		// Spawn an enemy every 5 points 
		if ((score mod 5) == 0) {
			spawn_random(obj_bear, 200, true);
		}
	
	}
	
}
