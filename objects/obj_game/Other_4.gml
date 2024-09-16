/// @description Insert description here
// You can write your code in this editor

if (room == rm_gameover) {
	
	// Prepare message
	var _msg = "";
			
	// Enter for highscores
	if global.highscores_retrieved {
				
		if (get_lowest_highscore() >= score) {
			_msg = $"Saved {score} penguins, but not enough to get you to highscores?";
			show_message(_msg);

		} else {
			_msg = $"You have saved {score} penguins, enough to get you to rankings. What is your name?";
			// Requst for player's name
			if (global.player_name == -1) {
				global.player_name = get_string_async(_msg, "Unnamed");
			}
		}
					
	} else {
		_msg = $"Saved {score} penguins, unfortunately rankings is offline though, but good job anyway.";
		show_message(_msg);
	}
}

if (room == rm_game) {

}