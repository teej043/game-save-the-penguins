/// @description Insert description here
// You can write your code in this editor


// Unless tail is stunned or not following... collision of head to a tail means game over
if (!is_stunned && has_recovered) {
	if (other.id != behind_tail.id) {
		if (other.is_following) {
	

	
			// Stop player movements
			speed = 0;
			with(obj_tail) {
				speed = 0;
			}

			room_goto(rm_gameover);
			
			
		}
	}
}