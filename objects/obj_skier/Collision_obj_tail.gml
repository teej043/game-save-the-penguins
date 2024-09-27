/// @description Insert description here
// You can write your code in this editor


// Unless tail is stunned or not following... collision of head to a tail means game over
if (!is_stunned && has_recovered) {
	if (other.id != behind_tail.id) {
		if (other.is_following) {
	
			// Collision to penguin line formation
	
			// Stop player movements
			speed = 0;
			with(obj_tail) {
				//speed = 0;
				alarm[1] = 1;
			}

			// Shake effect
			instance_create_layer(0, 0, "Instances", obj_fx_screenshake,{ duration: 60, magnitude: 5, shakespeed:1 });
			
			// Trigger alarm[2]
			alarm[2] = 120;
			
			
			// room_goto(rm_gameover);
			
			//var _transition = instance_create_layer(0, 0, "Instances", obj_transition_pixelate);
			//_transition.target_room = room_next(rm_gameover);
		
			
			
		}
	}
}