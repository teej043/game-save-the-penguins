/// @description Insert description here
// You can write your code in this editor


// Unless stunned, collision of head to a tail means game over
if (!is_stunned && has_recovered) {
	if (other.id != behind_tail.id) {
	
		// Prepare message
		var _msg = $"You have saved {score} penguins, what is your name?";
	
		// Stop player movements
		speed = 0;
		with(obj_tail) {
			speed = 0;
		}
	
		// Requst for player's name
		if (msg_scorer_name == -1) {
			msg_scorer_name = get_string_async(_msg, "Unnamed");
		}

	}
}