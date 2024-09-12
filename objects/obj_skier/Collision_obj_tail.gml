/// @description Insert description here
// You can write your code in this editor


// Unless tail is stunned or not following... collision of head to a tail means game over
if (!is_stunned && has_recovered) {
	if (other.id != behind_tail.id) {
		if (other.is_following) {
	
			// Prepare message
			var _msg = "";
	
			// Stop player movements
			speed = 0;
			with(obj_tail) {
				speed = 0;
			}

			// Enter for highscores
			if global.highscores_retrieved {
				
				if (get_lowest_highscore() >= score) {
					_msg = $"Saved {score} penguins, but not enough to get you to highscores?";
					show_message(_msg);
				} else {
					_msg = $"You have saved {score} penguins, enough to get you to rankings. What is your name?";
					// Requst for player's name
					if (msg_scorer_name == -1) {
						msg_scorer_name = get_string_async(_msg, "Unnamed");
					}
				}
					
			} else {
				_msg = $"Saved {score} penguins, unfortunately rankings is offline though, but good job anyway.";
				show_message(_msg);
			}
			
		}
	}
}